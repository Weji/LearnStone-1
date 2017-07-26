package sample.controller;

import com.mashape.unirest.http.exceptions.UnirestException;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Label;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import sample.WebService;
import sample.data.dataclass.Card;
import java.net.URL;
import java.util.ResourceBundle;

/**
 * Created by Morgadow on 21/06/2017.
 */
public class CardDetailsController implements Initializable {

    //    @FXML private ImageView imageViewCard;
    @FXML private ImageView imageViewCardGolden;
    @FXML private Label labelName;
    @FXML private Label labelText;
    @FXML private Label labelAttack;
    @FXML private Label labelManaCost;
    @FXML private Label labelArtist;
    @FXML private Label labelClass;
    @FXML private Label labelSetCard;
    @FXML private Label labelDurabilityOrHP;
    @FXML private Label labelRarity;
    @FXML private Label labelRace;
    @FXML private Label labelType;



    @Override
    public void initialize(URL location, ResourceBundle resources) {
    }

    protected void setupCardOnScreen(int idCard) throws UnirestException {
        WebService webService = new WebService();
        Card card = webService.getCard(idCard);
        System.out.println();
        //we catch the String label of the type card from the db to see which info we gonna show
        labelName.setText("Name : " + card.getName());
        labelText.setText("Texte : " + card.getText());
        labelType.setText("Type : " + webService.getLblType(card.getIdRefType()));
        labelClass.setText("Classe : " + webService.getLblClass(card.getIdRefClass()));
        labelSetCard.setText("Card set : " + webService.getLblCardsSet(card.getIdRefCardsSet()));
        labelArtist.setText("Artiste : " + card.getArtist());
        if((card.getText() == null)){
            labelText.setVisible(false);
        }
        labelRarity.setText("Rareté : " + webService.getLblRarity(card.getIdRefRarity()));
        labelManaCost.setText("Coût en mana : " + card.getManaCost());

        imageViewCardGolden.setImage(new Image(card.getImg()));
        switch(labelType.getText().substring(7)){
            case "Minion":
                labelAttack.setText("Attaque : " + card.getAttack());
                labelRace.setText("Race : " + webService.getLblRace(card.getIdRefRace()));
                labelDurabilityOrHP.setText("HP : " + card.getHealth());
                break;
            case "Weapon":
                labelAttack.setText("Attaque : " + card.getAttack());
                labelDurabilityOrHP.setText("Durabilité : " + card.getDurability());
                labelRace.setVisible(false);
                break;
            case "Spell":
                labelDurabilityOrHP.setVisible(false);
                labelAttack.setVisible(false);
                labelRace.setVisible(false);
                break;
            case "Hero":
                labelDurabilityOrHP.setText("HP : " + card.getHealth());
                labelAttack.setText("Attaque : " + card.getAttack());
                labelManaCost.setVisible(false);
                labelArtist.setVisible(false);
                labelAttack.setVisible(false);
                labelRace.setVisible(false);
                break;
        }
    }

}
