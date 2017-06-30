package sample.Controller;

import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.chart.PieChart;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.layout.BorderPane;
import javafx.stage.Stage;
import sample.ConnexionBDD;
import sample.resource.data.User;

import java.io.IOException;
import java.net.URL;
import java.sql.SQLException;
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
    @FXML private Label labelMenuStreamTwitchTV;
    @FXML private Button buttonDeconnexion;
    @FXML private BorderPane borderPaneMain;
    @FXML private Label labelIdUser;


    @FXML private Label labelTopUsername;
    @FXML private Label labelNbGoodAnswer;
    @FXML private Label labelNbQuestionAnswered;
    @FXML private Label labelRateGoodAnswer;

    @FXML private PieChart pieChartStats;

    @FXML private Label labelUsername;
    User user;
    ConnexionBDD connexionBDD = new ConnexionBDD();

    private ArrayList<Label> listButton = new ArrayList<>();
    private final ObservableList<PieChart.Data> details = FXCollections.observableArrayList();
    @Override
    public void initialize(URL location, ResourceBundle resources) {
        setAllButtonLink();
    }

    public void prepareData(int idUser) throws SQLException {
        labelIdUser.setText(String.valueOf(idUser));
        user = connexionBDD.getUserInfos(idUser);
        labelTopUsername.setText(user.getUsername().toUpperCase());
        labelUsername.setText(user.getUsername());
        labelNbQuestionAnswered.setText(String.valueOf("Vous avez répondu à " + user.getNbQuestionAnswered()) + " question(s).");
        setupPieChart();
    }

    private void setupPieChart() {
        float percentageGoodAnswer = ((float)(user.getNbGoodAnswer())/((float)user.getNbQuestionAnswered()))*100;
        float percentageBadAnswer = (100 - percentageGoodAnswer);
        details.addAll(new PieChart.Data("Bonnes réponses", percentageGoodAnswer),
                new PieChart.Data("Mauvaises réponses", percentageBadAnswer));
        pieChartStats.setData(details);
    }

    public void SwitchScene(String nameOfScene) throws IOException, SQLException {
        Stage stage = (Stage) borderPaneMain.getScene().getWindow();

        Parent parent;
        FXMLLoader loader = new FXMLLoader(getClass().getResource("../resource/fxml_page/" + nameOfScene + ".fxml"));
        parent = loader.load();
        Scene scene = new Scene(parent);
        stage.setScene(scene);

        //send the id_user to the correct page called
        switch (nameOfScene){
            case "MenuHome":
                ((MenuHomeController)loader.getController()).prepareData(Integer.parseInt(labelIdUser.getText()));
                break;
            case "MenuPresentationOfTheGame":
                ((MenuPresentationOfTheGameController)loader.getController()).prepareData(Integer.parseInt(labelIdUser.getText()));
                break;
            case "MenuCardList":
                ((MenuCardListController)loader.getController()).prepareData(Integer.parseInt(labelIdUser.getText()));
                break;
            case "MenuLibrary":
                ((MenuLibraryController)loader.getController()).prepareData(Integer.parseInt(labelIdUser.getText()));
                break;
            case "MenuLessons":
                ((MenuLessonsController)loader.getController()).prepareData(Integer.parseInt(labelIdUser.getText()));
                break;
            case "MenuQuizz":
                ((MenuQuizzController)loader.getController()).prepareData(Integer.parseInt(labelIdUser.getText()));
                break;
            case "MenuStatsOfThePlayer":
                ((MenuStatsOfThePlayerController)loader.getController()).prepareData(Integer.parseInt(labelIdUser.getText()));
                break;
            case "MenuStreamTwitchTV":
                ((MenuStreamTwitchTVController)loader.getController()).prepareData(Integer.parseInt(labelIdUser.getText()));
                break;
            default:
//                System.out.println("Page innexistant...");
        }
        stage.show();
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
        listButton.add(labelMenuStreamTwitchTV);

        //setup all "button" click on code
        for(Label label: listButton){
            label.setOnMouseClicked(event -> {
                try {
                    this.SwitchScene(label.getId().substring(5));
                } catch (IOException e) {
                    e.printStackTrace();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            });
        }

        //also setup deconnection Button code click on
        buttonDeconnexion.setOnAction(event -> {
            try {
                this.SwitchScene("LoginScreenPage");
            } catch (IOException e) {
                e.printStackTrace();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        });
    }
}
