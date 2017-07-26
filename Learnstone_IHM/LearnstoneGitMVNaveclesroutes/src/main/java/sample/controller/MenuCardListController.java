package sample.controller;

import com.mashape.unirest.http.exceptions.UnirestException;
import javafx.beans.value.ChangeListener;
import javafx.beans.value.ObservableValue;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Cursor;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.ComboBox;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
import javafx.scene.image.ImageView;
import javafx.scene.layout.BorderPane;
import javafx.scene.layout.GridPane;
import javafx.stage.Stage;
import sample.WebService;
import sample.Generator;
import sample.annotation.LEVEL;
import sample.annotation.Report;
import sample.data.dataclass.Card;

import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.ResourceBundle;

/**
 * Created by Morgadow on 21/06/2017.
 */
public class MenuCardListController extends Thread implements Initializable{


    @FXML private Label labelMenuHome;
    @FXML private Label labelMenuPresentationOfTheGame;
    @FXML private Label labelMenuCardList;
    @FXML private Label labelMenuLibrary;
    @FXML private Label labelMenuLessons;
    @FXML private Label labelMenuQuizz;
    @FXML private Label labelMenuStatsOfThePlayer;
    @FXML private BorderPane borderPaneMain;
    @FXML private Button buttonDeconnexion;
    @FXML private Label labelIdUser;
    @FXML private Label labelTopUsername;
    @FXML private GridPane gridpaneListCard;
    @FXML private ComboBox<String> comboboxRarity;
    @FXML private ComboBox<String> comboboxClass;
    @FXML private Button buttonFilter;
    @FXML private TextField textFieldNameCard;
    @FXML private TextField textfieldManaCost;
    @FXML private Button buttonPreviousList;
    @FXML private Button buttonNextList;
    @FXML private ComboBox<Integer> comboboxMaxCardByPage;
    @FXML private Label labelCardNotFound;


    private int maxCardByRow = 6;
    private int maxRowByScreen = 1;
    private int maxCardPerScreen = maxCardByRow * maxRowByScreen;
    private int pageNumber = 0;
    private int start = 0;
    private int positionInTheList = 0;
    private String name ="";
    private int idRarityValue = 0;
    private int idClassValue = 0;
    private String manaCost = "";
    private Stage stage;

    ArrayList<Card> listCardVitrine = new ArrayList<>();
    WebService webService = new WebService("localhost", 8080);
    Generator generator = new Generator();
    private ArrayList<Label> listButton = new ArrayList<>();

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        labelCardNotFound.setVisible(false);
        setAllButtonLink();

        buttonPreviousList.setOnAction(event -> {
            positionInTheList = positionInTheList - (maxCardPerScreen * 2);
            prepareGridPaneList(listCardVitrine, positionInTheList);
        });
        buttonNextList.setOnAction(event -> {
            prepareGridPaneList(listCardVitrine, positionInTheList);
        });


