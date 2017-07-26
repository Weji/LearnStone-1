package sample.data.dataclass.questions;

/**
 * Created by Morgadow on 27/06/2017.
 */
public class Question {
    private String questionText;
    private int nbUse;
    private int nbResult;
    private String imgUrl;
    public Question(String questionTextinput, int nbUseInput, int nbResultInput, String imgUrlInput){
        this.questionText = questionTextinput;
        this.nbUse = nbUseInput;
        this.nbResult = nbResultInput;
        this.imgUrl = imgUrlInput;

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

    public String getImgUrl() {
        return imgUrl;
    }
}
