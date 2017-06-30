package sample.Controller.AtelierTest;

import javafx.event.Event;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.AnchorPane;
import javafx.scene.layout.VBox;

import java.net.URL;
import java.util.ResourceBundle;

/**
 * Created by Morgadow on 23/06/2017.
 */
public class MenuTestParent implements Initializable{

    @FXML
    public AnchorPane anchorPaneLeft;
    @FXML
    public VBox vboxLeft;
    @Override
    public void initialize(URL location, ResourceBundle resources) {
        System.out.println("Initialize of Parent");
//        vboxLeft.setOnMouseClicked(event -> {
//            System.out.println(SwitchSceneTo(event));
//        });

    }

    @FXML
    private void SwitchSceneTo() {
        Event event1 = new Event(Event.ANY);
        System.out.println(sourceFromEvent(event1));
    }


    private Object sourceFromEvent(Event event1) {
        return event1.getSource();
    }

}