        try {
            setComboBox();
        } catch (UnirestException e) {
            e.printStackTrace();
        }
    }

    @Report(
            level = LEVEL.MINOR,
            commentary = "the if at the end is useless cause we can just call the getFilteredCard endpoint to do the job"
    )
    @FXML private void searchCardWithFilter( ) throws UnirestException {
        name = textFieldNameCard.getText();
        idRarityValue = comboboxRarity.getSelectionModel().getSelectedIndex();
        idClassValue = comboboxClass.getSelectionModel().getSelectedIndex();
        manaCost = textfieldManaCost.getText();

        listCardVitrine = webService.getFilteredCard(name, manaCost, idRarityValue, idClassValue);
        positionInTheList = 0;
        prepareGridPaneList(listCardVitrine, positionInTheList);
    }

    private void setComboBox() throws UnirestException {
        ArrayList<String> listLabel = webService.getAllLblRarity();
        ObservableList<String> observableListLabel = FXCollections.observableArrayList(listLabel);
        comboboxRarity.setValue("");
        comboboxRarity.setItems(observableListLabel);

        listLabel = webService.getAllLblClass();
        observableListLabel = FXCollections.observableArrayList(listLabel);
        comboboxClass.setValue("");
        comboboxClass.setItems(observableListLabel);

        comboboxMaxCardByPage.getItems().addAll(6,12,18,24);
        comboboxMaxCardByPage.setValue(maxCardPerScreen);
        comboboxMaxCardByPage.getSelectionModel().selectedItemProperty().addListener(new ChangeListener<Integer>() {
            @Override
            public void changed(ObservableValue<? extends Integer> observable, Integer oldValue, Integer newValue) {
                maxRowByScreen = (comboboxMaxCardByPage.getSelectionModel().getSelectedIndex() + 1);
                try {
                    System.out.println("settings changed");
                    webService.getFilteredCard(name,manaCost,idRarityValue,idClassValue);
                    prepareGridPaneList(listCardVitrine, 0);
                } catch (UnirestException e) {
                    e.printStackTrace();
                }
            }
        });
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
        labelTopUsername.setText(webService.getPerson(idUser).getUsername().toUpperCase());
        listCardVitrine = webService.getIdAndURLCard();
        prepareGridPaneList(listCardVitrine, start);
        stage = (Stage) borderPaneMain.getScene().getWindow();
    }

    private void prepareGridPaneList(ArrayList<Card> listCardVitrine, int startIndex) {

        gridpaneListCard.getChildren().clear();
        if(listCardVitrine.size() > 0){
            labelCardNotFound.setVisible(false);
            for(int x = 0; x < maxRowByScreen; x++){
                for(int y = 0; y < maxCardByRow; y++){
                    if((startIndex < listCardVitrine.size())) {
                        ImageView imageView = new ImageView(listCardVitrine.get(startIndex).getImg());
                        imageView.setCursor(Cursor.HAND);
                        int finalPosition = startIndex;
                        imageView.setOnMouseClicked(event -> {
                            try {
                                showDetailsCard(listCardVitrine.get(finalPosition).getIdCard());
                            } catch (IOException e) {
                                e.printStackTrace();
                            } catch (UnirestException e) {
                                e.printStackTrace();
                            }
                        });

                        startIndex++;
                        gridpaneListCard.add(imageView, y, x);
                        imageView.setPreserveRatio(false);
                    } else {
                        //No more card to show
                        break;
                    }
                }
            }
        } else {
            labelCardNotFound.setVisible(true);
        }

        positionInTheList += maxCardPerScreen;

        setupPreviousNextCardButton(positionInTheList);
    }

    private void showDetailsCard(int idCard) throws IOException, UnirestException {
        Parent parent;
        FXMLLoader loader = new FXMLLoader(getClass().getClassLoader().getResource("fxml_page/CardDetails.fxml"));
        parent = (Parent) loader.load();
        Scene scene = new Scene(parent);
        CardDetailsController cardDetailsController = loader.getController();
        cardDetailsController.setupCardOnScreen(idCard);
        Stage stageDetailCard = generator.initStage();
        stageDetailCard.setScene(scene);
        stageDetailCard.setResizable(false);
        stageDetailCard.show();
    }

    private void setupPreviousNextCardButton(int position){
        if(position<1){
            position = 1;
        }else{
            position = position -1;
        }
        int numberOfPage =  listCardVitrine.size() / maxCardPerScreen;

        pageNumber =  position / maxCardPerScreen;

        if(pageNumber == 0){
            buttonPreviousList.setDisable(true);
            buttonNextList.setDisable(false);
        }

        if(pageNumber == (numberOfPage)){
            buttonNextList.setDisable(true);
            buttonPreviousList.setDisable(false);
        }

        if(numberOfPage == 0){
            buttonPreviousList.setDisable(true);
            buttonNextList.setDisable(true);
        }

        if((pageNumber > 0) && (pageNumber<numberOfPage)){
            buttonNextList.setDisable(false);
            buttonPreviousList.setDisable(false);
        }
    }
}