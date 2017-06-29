package sample;

import sample.resource.data.User;
import sample.resource.data.questions.Answer;
import sample.resource.data.questions.Question;

import java.sql.*;
import java.util.ArrayList;

public class ConnexionBDD {

    public User userConnected;

    /* Connexion à la base de données */
    String utilisateur = "root";
    String motDePasse = "";
    Connection connexion = null;
    String dbName = "learnstone";
    String url = "jdbc:mysql://localhost:3306/" + dbName;
    PreparedStatement prepStmt = null;

    public boolean testConnection() {
        // On test la connexion avec la BDD
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connexion = DriverManager.getConnection(url, utilisateur, motDePasse);
            connexion.close();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public void updateUserScore(int idUser, boolean answeredwell) throws SQLException {
        connexion = DriverManager.getConnection(url, utilisateur, motDePasse);
        String queryselect = "SELECT NbGoodAnswer, NbQuestionAnswered FROM " + dbName + ".users WHERE IdUsers = '" + idUser + "'";
        Statement statement = connexion.createStatement();
        ResultSet res = statement.executeQuery(queryselect);

        res.next();
        int nbGoodAnswerScore = res.getInt("NbGoodAnswer");
        int nbQuestionAnsweredScore = res.getInt("NbQuestionAnswered");

        //if the answer was correct
        if(answeredwell){
            PreparedStatement queryUpdate = connexion.prepareStatement(
                    "UPDATE users SET NbGoodAnswer = ?, NbQuestionAnswered = ? WHERE IdUsers = ?");
            queryUpdate.setInt(1, nbGoodAnswerScore+1);
            queryUpdate.setInt(2,nbQuestionAnsweredScore+1);
            queryUpdate.setInt(3,idUser);
            queryUpdate.executeUpdate();
            queryUpdate.close();
        } else {
            PreparedStatement queryUpdate = connexion.prepareStatement(
                    "UPDATE users SET NbGoodAnswer = ?, NbQuestionAnswered = ? WHERE IdUsers = ?");
            queryUpdate.setInt(1, nbGoodAnswerScore);
            queryUpdate.setInt(2,nbQuestionAnsweredScore+1);
            queryUpdate.setInt(3,idUser);
            queryUpdate.executeUpdate();
            queryUpdate.close();
        }
        connexion.close();
    }

    public boolean updateQuestionAnswered(int idUser, int idQuestion, boolean isAnswerWell) throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.jdbc.Driver");
        connexion = DriverManager.getConnection(url, utilisateur, motDePasse);

        String queryInsertInto = "INSERT INTO questionanswered(IdUsers, IdQuestions, IsAnswerWell) VALUES (?,?,?)";
        prepStmt = connexion.prepareStatement(queryInsertInto);
        prepStmt.setInt(1, idUser);
        prepStmt.setInt(2, idQuestion);
        prepStmt.setBoolean(3,isAnswerWell);
        boolean res = prepStmt.execute();
        prepStmt.close();
        connexion.close();
        return res;
    }
    public User getUserInfos(int idUser) throws SQLException {
        try {
            connexion = DriverManager.getConnection(url, utilisateur, motDePasse);

            String query = "SELECT * FROM " + dbName + ".users WHERE IdUsers = '" + idUser + "'";
            Statement statement = connexion.createStatement();
            ResultSet res = statement.executeQuery(query);
            int id_compte = 0;
            //Récupération du résultat de la requête SQL (on récupère l'id du compte)
            while (res.next()) {
                userConnected = new User(res.getString("username"),
                        res.getString("password"),
                        res.getString("MailAdress"),
                        res.getString("Firstname"),
                        res.getString("Lastname"),
                        res.getInt("NbGoodAnswer"),
                        res.getInt("NbQuestionAnswered"),
                        res.getBoolean("isadmin"));
                id_compte = res.getInt("IdUsers");
            }
            res.close();
            if (id_compte == 0) {
                connexion.close();
                return null;
            } else {
                connexion.close();
                return userConnected;
            }

        } catch (Exception e) {
            connexion.close();
            e.printStackTrace();
            return null;
        }
    }
    public int checkLogs(String username, String password) throws SQLException {
        // On vérifie que le compte existe dans la BDD
        try {
            connexion = DriverManager.getConnection(url, utilisateur, motDePasse);

            String query = "SELECT * FROM " + dbName + ".users WHERE username = '" + username + "' AND password = '" + password + "'";
            int id_compte = 0;
            Statement statement = connexion.createStatement();
            ResultSet res = statement.executeQuery(query);
            //Récupération du résultat de la requête SQL (on récupère l'id du compte)
            while (res.next()) {
                id_compte = res.getInt("IdUsers");
            }

            // si id_compte a changé de valeur, c'est que le compte recherché existe dans la base de donnée
            if (id_compte == 0) {
                connexion.close();
                return id_compte;
            } else {
                connexion.close();
                return id_compte;
            }

        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    public boolean addUser(User user) throws SQLException, ClassNotFoundException {
            Class.forName("com.mysql.jdbc.Driver");
            connexion = DriverManager.getConnection(url, utilisateur, motDePasse);

            String queryInsertIntoSimpleaf2 = "INSERT INTO users(Firstname, LastName, username, password, isadmin, MailAdress) VALUES (?,?,?,?,?,?)";
            prepStmt = connexion.prepareStatement(queryInsertIntoSimpleaf2);
            prepStmt.setString(1, user.getFirstname());
            prepStmt.setString(2, user.getLastname());
            prepStmt.setString(3, user.getUsername());
            prepStmt.setString(4, user.getPassword());
            prepStmt.setBoolean(5 , user.getIsAdmin());
            prepStmt.setString(6, user.getMailAdresse());
            boolean res = prepStmt.execute();
            prepStmt.close();
            connexion.close();
            return res;
    }

    public boolean checkUsername(String userName) {
        // return true if userName exist, false if not
        try {
            connexion = DriverManager.getConnection(url, utilisateur, motDePasse);
            String userNameToTest = "";

            String query = "SELECT username FROM " + dbName + ".users WHERE username = '" + userName + "'";
            Statement statement = connexion.createStatement();
            ResultSet res = statement.executeQuery(query);

            //Récupération du résultat de la requête SQL (on récupère l'id du compte)
            while (res.next()) {
//                id_compte = res.getInt("IdUsers");
                userNameToTest = res.getString("username");
            }
            if(userNameToTest.equals(userName)){
                connexion.close();
                return true;
            } else {
                connexion.close();
                return false;
            }

        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public int getIndexMin(String nameTable) throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.jdbc.Driver");
        connexion = DriverManager.getConnection(url, utilisateur, motDePasse);
        String query = "SELECT * FROM " + dbName + "." + nameTable + " ORDER BY IdQuestions";
        Statement statement = connexion.createStatement();
        ResultSet res = statement.executeQuery(query);
        res.next();
        int idQuestion = res.getInt("IdQuestions");
        res.close();
        connexion.close();
        return idQuestion;

    }

    public int getIndexMax(String nameTable) throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.jdbc.Driver");
        connexion = DriverManager.getConnection(url, utilisateur, motDePasse);
        String query = "SELECT * FROM " + dbName + "." + nameTable + " ORDER BY IdQuestions DESC ";
        Statement statement = connexion.createStatement();
        ResultSet res = statement.executeQuery(query);
        res.next();
        int idQuestion = res.getInt("IdQuestions");
        res.close();
        connexion.close();
        return idQuestion;
    }

    public Question getQuestionInfos(int idQuestion) throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.jdbc.Driver");
        connexion = DriverManager.getConnection(url, utilisateur, motDePasse);
        String query = "SELECT * FROM " + dbName +  ".questions WHERE IdQuestions = '" + idQuestion + "'";

        Statement statement = connexion.createStatement();
        ResultSet res = statement.executeQuery(query);
        res.next();
        String questionText = res.getString("QuestionText");
        int nbUse = res.getInt("NbUse");
        int nbResult = res.getInt("NbResult");
        connexion.close();
        res.close();

        return new Question(questionText, nbUse, nbResult);
    }

    public ArrayList<Answer> getAnswerList(int idQuestion) throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.jdbc.Driver");
        connexion = DriverManager.getConnection(url, utilisateur, motDePasse);
        String query = "SELECT * FROM " + dbName +  ".answers WHERE IdQuestions = '" + idQuestion + "' ORDER BY IdAnswers";
        Statement statement = connexion.createStatement();
        ResultSet res = statement.executeQuery(query);
        ArrayList<Answer> listAnswer = new ArrayList<>();
        while(res.next()){
            int idAnswer = res.getInt("IdAnswers");
            String answerText = res.getString("AnswerText");
//            int answerNumeric = res.getInt("AnswerNumeric");
            boolean isCorrectAnswer = res.getBoolean("IsCorrectAnswer");
            listAnswer.add(new Answer(idAnswer,answerText, isCorrectAnswer));
        }

        connexion.close();
        res.close();
        return listAnswer;
    }
}
