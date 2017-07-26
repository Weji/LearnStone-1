package sample.controller;

import com.mashape.unirest.http.exceptions.UnirestException;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.layout.AnchorPane;
import javafx.scene.layout.BorderPane;
import javafx.scene.layout.GridPane;
import javafx.scene.layout.VBox;
import javafx.stage.Stage;
import sample.WebService;
import sample.Generator;
import sample.data.dataclass.questions.Answer;
import sample.data.dataclass.questions.Question;

import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.ResourceBundle;
import java.util.concurrent.ThreadLocalRandom;

/**
 * Created by Morgadow on 23/06/2017.
 */
public class MenuQuizzController implements Initializable {


    @FXML private BorderPane borderPaneMain;

    // list of menu button (navigation)

    @FXML private Label labelMenuHome;
    @FXML private Label labelMenuPresentationOfTheGame;
    @FXML private Label labelMenuCardList;
    @FXML private Label labelMenuLibrary;
    @FXML private Label labelMenuLessons;
    @FXML private Label labelMenuQuizz;
    @FXML private Label labelMenuStatsOfThePlayer;
    @FXML private Button buttonDeconnexion;
    @FXML private Label labelIdUser;

    @FXML private Label labelQuestionText;
    @FXML private Label labelNumberActualQuestion;
    @FXML private AnchorPane anchorPaneNextQuestion;
    @FXML private AnchorPane anchorPanePreviousQuestion;
    @FXML private GridPane gridPaneAnswer;
    @FXML private Button buttonAnswerA;
    @FXML private Button buttonAnswerB;
    @FXML private Button buttonAnswerC;
    @FXML private Button buttonAnswerD;
    @FXML private Label labelTopUsername;
    @FXML private VBox vboxLeft;

    private int numberActualQuestion = 0;
    final int MAXQUESTIONPERQUIZZ = 40;
    final int MAXANSWERPERQUESTION = 4;
    private int iMin = 0;
    private int iMax = 0;
    //    private int actualQuestion = 0;
    ArrayList<Answer> listAnswer;
    private boolean answeredWell = false;
    //List of Menu Button
    public ArrayList<Label> listButton = new ArrayList<>();
    public Button[] listButtonAnwser;
    private int randomNum[] = new int[MAXQUESTIONPERQUIZZ];
    WebService webService = new WebService();
    Generator generator = new Generator();
    Stage stage;
    @Override
    public void initialize(URL location, ResourceBundle resources) {
        try {
            setAllButtonLink();
        } catch (InstantiationException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        }
        listButtonAnwser = setupAnswerButtonEventListener(listButtonAnwser);
        try {
            iMin = webService.getMinIdQuestion();
            iMax = webService.getMaxIdQuestion();
            for(int i = 0; i < MAXQUESTIONPERQUIZZ; i++){
                //we generate a serie of random number from the min index and the max index in base for the table questions
                randomNum[i] = ThreadLocalRandom.current().nextInt(iMin, iMax+1);
            }
//            System.out.println("Question n°:" + (numberActualQuestion + 1));
            getQuestionInfo(randomNum[numberActualQuestion]);
        } catch (UnirestException e) {
            e.printStackTrace();
        }
    }
    private Button[] setupAnswerButtonEventListener(Button[] listButtonAnwser) {
        listButtonAnwser = new Button[]{buttonAnswerA, buttonAnswerB, buttonAnswerC, buttonAnswerD};
        int i = 0;
        for(Button button : listButtonAnwser){
            int finalI = i;
            button.setOnAction(event -> {
                try {
                    selectAnswer(finalI);
                } catch (UnirestException e) {
                    e.printStackTrace();
                }
                try {
                    changeQuestion();
                } catch (IOException e) {
                    e.printStackTrace();
                } catch (UnirestException e) {
                    e.printStackTrace();
                }
            });
            i++;
        }
        return listButtonAnwser;
    }
    private void selectAnswer(int i) throws UnirestException {

        if((listAnswer.get(i).isCorrectAnswer()) == 1){
            answeredWell =  true;
        } else{
            answeredWell =  false;
        }

        // Update person score
        webService.profilUpdater(Integer.parseInt(labelIdUser.getText()), answeredWell);
        // update question answered
        webService.questionLog(Integer.parseInt(labelIdUser.getText()), randomNum[numberActualQuestion], answeredWell);
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
        generator.checkPlugin(vboxLeft);

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
    private void getQuestionInfo(int idQuestion) throws UnirestException {
        //we receive the question info our Question object class
        Question actualQuestion = webService.getQuestion(idQuestion);

        //then show the info of the actual question (the text) in our javafx object
        showQuestionInfos(actualQuestion);

        //we get a list of answer corresponding to the question founded before
        listAnswer = webService.getAnswerFromQuestion(idQuestion);
        System.out.println("Answer from question id = " + idQuestion);
        for(Answer answer: listAnswer){
            System.out.println(answer.toString());
        }
        if(listAnswer != null){
            //then show the possible answer over the button
            showAnswerInfos(listAnswer);
        }
    }
    private void showAnswerInfos(ArrayList<Answer> listAnswer) {
        hideAllAnswer();
//        AnchorPane anchorPane = (AnchorPane) gridPaneAnswer.getChildren().get(1);
        for(int i = 0; i < listAnswer.size(); i++){
            // here we show the button only if the answer has a text and write it over the button
            if(listAnswer.get(i).getAnswerText()!= ""){
                listButtonAnwser[i].setText(listAnswer.get(i).getAnswerText());
                gridPaneAnswer.getChildren().get(i).setVisible(true);
            }
        }

    }
    private void hideAllAnswer() {
        // we hide all the button
        for(int i = 0; i < MAXANSWERPERQUESTION; i++){
            gridPaneAnswer.getChildren().get(i).setVisible(false);
            listButtonAnwser[i].setText("");
        }
    }

    @FXML private void changeQuestion() throws IOException, UnirestException {
        numberActualQuestion++;

        if (numberActualQuestion < MAXQUESTIONPERQUIZZ){
            System.out.println(numberActualQuestion);
            // get question info of the next question
            getQuestionInfo(randomNum[numberActualQuestion]);
        } else {
            generator.switchScene("MenuQuizzFinished",stage,labelIdUser);
        }

    }
    private void showQuestionInfos(Question actualQuestion){
        labelQuestionText.setText(actualQuestion.getQuestionText());
        labelNumberActualQuestion.setText(numberActualQuestion + 1 + "/"+ MAXQUESTIONPERQUIZZ);
    }


    public void prepareData(int idUser) throws UnirestException {
        labelIdUser.setText(String.valueOf(idUser));
        if(webService.getPerson(idUser) != null){
            labelTopUsername.setText(webService.getPerson(idUser).getUsername().toUpperCase());
        }
        stage = (Stage) labelIdUser.getScene().getWindow();
    }
}
