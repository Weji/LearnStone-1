package sample.data.dataclass.questions;

/**
 * Created by Morgadow on 27/06/2017.
 */
public class Answer {
    private int idAnswer;
    private String answerText;
    private Integer isCorrectAnswer;
    private int idQuestion;

    public int getIdQuestion() {
        return idQuestion;
    }

    public void setIdQuestion(int idQuestion) {
        this.idQuestion = idQuestion;
    }


    public Answer(int idAnswerInput, String answerTextInput, Integer isCorrectAnswerInput, int idQuestion){
        this.idAnswer = idAnswerInput;
        this.answerText = answerTextInput;
        this.isCorrectAnswer = isCorrectAnswerInput;
        this.idQuestion = idQuestion;
    }

    public int getidAnswer() {
        return idAnswer;
    }


    public String getAnswerText() {
        return answerText;
    }

    public Integer isCorrectAnswer() {
        return isCorrectAnswer;
    }

    public String toString(){
        return "idAnswer : " + this.idAnswer + " AnswerText : " + this.answerText + " Good answer ? : " + this.isCorrectAnswer;
    }
}
