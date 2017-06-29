package sample;

import javafx.application.Application;
import javafx.scene.Scene;
import javafx.stage.Stage;

public class Main extends Application {
    public static void main(String[] args) {
        Application.launch(Main.class, args);
    }

    @Override
    public void start(Stage primaryStage) throws Exception {

        Generator generator = new Generator();
        ConnexionBDD connexionBDD = new ConnexionBDD();

//        System.out.println(getClass().getResource("resource/fxml_page/LoginScreenPage.fxml"));
        Scene scene = generator.initScene(getClass().getResource("resource/fxml_page/LoginScreenPage.fxml"));
        primaryStage = generator.initStage();

        primaryStage.setScene(scene);
        primaryStage.show();
        if(connexionBDD.testConnection()){
            System.out.println("IN MAIN : Connexion avec la base de donnée réussie");
        } else {
            System.out.println("IN MAIN : Echec de la connexion avec la base de donnée");
            primaryStage.close();
        }
    }
}


//    protected boolean checkLogs(TextField nameinput, String username, PasswordField passinput, String password) {
//        int id = 0;
//        System.out.println(username);
//        for(int i = 0 ; i < accountusername.length; i++){
//            if(Objects.equals(accountusername[i], username)){
//                id = i;
////                System.out.println(username + " do exist on the database");
//                break;
//            }
//        }
////        System.out.println(accountpwd[id] + " " + password);
//        return Objects.equals(accountpwd[id], password);
//    }