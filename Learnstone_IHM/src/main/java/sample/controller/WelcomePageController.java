package sample.controller;

import com.mashape.unirest.http.exceptions.UnirestException;
import javafx.animation.FadeTransition;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Label;
import javafx.scene.image.Image;
import javafx.scene.layout.AnchorPane;
import javafx.scene.layout.BorderPane;
import javafx.scene.media.Media;
import javafx.scene.media.MediaPlayer;
import javafx.stage.Stage;
import javafx.util.Duration;
import sample.WebService;
import sample.Generator;
import sample.data.dataclass.Person;

import java.io.IOException;
import java.net.URL;
import java.util.ResourceBundle;

/**
 * Created by Morgadow on 24/05/2017.
 */
public class WelcomePageController implements Initializable{

    @FXML private Label namePlayerLabel;
    @FXML private BorderPane borderPaneMain;
    @FXML private AnchorPane anchorPaneCenter;
    @FXML private Label labelIdUser;

    private MediaPlayer mediaPlayer;
    private Media mediaBackGround;
    private Stage stage;
    private Person person;

    WebService webService = new WebService();

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        anchorPaneCenter.setOpacity(0);
        borderPaneMain.setOnMouseEntered(event -> fadingInWhenMouseEntered(anchorPaneCenter, 1000));
        borderPaneMain.setOnMouseExited(event -> fadingOutWhenMouseExited(anchorPaneCenter, 1000));
        setSong("World Of Warcraft (Dwarven Tavern Music)");
    }

    private void fadingInWhenMouseEntered(Node node, int time){
        FadeTransition fadeTransition = new FadeTransition(Duration.millis(time),node);
        fadeTransition.setFromValue(0.0);
        fadeTransition.setToValue(1.0);
        fadeTransition.play();
    }

    private void fadingOutWhenMouseExited(Node node, int time){
        FadeTransition fadeTransition = new FadeTransition(Duration.millis(time),node);
        fadeTransition.setFromValue(1.0);
        fadeTransition.setToValue(0.0);
        fadeTransition.play();
    }

    private void setSong(String nameOfTheSong){
        mediaBackGround = new Media((getClass().getClassLoader().getResource("song/" + nameOfTheSong + ".mp3").toExternalForm()));
        mediaPlayer = new MediaPlayer(mediaBackGround);
        mediaPlayer.setAutoPlay(true);
        mediaPlayer.play();
    }

    @FXML public void switchScene() throws IOException, UnirestException {
        stage = (Stage) borderPaneMain.getScene().getWindow();
        mediaPlayer.stop();

        Parent parent;
        FXMLLoader loader = new FXMLLoader(getClass().getClassLoader().getResource("fxml_page/MenuHome.fxml"));
        parent = loader.load();
        Scene scene = new Scene(parent);
        stage.setScene(scene);
        ((MenuHomeController)loader.getController()).prepareData(Integer.parseInt(labelIdUser.getText()));
        stage.show();
    }

    public void prepareData(int idUser) throws UnirestException {
        labelIdUser.setText(String.valueOf(idUser));
        person = webService.getPerson(idUser);

        if(person != null){
            namePlayerLabel.setText((webService.getPerson(idUser)).getUsername().toUpperCase());
        }
    }
}
