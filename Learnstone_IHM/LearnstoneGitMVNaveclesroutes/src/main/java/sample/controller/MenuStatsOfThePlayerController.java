package sample.controller;

import com.mashape.unirest.http.exceptions.UnirestException;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.chart.PieChart;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.layout.BorderPane;
import javafx.stage.Stage;
import sample.Generator;
import sample.WebService;
import sample.data.dataclass.Person;

import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.ResourceBundle;

/**
 * Created by Morgadow on 28/06/2017.
 */
public class MenuStatsOfThePlayerController implements Initializable{

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
    @FXML private Label labelNbQuestionAnswered;
    @FXML private PieChart pieChartStats;
    @FXML private Label labelUsername;

    Person person;
    WebService webService = new WebService("localhost", 8080);
    Generator generator = new Generator();
    private Stage stage;
    private ArrayList<Label> listButton = new ArrayList<>();
    private final ObservableList<PieChart.Data> details = FXCollections.observableArrayList();
    @Override
    public void initialize(URL location, ResourceBundle resources) {
        setAllButtonLink();
    }
    public void prepareData(int idUser) throws UnirestException {
        labelIdUser.setText(String.valueOf(idUser));
        person = webService.getPerson(idUser);
        if(person != null){
            labelTopUsername.setText(person.getUsername().toUpperCase());
            labelUsername.setText(person.getUsername());
            labelNbQuestionAnswered.setText(String.valueOf("Vous avez répondu à " + person.getNbQuestionAnswered()) + " question(s).");
            setupPieChart();
            stage = (Stage) borderPaneMain.getScene().getWindow();
        }

    }
    private void setupPieChart() {
        float percentageGoodAnswer = ((float)(person.getNbGoodAnswer())/((float) person.getNbQuestionAnswered()))*100;
        float percentageBadAnswer = (100 - percentageGoodAnswer);
        details.addAll(new PieChart.Data("Bonnes réponses", percentageGoodAnswer),
                new PieChart.Data("Mauvaises réponses", percentageBadAnswer));
        pieChartStats.setData(details);
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
}
