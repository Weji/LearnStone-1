package sample.Controller;

import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.image.Image;

import javax.swing.text.html.ImageView;
import java.net.URL;
import java.util.ResourceBundle;

/**
 * Created by Morgadow on 21/06/2017.
 */
public class CardDetailsController implements Initializable {

    @FXML
    private ImageView imageViewCard;

    @FXML
    private ImageView imageViewGoldenCard;



    @Override
    public void initialize(URL location, ResourceBundle resources) {
        System.out.println(getClass().getResource("../resource/images/card_test/OG_216a.png"));
//        imageViewCard = new Image(getClass().getResource())
    }

}
