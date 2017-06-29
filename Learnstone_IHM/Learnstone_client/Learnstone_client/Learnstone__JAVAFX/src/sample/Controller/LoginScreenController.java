package sample.Controller;


import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Label;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;
import javafx.scene.image.ImageView;
import javafx.scene.media.Media;
import javafx.scene.media.MediaPlayer;
import javafx.stage.Stage;
import sample.ConnexionBDD;
import sample.Generator;
import sample.resource.data.User;

import java.io.IOException;
import java.net.URL;
import java.sql.SQLException;
import java.util.Date;
import java.util.ResourceBundle;

/**
 * Created by Morgadow on 26/05/2017.
 */
public class LoginScreenController implements Initializable{


    //  Login Screen //
    @FXML
    private Label labelDayDate;

    @FXML
    private PasswordField passwordFieldPassword;

    @FXML
    private TextField textFieldAccount;

    @FXML
    private ImageView imageViewImageleft;

    @FXML
    private Label labelMessageError;

    //  Login Screen Creation //

    @FXML
    private TextField textFieldUserNameCreation;

    @FXML
    private PasswordField passwordFieldPassWordCreation;

    @FXML
    private PasswordField passwordFieldPassWordRetypeCreation;

    @FXML
    private TextField textFieldMailAdresse;

    @FXML
    private TextField textFieldFirstName;

    @FXML
    private TextField textFieldLastName;




    private MediaPlayer mediaPlayer;
    private Media mediaBackGroundSound;
    private Scene nextScene;
    private Scene loginScene;
    private Scene sceneSubscription;
    private Stage stage;
    private String pathNextScene = "../resource/fxml_page/WelcomePage.fxml";
    Generator generator = new Generator();
    ConnexionBDD connexionBDD = new ConnexionBDD();
    @Override
    public void initialize (URL location, ResourceBundle resources) {
        Date date = new Date();
        labelDayDate.setText(date.toString());
        labelMessageError.setVisible(false);
    }

    @FXML
    private void showLoginScreenScene() throws IOException {
        stage = (Stage) labelDayDate.getScene().getWindow();
//        System.out.println(getClass().getResource("../resource/fxml_page/LoginScreenPage.fxml"));
        loginScene = generator.initScene(getClass().getResource("../resource/fxml_page/LoginScreenPage.fxml"));
//        System.out.println(loginScene);
        stage.setScene(loginScene);
        stage.show();
    }

    @FXML
    private void ui(){
        mediaBackGroundSound = new Media((getClass().getResource("../resource/song/OUIIzerator.mp3").toExternalForm()));
        mediaPlayer = new MediaPlayer(mediaBackGroundSound);
        mediaPlayer.play();
    }

    @FXML
    private void cancelInput(){
        textFieldAccount.clear();
        passwordFieldPassword.clear();
        textFieldAccount.requestFocus();
    }
    @FXML
    private void showSubscriptionScene() throws IOException {
        stage = (Stage) labelDayDate.getScene().getWindow();
//        System.out.println(getClass().getResource("../resource/fxml_page/LoginScreenPageSubscription.fxml"));
        sceneSubscription = generator.initScene(getClass().getResource("../resource/fxml_page/LoginScreenPageSubscription.fxml"));
        stage.setScene(sceneSubscription);
        stage.show();
    }

    @FXML
    private void connectionAuthentication() throws IOException {
        stage = (Stage) labelDayDate.getScene().getWindow();
        if(connexionBDD.testConnection()){
            Parent parent;
            FXMLLoader loader = new FXMLLoader(getClass().getResource(pathNextScene));
            try{
                int id_User = connexionBDD.checkLogs(textFieldAccount.getText(), passwordFieldPassword.getText());
                if(id_User > 0){
                    parent = loader.load();
                    nextScene = new Scene(parent);
                    stage.setScene(nextScene);

                    // we send the id of the user connected to the next page
                    ((WelcomePageController)loader.getController()).prepareData(id_User);
                    stage.show();
                } else {
                    labelMessageError.setVisible(true);
                    labelMessageError.setText("Login ou mot de passe incorrect !");
                    passwordFieldPassword.clear();
                    passwordFieldPassword.requestFocus();
                }
            } catch (Exception e){
                e.printStackTrace();
            }
        }else{
            stage.close();
        }

    }

    @FXML
    public void createUser() throws IOException, SQLException, ClassNotFoundException {
        String result = infosAreOkay();
        if(result.equals("")){
            //Infos are okay and ready to be sended..
            if(!connexionBDD.addUser(new User(textFieldUserNameCreation.getText(),
                    passwordFieldPassWordCreation.getText(),
                    textFieldMailAdresse.getText(),
                    textFieldFirstName.getText(),
                    textFieldLastName.getText(),
                    0,
                    0,
                    false))){
                System.out.println("User ajouté");
                showLoginScreenScene();
            } else {
                System.out.println("Erreur lors de la création de compte");
            }

            labelMessageError.setVisible(false);
        } else {
            labelMessageError.setVisible(true);
            labelMessageError.setText(result);
        }
    }

    public String infosAreOkay() {
        //String account, String password1, String password2, String mailAdresse, String firstname, String lastname
        if(textFieldUserNameCreation.getText().isEmpty()) {
            textFieldUserNameCreation.requestFocus();
            return "Précisez un nom de compte.";
        } else {
            if(connexionBDD.testConnection()){
                if(connexionBDD.checkUsername(textFieldUserNameCreation.getText())){
                    textFieldUserNameCreation.requestFocus();
                    return "Nom de compte déjà existant";
                }
            }
        }

        if(!(passwordFieldPassWordCreation.getText().equals(passwordFieldPassWordRetypeCreation.getText()))) {
            passwordFieldPassWordCreation.requestFocus();
            return "Les deux mot de passe ne sont pas identiques...";
        }

        if(textFieldMailAdresse.getText().isEmpty()){
            textFieldMailAdresse.requestFocus();
            return "Précisez une adresse mail.";
        }

        if(textFieldFirstName.getText().isEmpty()){
            textFieldFirstName.requestFocus();
            return "Précisez un prénom.";
        }

        if(textFieldLastName.getText().isEmpty()){
            textFieldLastName.requestFocus();
            return "Précisez un nom.";
        }

        return "";

    }

}
