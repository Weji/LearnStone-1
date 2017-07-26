package sample.controller;


import com.mashape.unirest.http.exceptions.UnirestException;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Label;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;
import javafx.scene.image.ImageView;
import javafx.scene.input.KeyCode;
import javafx.scene.media.Media;
import javafx.scene.media.MediaPlayer;
import javafx.stage.Stage;
import sample.WebService;
import sample.Generator;
import sample.annotation.Regexed;
import sample.data.dataclass.Person;

import java.io.IOException;
import java.net.URL;
import java.util.Date;
import java.util.ResourceBundle;


/**
 * Created by Morgadow on 26/05/2017.
 */
public class LoginScreenController implements Initializable{


    //  Login Screen //
    @FXML private Label labelDayDate;
    @FXML private PasswordField passwordFieldPassword;
    @FXML private TextField textFieldAccount;
    @FXML private ImageView imageViewImageleft;
    @FXML private Label labelMessageError;

    //  Login Screen Creation //

    @FXML private TextField textFieldUserNameCreation;
    @FXML private PasswordField passwordFieldPassWordCreation;
    @FXML private PasswordField passwordFieldPassWordRetypeCreation;
    @FXML private TextField textFieldMailAdresse;
    @FXML private TextField textFieldFirstName;
    @FXML private TextField textFieldLastName;

    private Scene loginScene;
    private Scene sceneSubscription;
    private Stage stage;
    Generator generator = new Generator();
    WebService webService = new WebService();
    @Override
    public void initialize (URL location, ResourceBundle resources) {
        Date date = new Date();
        labelDayDate.setText(date.toString());
        labelMessageError.setVisible(false);
        if(!(passwordFieldPassword == null)){
            passwordFieldPassword.setOnKeyReleased(event -> {
                try {
                    if(event.getCode() == KeyCode.ENTER){
                        connectionAuthentication();
                    }
                } catch (IOException e) {
                    e.printStackTrace();
                }
            });
        }
    }

    @FXML private void showLoginScreenScene() throws IOException {
        stage = (Stage) labelDayDate.getScene().getWindow();
        loginScene = generator.initScene("LoginScreenPage.fxml");
        stage.setScene(loginScene);
        stage.show();
    }

    @FXML private void cancelInput(){
        textFieldAccount.clear();
        passwordFieldPassword.clear();
            textFieldAccount.requestFocus();
    }
    @FXML private void showSubscriptionScene() throws IOException {
        stage = (Stage) labelDayDate.getScene().getWindow();
        sceneSubscription = generator.initScene("LoginScreenPageSubscription.fxml");
        stage.setScene(sceneSubscription);
        stage.show();
    }

    @FXML private void connectionAuthentication() throws IOException {
        stage = (Stage) labelDayDate.getScene().getWindow();
            try{
                int idPerson = webService.getIdPerson(textFieldAccount.getText(), passwordFieldPassword.getText());
                if(idPerson > 0){
                    FXMLLoader loader = new FXMLLoader(getClass().getClassLoader().getResource("fxml_page/WelcomePage.fxml"));
                    Parent root = loader.load();
                    WelcomePageController welcomePageController = loader.getController();
                    welcomePageController.prepareData(idPerson);
                    Scene nextScene = new Scene(root);
                    stage.setY(0);
                    stage.setX(0);
                    stage.setScene(nextScene);
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
        }

    @FXML public void createUser() throws IOException, UnirestException {
        String result = infosAreOkay();
        if(result.equals("")){
            //Infos are okay and ready to be sended..
            if(webService.createPerson(new Person(textFieldFirstName.getText(),
                    textFieldLastName.getText(),
                    textFieldUserNameCreation.getText(),
                    passwordFieldPassWordCreation.getText(),
                    textFieldMailAdresse.getText(),
                    0,
                    0,
                    1))){
                System.out.println("Person ajouté");
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

    public String infosAreOkay() throws UnirestException {
        //String account, String password1, String password2, String mailAdresse, String firstname, String lastname
        if(textFieldUserNameCreation.getText().isEmpty()) {
            textFieldUserNameCreation.requestFocus();
            return "Précisez un nom de compte.";
        } else {
            if(webService.testConnection()){
                if(webService.isRealUsername(textFieldUserNameCreation.getText())){
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

        @Regexed(regex = "#^[a-zA-Z0-9._-]{1,64}@([a-zA-Z0-9-]{2,252}\\.[a-zA-Z.]{2,6}){5,255}$#\n")
        String mail = textFieldMailAdresse.getText();

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
    public void prepareData(){
    }

}
