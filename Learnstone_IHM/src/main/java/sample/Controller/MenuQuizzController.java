package sample.Controller;

import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.layout.AnchorPane;
import javafx.scene.layout.BorderPane;
import javafx.scene.layout.GridPane;
import javafx.stage.Stage;
import sample.ConnexionBDD;
import sample.Generator;
import sample.resource.data.questions.Answer;
import sample.resource.data.questions.Question;

import java.io.IOException;
import java.net.URL;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.ResourceBundle;
import java.util.concurrent.ThreadLocalRandom;

/**
 * Created by Morgadow on 23/06/2017.
 */
public class MenuQuizzController implements Initializable {


    @FXML
    private BorderPane borderPaneMain;

    // list of menu button (navigation)

    @FXML
    private Label labelMenuHome;
    @FXML
    private Label labelMenuPresentationOfTheGame;
    @FXML
    private Label labelMenuCardList;
    @FXML
    private Label labelMenuLibrary;
    @FXML
    private Label labelMenuLessons;
    @FXML
    private Label labelMenuQuizz;
    @FXML
    private Label labelMenuStatsOfThePlayer;
    @FXML
    private Label labelMenuStreamTwitchTV;
    @FXML
    private Button buttonDeconnexion;
    @FXML
    private Label labelIdUser;



    @FXML
    private Label labelQuestionText;

    @FXML
    private Label labelNumberActualQuestion;

    @FXML
    private AnchorPane anchorPaneNextQuestion;

    @FXML
    private AnchorPane anchorPanePreviousQuestion;

    @FXML
    private GridPane gridPaneAnswer;

    @FXML
    private Button buttonAnswerA;

    @FXML
    private Button buttonAnswerB;

    @FXML
    private Button buttonAnswerC;

    @FXML
    private Button buttonAnswerD;
    @FXML
    private Label labelTopUsername;

