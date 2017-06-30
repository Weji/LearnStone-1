package sample.resource.data.questions;

/**
 * Created by Morgadow on 27/06/2017.
 */
public class Question {
    private String questionText;
    private int nbUse;
    private int nbResult;
    public Question(String questionTextinput, int nbUseInput, int nbResultInput){
        this.questionText = questionTextinput;
        this.nbUse = nbUseInput;
        this.nbResult = nbResultInput;
    }

    public String getQuestionText() {
        return questionText;
    }

    public int getNbResult() {
        return nbResult;
    }

    public int getNbUse() {
        return nbUse;
    }

}
