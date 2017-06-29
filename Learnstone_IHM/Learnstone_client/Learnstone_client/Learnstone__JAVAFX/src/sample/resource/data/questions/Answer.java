package sample.resource.data.questions;

/**
 * Created by Morgadow on 27/06/2017.
 */
public class Answer {
    private int IdAnswer;
    private String answerText;
    private boolean isCorrectAnswer;

    public Answer(int idAnswerInput, String answerTextInput, boolean isCorrectAnswerInput){
        this.IdAnswer = idAnswerInput;
        this.answerText = answerTextInput;
        this.isCorrectAnswer = isCorrectAnswerInput;
    }

    public int getIdAnswer() {
        return IdAnswer;
    }


    public String getAnswerText() {
        return answerText;
    }

    public boolean isCorrectAnswer() {
        return isCorrectAnswer;
    }

    public String toString(){
        return "IdAnswer : " + this.IdAnswer + " AnswerText : " + this.answerText + "Good answer ? : " + this.isCorrectAnswer;
    }
}