    private int numberActualQuestion = 0;
    final int MAXQUESTIONPERQUIZZ = 40;
    final int MAXANSWERPERQUESTION = 4;
    private int iMin = 0;
    private int iMax = 0;
//    private int actualQuestion = 0;
    ArrayList<Answer> listAnswer;
    private boolean answeredWell = false;
    //List of Menu Button
    public ArrayList<Label> listButton = new ArrayList<>();
    public Button[] listButtonAnwser;
    private int randomNum[] = new int[MAXQUESTIONPERQUIZZ];
    ConnexionBDD connexionBDD = new ConnexionBDD();
    Generator generator = new Generator();
    @Override
    public void initialize(URL location, ResourceBundle resources) {

        setAllButtonLink();
        listButtonAnwser = setupAnswerButtonEventListener(listButtonAnwser);
        try {
            iMin = connexionBDD.getIndexMin("questions");
            iMax = connexionBDD.getIndexMax("questions");
            for(int i = 0; i < MAXQUESTIONPERQUIZZ; i++){
                //we generate a serie of random number from the min index and the max index in base for the table questions
                randomNum[i] = ThreadLocalRandom.current().nextInt(iMin, iMax+1);
            }
            System.out.println("Question n°:" + (numberActualQuestion + 1));
            getQuestionInfo(randomNum[numberActualQuestion]);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private Button[] setupAnswerButtonEventListener(Button[] listButtonAnwser) {
        listButtonAnwser = new Button[]{buttonAnswerA,buttonAnswerB,buttonAnswerC,buttonAnswerD};
        int i = 0;
        for(Button button : listButtonAnwser){
            int finalI = i;
            button.setOnAction(event -> {
                answeredWell = selectAnswer(finalI);
                try {
                    changeQuestion();
                } catch (SQLException e) {
                    e.printStackTrace();
                } catch (ClassNotFoundException e) {
                    e.printStackTrace();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            });
            i++;
        }
        return listButtonAnwser;
    }

    private boolean selectAnswer(int i) {
//        System.out.println("You have selected anwser :" + listAnswer.get(i).toString());
        return listAnswer.get(i).isCorrectAnswer();
    }

    private void setAllButtonLink() {
        // List of button which switch the scene of the stage
        listButton.add(labelMenuHome);
        listButton.add(labelMenuPresentationOfTheGame);
        listButton.add(labelMenuCardList);
        listButton.add(labelMenuLibrary);
        listButton.add(labelMenuLessons);
        listButton.add(labelMenuQuizz);
        listButton.add(labelMenuStatsOfThePlayer);
        listButton.add(labelMenuStreamTwitchTV);

        //setup all "navigation button" click on function
        for(Label label: listButton){
            label.setOnMouseClicked(event -> {
                try {
                    this.SwitchScene(label.getId().substring(5));
                } catch (IOException e) {
                    e.printStackTrace();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            });
        }

        //also setup deconnection Button code click on
        buttonDeconnexion.setOnAction(event -> {
            try {
                this.SwitchScene("LoginScreenPage");
            } catch (IOException e) {
                e.printStackTrace();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        });
    }

    private void getQuestionInfo(int idQuestion) throws SQLException, ClassNotFoundException {
        //we receive the question info our Question object class
        Question actualQuestion = connexionBDD.getQuestionInfos(idQuestion);

        //then show the info of the actual question (the text) in our javafx object
        showQuestionInfos(actualQuestion);

        //we get a list of answer corresponding to the question founded before
        listAnswer = connexionBDD.getAnswerList(idQuestion);

        //then show the possible answer over the button
        showAnswerInfos(listAnswer);

    }

    private void showAnswerInfos(ArrayList<Answer> listAnswer) {
        hideAllAnswer();
//        AnchorPane anchorPane = (AnchorPane) gridPaneAnswer.getChildren().get(1);
        for(int i = 0; i < listAnswer.size(); i++){
            // here we show the button only if the answer has a text and write it over the button
            if(listAnswer.get(i).getAnswerText()!= ""){
                listButtonAnwser[i].setText(listAnswer.get(i).getAnswerText());
                gridPaneAnswer.getChildren().get(i).setVisible(true);
            }
        }

    }

    private void hideAllAnswer() {
        // we hide all the button
        for(int i = 0; i < MAXANSWERPERQUESTION; i++){
            gridPaneAnswer.getChildren().get(i).setVisible(false);
            listButtonAnwser[i].setText("");
        }
    }

    @FXML
    private void changeQuestion() throws SQLException, ClassNotFoundException, IOException {

        // Update user score
        connexionBDD.updateUserScore(Integer.parseInt(labelIdUser.getText()), answeredWell);
        // update question answered
        connexionBDD.updateQuestionAnswered(Integer.parseInt(labelIdUser.getText()), randomNum[numberActualQuestion], answeredWell);
        numberActualQuestion++;

        if (numberActualQuestion<MAXQUESTIONPERQUIZZ){
            System.out.println("Question n°:" + (numberActualQuestion + 1));
            // get question info of the next question
            getQuestionInfo(randomNum[numberActualQuestion]);
        } else {
            SwitchScene("MenuQuizzFinished");
        }

    }

    private void showQuestionInfos(Question actualQuestion){
        labelQuestionText.setText(actualQuestion.getQuestionText());
        labelNumberActualQuestion.setText(numberActualQuestion + 1 + "/"+ MAXQUESTIONPERQUIZZ);
    }


    public void SwitchScene(String nameOfScene) throws IOException, SQLException {
        Stage stage = (Stage) borderPaneMain.getScene().getWindow();

        Parent parent;
        FXMLLoader loader = new FXMLLoader(getClass().getResource("../resource/fxml_page/" + nameOfScene + ".fxml"));
        parent = loader.load();
        Scene scene = new Scene(parent);
        stage.setScene(scene);

        //send the id_user to the correct page called
        switch (nameOfScene){
            case "MenuHome":
                ((MenuHomeController)loader.getController()).prepareData(Integer.parseInt(labelIdUser.getText()));
                break;
            case "MenuPresentationOfTheGame":
                ((MenuPresentationOfTheGameController)loader.getController()).prepareData(Integer.parseInt(labelIdUser.getText()));
                break;
            case "MenuCardList":
                ((MenuCardListController)loader.getController()).prepareData(Integer.parseInt(labelIdUser.getText()));
                break;
            case "MenuLibrary":
                ((MenuLibraryController)loader.getController()).prepareData(Integer.parseInt(labelIdUser.getText()));
                break;
            case "MenuLessons":
                ((MenuLessonsController)loader.getController()).prepareData(Integer.parseInt(labelIdUser.getText()));
                break;
            case "MenuQuizz":
                ((MenuQuizzController)loader.getController()).prepareData(Integer.parseInt(labelIdUser.getText()));
                break;
            case "MenuQuizzFinished":
                ((MenuQuizzControllerFinished)loader.getController()).prepareData(Integer.parseInt(labelIdUser.getText()));
                break;
            case "MenuStatsOfThePlayer":
                ((MenuStatsOfThePlayerController)loader.getController()).prepareData(Integer.parseInt(labelIdUser.getText()));
                break;
            case "MenuStreamTwitchTV":
                ((MenuStreamTwitchTVController)loader.getController()).prepareData(Integer.parseInt(labelIdUser.getText()));
                break;
            default:
                System.out.println("Page innexistante...");
        }
        stage.show();
    }
    public void prepareData(int idUser) throws SQLException {
        labelIdUser.setText(String.valueOf(idUser));
        labelTopUsername.setText(connexionBDD.getUserInfos(idUser).getUsername().toUpperCase());

    }

//    private int loadARandomQuestion(int randomnumber){
//
//    }
}
