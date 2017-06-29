package sample.Controller;

import javafx.animation.FadeTransition;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.geometry.Rectangle2D;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Label;
import javafx.scene.image.ImageView;
import javafx.scene.layout.AnchorPane;
import javafx.scene.layout.BorderPane;
import javafx.scene.media.Media;
import javafx.scene.media.MediaPlayer;
import javafx.stage.Screen;
import javafx.stage.Stage;
import javafx.util.Duration;
import sample.ConnexionBDD;
import sample.Generator;
import sample.resource.data.User;

import java.io.IOException;
import java.net.URL;
import java.sql.SQLException;
import java.util.ResourceBundle;

/**
 * Created by Morgadow on 24/05/2017.
 */
public class WelcomePageController implements Initializable{

    @FXML
    private Label namePlayerLabel;
    @FXML
    private Label labelClickHere;

    @FXML
    private BorderPane borderPaneMain;
    @FXML
    private AnchorPane anchorPaneCenter;
    @FXML
    private ImageView imageTopCenter;
    @FXML
    private Label labelIdUser;

    public int id_User;
    private MediaPlayer mediaPlayer;
    private Media mediaBackGround;
//    MotionBlur motionBlur = new MotionBlur();
    private Screen screen = Screen.getPrimary();
    private Rectangle2D screenBounds = Screen.getPrimary().getVisualBounds();
    private Scene nextScene;
    private Scene actualScene;
    private Stage stage;
    private Generator generator = new Generator();
    ConnexionBDD connexionBDD = new ConnexionBDD();


    @Override
    public void initialize(URL location, ResourceBundle resources) {
//        stage.setX((screenBounds.getWidth() - g.getWidth()) / 2);
//        stage.setY((screenBounds.getHeight() - g.getHeight()) / 2);

//        System.out.println(labelIdUser.getId());
        anchorPaneCenter.setOpacity(0);
        borderPaneMain.setOnMouseEntered(event -> fadingInWhenMouseEntered(anchorPaneCenter, 1000));
        borderPaneMain.setOnMouseExited(event -> fadingOutWhenMouseExited(anchorPaneCenter, 1000));
        setSong("Super Mario 64 - End theme");
//        stage = (Stage) labelClickHere.getScene().getWindow();
//        actualScene = labelClickHere.getScene();
    }

    public void fadingInWhenMouseEntered(Node node, int time){
        FadeTransition fadeTransition = new FadeTransition(Duration.millis(time),node);
        fadeTransition.setFromValue(0.0);
        fadeTransition.setToValue(1.0);
        fadeTransition.play();
    }

    public void fadingOutWhenMouseExited(Node node, int time){
        FadeTransition fadeTransition = new FadeTransition(Duration.millis(time),node);
        fadeTransition.setFromValue(1.0);
        fadeTransition.setToValue(0.0);
        fadeTransition.play();
    }

    private void setSong(String nameOfTheSong){
        mediaBackGround = new Media((getClass().getResource("../resource/song/" + nameOfTheSong + ".mp3").toExternalForm()));
        mediaPlayer = new MediaPlayer(mediaBackGround);
        mediaPlayer.play();
    }

    @FXML
    public void switchScene() throws IOException, SQLException {
        stage = (Stage) borderPaneMain.getScene().getWindow();
        mediaPlayer.stop();

        Parent parent;
        FXMLLoader loader = new FXMLLoader(getClass().getResource("../resource/fxml_page/MenuHome.fxml"));
        parent = loader.load();
        Scene scene = new Scene(parent);
//        nextScene = generator.initScene(getClass().getResource("../resource/fxml_page/MenuHome.fxml"));
        stage.setScene(scene);
        ((MenuHomeController)loader.getController()).prepareData(Integer.parseInt(labelIdUser.getText()));
        stage.show();
    }

    public void prepareData(int idUser) throws SQLException {
//        labelIdUser.setText(String.valueOf(idUser));
        namePlayerLabel.setText((connexionBDD.getUserInfos(idUser)).getUsername().toUpperCase());
        labelIdUser.setText(String.valueOf(idUser));
    }
    public void getUserInfos(User user){

    }
}
