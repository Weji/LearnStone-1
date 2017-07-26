package sample.controller;

import com.mashape.unirest.http.exceptions.UnirestException;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.scene.layout.BorderPane;
import javafx.stage.Stage;
import sample.WebService;
import sample.Generator;
import sample.data.dataclass.Lesson;

import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.ResourceBundle;

/**
 * Created by Morgadow on 24/06/2017.
 */
public class MenuLessonsController implements Initializable{


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

    @FXML private ImageView imageViewScreenShot;
    @FXML private Label labelLessonTitle;
    @FXML private Label  labelTextLesson;
    @FXML private Button buttonNextLesson;
    @FXML private Button buttonPreviousLesson;
    @FXML private Label labelNumberLesson;

    private ArrayList<Label> listButton = new ArrayList<>();
    //    private ArrayList<Lesson> listLessons = new ArrayList<>();
    private ArrayList<Integer> listNumberLesson = new ArrayList<>();
    private Lesson lesson;
    private int numberActualLesson = 0;

    WebService webService = new WebService("localhost", 8080);
    Generator generator = new Generator();
    private Stage stage;
    @Override
    public void initialize(URL location, ResourceBundle resources) {
        setAllButtonLink();
    }

    private void changeLesson(boolean nextOrPrevious) throws UnirestException {
        if(nextOrPrevious){
//            numberActualLessonInList++;
            numberActualLesson++;
            lesson = webService.getLesson(numberActualLesson);
        } else {
//            numberActualLessonInList--;
            numberActualLesson--;
            lesson = webService.getLesson(numberActualLesson);
        }

        if(!webService.lessonLog(Integer.parseInt(labelIdUser.getText()), numberActualLesson)){
            System.out.println("Progression saved");
        }

//        setupLessonOnScreen(listLessons.get(numberActualLessonInList - 1));
        setupLessonOnScreen(lesson);

        setNextAndPreviousButton();
    }
    private void setupLessonOnScreen(Lesson lesson) {
//        imageViewScreenShot = new ImageView(lesson.getUrlMedia());
        imageViewScreenShot.setImage(new Image(lesson.getImg()));
        labelTextLesson.setText(lesson.getText());
        labelLessonTitle.setText("LEÇON N°" + lesson.getNumberLesson());
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

        //setup button link to change lesson
        buttonNextLesson.setOnAction(event -> {
            try {
                this.changeLesson(true);
            } catch (UnirestException e) {
                e.printStackTrace();
            }
        });
        buttonPreviousLesson.setOnAction(event -> {
            try {
                this.changeLesson(false);
            } catch (UnirestException e) {
                e.printStackTrace();
            }
        });
    }
    public void prepareData(int idUser) throws UnirestException {
        labelIdUser.setText(String.valueOf(idUser));
        if(webService.getPerson(idUser) != null){
            labelTopUsername.setText(webService.getPerson(idUser).getUsername().toUpperCase());
        }

        numberActualLesson = webService.getLastReadLesson(idUser);

        listNumberLesson = webService.getListNumberLesson();
        //the listLesson below is ordered by lessons.NumberLesson
        lesson = webService.getLesson(listNumberLesson.get(numberActualLesson-1));
        setupLessonOnScreen(lesson);
        if(!webService.lessonLog(idUser, numberActualLesson)){
            System.out.println("Progression saved");
        }
        setNextAndPreviousButton();
        stage = (Stage) borderPaneMain.getScene().getWindow();
    }

    private void setNextAndPreviousButton(){
        // if you are reading to first lesson, you can't click on previous lesson
        if(numberActualLesson == 1){
            buttonPreviousLesson.setDisable(true);
        } else {
            buttonPreviousLesson.setDisable(false);
        }
        if(numberActualLesson == listNumberLesson.size()){
            buttonNextLesson.setDisable(true);
        } else {
            buttonNextLesson.setDisable(false);
        }
    }
}
