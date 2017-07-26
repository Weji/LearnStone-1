package sample.data.dataclass;

/**
 * Created by Morgadow on 30/06/2017.
 */
public class Lesson {
    private int idLesson;
    private int numberLesson;
    private String text;
    private String img;

    public Lesson(int idLesson, int numberLesson, String text, String img) {
        this.idLesson = idLesson;
        this.numberLesson = numberLesson;
        this.text = text;
        this.img = img;
    }

    public int getIdLesson() {
        return idLesson;
    }

    public void setIdLesson(int idLesson) {
        this.idLesson = idLesson;
    }

    public int getNumberLesson() {
        return numberLesson;
    }

    public void setNumberLesson(int numberLesson) {
        this.numberLesson = numberLesson;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }
}
