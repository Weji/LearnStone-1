package sample.controller;

import com.mashape.unirest.http.exceptions.UnirestException;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.layout.BorderPane;
import javafx.scene.layout.VBox;
import javafx.stage.Stage;
import sample.Generator;
import sample.WebService;
import sample.data.dataclass.Person;

import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.ResourceBundle;

/**
 * Created by Morgadow on 19/06/2017.
 */

public class MenuPresentationOfTheGameController implements Initializable {


    @FXML private Label labelMenuHome;
    @FXML private Label labelMenuPresentationOfTheGame;
    @FXML private Label labelMenuCardList;
    @FXML private Label labelMenuLibrary;
    @FXML private Label labelMenuLessons;
    @FXML private Label labelMenuQuizz;
    @FXML private Label labelMenuStatsOfThePlayer;
    @FXML private Button buttonDeconnexion;
    @FXML private BorderPane borderPaneMain;
    @FXML private Label labelIdUser;
    @FXML private Label labelTopUsername;
    @FXML private VBox vboxLeft;


    private ArrayList<Label> listButton = new ArrayList<>();
    WebService webService = new WebService();
    Generator generator = new Generator();
    private Stage stage;
    private Person person;

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        try {
            setAllButtonLink();
        } catch (InstantiationException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        }
    }

    private void setAllButtonLink() throws InstantiationException, IllegalAccessException {
        // List of button which switch the scene of the stage
        listButton.add(labelMenuHome);
        listButton.add(labelMenuPresentationOfTheGame);
        listButton.add(labelMenuCardList);
        listButton.add(labelMenuLibrary);
        listButton.add(labelMenuLessons);
        listButton.add(labelMenuQuizz);
        listButton.add(labelMenuStatsOfThePlayer);

        //add plugin
        generator.checkPlugin(vboxLeft);

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
