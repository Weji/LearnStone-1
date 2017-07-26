package sample.data.dataclass;

/**
 * Created by Morgadow on 29/06/2017.
 */
public class Definition {
    private int idDefinition;
    private String word;
    private String wordText;

    public Definition(String labelKeyWordInput, String definitionKeyWordInput){
        this.word = labelKeyWordInput;
        this.wordText = definitionKeyWordInput;
    }
    public int getIdDefinition() {
        return idDefinition;
    }

    public String getWordText() {
        return wordText;
    }

    public String getWord() {
        return word;
    }

    @Override
    public String toString() {
        return "Definition{" +
                "idDefinition=" + idDefinition +
                ", Definition='" + word + '\'' +
                ", wordText='" + wordText + '\'' +
                '}';
    }
}
