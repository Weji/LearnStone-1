package sample.controller;

import com.mashape.unirest.http.exceptions.UnirestException;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.layout.BorderPane;
import javafx.scene.media.MediaPlayer;
import javafx.stage.Stage;
import sample.WebService;
import sample.Generator;
import sample.data.dataclass.Person;

import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.ResourceBundle;

/**
 * Created by Morgadow on 19/06/2017.
 */

public class MenuPresentationOfTheGameController implements Initializable {


//    private WebView webViewVideo;
    @FXML private Label labelMenuHome;
    @FXML private Label labelMenuPresentationOfTheGame;
    @FXML private Label labelMenuCardList;
    @FXML private Label labelMenuLibrary;
    @FXML private Label labelMenuLessons;
    @FXML private Label labelMenuQuizz;
    @FXML private Label labelMenuStatsOfThePlayer;
//    @FXML private MediaView mediaViewVideoOfPresentation;
    @FXML private Button buttonDeconnexion;
    @FXML private BorderPane borderPaneMain;
    @FXML private Label labelIdUser;
    @FXML private Label labelTopUsername;


    private ArrayList<Label> listButton = new ArrayList<>();
    WebService webService = new WebService("localhost", 8080);
    Generator generator = new Generator();
    private Stage stage;
    private MediaPlayer mediaPlayer;
    private static final String MEDIA_URL = "../resource/video/hearthstone-decouverte-du-jeu-12.mp4";
    private Person person;

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        setAllButtonLink();
//        System.out.println(getClass().getResource(MEDIA_URL));
//        mediaPlayer = new MediaPlayer(new Media(this.getClass().getResource(MEDIA_URL).toExternalForm()));
//        System.out.println(mediaPlayer);
//        mediaViewVideoOfPresentation.setMediaPlayer(mediaPlayer);
    }

    @Deprecated
    @FXML
    private void startVideo(){
//        if(mediaPlayer.isAutoPlay()){
//            mediaPlayer.stop();
//            mediaPlayer.setAutoPlay(false);
//        } else {
//            mediaPlayer.play();
//            mediaPlayer.setAutoPlay(true);
//        }
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

        //setup all "button" click on code
        for(Label label: listButton){
            label.setOnMouseClicked(event -> {
                try {
//                    System.out.println(label.getId().substring(5));
                    generator.switchScene(label.getId().substring(5), stage, labelIdUser);
                } catch (IOException e) {
                    e.printStackTrace();
                } catch (UnirestException e) {
                    e.printStackTrace();
                }
            });
        }

        //also setup deconnection Button code click on
        buttonDeconnexion.setOnAction(event -> {
            try {
                generator.switchScene("LoginScreenPage", stage, labelIdUser);
            } catch (IOException e) {
                e.printStackTrace();
            } catch (UnirestException e) {
                e.printStackTrace();
            }
        });
    }
    public void prepareData(int idUser) throws UnirestException {
        labelIdUser.setText(String.valueOf(idUser));
        person = webService.getPerson(idUser);
        if(person != null){
            labelTopUsername.setText(person.getUsername().toUpperCase());
        }
        stage = (Stage) borderPaneMain.getScene().getWindow();
    }

}
