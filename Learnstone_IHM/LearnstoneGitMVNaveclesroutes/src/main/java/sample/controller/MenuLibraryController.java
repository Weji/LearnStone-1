package sample.controller;

import com.mashape.unirest.http.exceptions.UnirestException;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.geometry.Insets;
import javafx.geometry.Pos;
import javafx.scene.control.*;
import javafx.scene.layout.BorderPane;
import javafx.scene.layout.GridPane;
import javafx.scene.text.TextAlignment;
import javafx.stage.Stage;
import sample.WebService;
import sample.Generator;
import sample.data.dataclass.Definition;
import sample.data.dataclass.Person;

import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.ResourceBundle;

/**
 * Created by Morgadow on 24/06/2017.
 */
public class MenuLibraryController implements Initializable{
    @FXML private BorderPane borderPaneMain;
    @FXML private Label labelMenuHome;
    @FXML private Label labelMenuPresentationOfTheGame;
    @FXML private Label labelMenuCardList;
    @FXML private Label labelMenuLibrary;
    @FXML private Label labelMenuLessons;
    @FXML private Label labelMenuQuizz;
    @FXML private Label labelMenuStatsOfThePlayer;
    @FXML private Button buttonDeconnexion;
    @FXML private Label labelIdUser;
    @FXML private Label labelTopUsername;
    @FXML private TabPane tabepaneWords;

    private ArrayList<Label> listButton = new ArrayList<>();
    WebService webService = new WebService("localhost", 8080);
    Generator generator = new Generator();
    private Stage stage;
    private Person person;

    @Override
    public void initialize(URL location, ResourceBundle resources) {

        setAllButtonLink();
        try {
            setupTabPane();
        } catch (UnirestException e) {
            e.printStackTrace();
        }
    }

    private void setupTabPane() throws UnirestException{
        for(char c = 'a'; c <= 'z'; c++){
            Tab tab = new Tab(String.valueOf(c).toUpperCase());
            tab = loadTab(tab, c);
            tabepaneWords.getTabs().add(tab);
        }
    }

    private Tab loadTab(Tab tab, char c) throws UnirestException {
        ArrayList<Definition> listWord = webService.getFilteredWord(c);
        GridPane gridPane = new GridPane();
        gridPane.setVgap(10);
        gridPane.setHgap(50);
        gridPane.setPadding(new Insets(0,40,50,40));

           for(int i = 0; i < listWord.size(); i++){
               Label labelWord = new Label(listWord.get(i).getWord());
               Label labelWordDefinition = new Label(listWord.get(i).getWordText());
               setupLabel(labelWord, labelWordDefinition);
               gridPane.addRow(i, labelWord, labelWordDefinition);
           }
        ScrollPane scrollPane = new ScrollPane(gridPane);
        scrollPane.setHbarPolicy(ScrollPane.ScrollBarPolicy.NEVER);
        tab.setContent(scrollPane);
        return tab;
    }

    private void setupLabel(Label labelWord, Label labelWordDefinition) {
        labelWord.setId("labelWord");
        labelWordDefinition.setId("labelWordDefinition");
        labelWordDefinition.setWrapText(true);
        labelWordDefinition.setMinHeight(80);
        labelWordDefinition.setMaxWidth(1300);
        labelWordDefinition.setTextAlignment(TextAlignment.JUSTIFY);
        labelWordDefinition.setAlignment(Pos.CENTER_LEFT);
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
