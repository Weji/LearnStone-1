package sample.resource.data;

/**
 * Created by Morgadow on 29/06/2017.
 */
public class Word {
    private int idKeyWord;
    private String labelKeyWord;
    private String definitionKeyWord;

    public Word(String labelKeyWordInput, String definitionKeyWordInput){
        this.labelKeyWord = labelKeyWordInput;
        this.definitionKeyWord = definitionKeyWordInput;
    }
    public int getIdKeyWord() {
        return idKeyWord;
    }

    public String getDefinitionKeyWord() {
        return definitionKeyWord;
    }

    public String getLabelKeyWord() {
        return labelKeyWord;
    }
}
