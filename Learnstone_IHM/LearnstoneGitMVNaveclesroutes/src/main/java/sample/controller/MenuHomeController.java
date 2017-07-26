package sample.controller;

import com.mashape.unirest.http.exceptions.UnirestException;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.geometry.Insets;
import javafx.geometry.Pos;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.layout.AnchorPane;
import javafx.scene.layout.BorderPane;
import javafx.scene.layout.VBox;
import javafx.scene.text.Font;
import javafx.stage.Stage;
import sample.WebService;
import sample.Generator;
import sample.data.dataclass.Person;
import org.ego.plugin.IMenu;
import sample.plugin.Plugin;

import java.io.File;
import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.ResourceBundle;

/**
 * Created by Morgadow on 19/06/2017.
 */
public class MenuHomeController implements Initializable {

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
    WebService webService = new WebService("localhost", 8080);
    Generator generator = new Generator();
    Stage stage;
    private Person person;

    Plugin p;
    Class c;
    IMenu menu;

    @Override
    public void initialize(URL location, ResourceBundle resources) {

        try {
            setAllButtonLink();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InstantiationException e) {
            e.printStackTrace();
        }
        Font.loadFont(getClass().getClassLoader().getResource("stylesheets/fonts/Belwe-Medium.ttf").toExternalForm(), 12);
    }

    private void setAllButtonLink() throws IllegalAccessException, InstantiationException {

        if(getClass().getClassLoader().getResource("plugins/PluginWebView.jar") != null){
            p = new Plugin(getClass().getClassLoader().getResource("plugins/PluginWebView.jar").toString());
            p.load();
            c = p.loadStartupClass();

            menu = (IMenu) c.newInstance();

            Label labelTest = new Label(menu.getName());
            labelTest.setAlignment(Pos.CENTER_LEFT);
            labelTest.setPrefHeight(82);
            labelTest.setPrefWidth(258);
            labelTest.setPadding(new Insets(0, 0, 0, 10));
            labelTest.setWrapText(true);
            menu.checkFxml();
            labelTest.setOnMouseClicked(event -> {
                try {
                    menu.showPage();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            });
            AnchorPane anchor = new AnchorPane();
            anchor.setPrefHeight(82);
            anchor.setPrefWidth(258);

            anchor.getChildren().add(labelTest);

            vboxLeft.getChildren().add(anchor);
        }




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
    private void checkJar(String nameFolder){
        File f= new File(nameFolder);
        File[] listOfFiles = f.listFiles();
        if(listOfFiles.length > 0){
            for(File file: listOfFiles){
                System.out.println(file.getAbsolutePath());
            }
        } else {
//
        }
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
