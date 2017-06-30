package sample;

import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.image.Image;
import javafx.stage.Stage;

import java.io.IOException;
import java.net.URL;

/**
 * Created by Morgadow on 14/06/2017.
 */
public class    Generator {

//    private Parent _parent;
//    private Scene _scene;
//    private double width;
//    private double height;
//    public FXMLLoader fxmlLoader;

    /*  Constructor with Screen height and width needed to center the stage */
//    public Generator(double h, double w) {
//        this.height = h;
//        this.width = w;
//    }
//
//    public Generator() {
////        this.width = width;
////        this.height = height;
////        this.fxmlLoader = new FXMLLoader();
//    }

    public Scene initScene(URL path) throws IOException {
//        System.out.println("in initScene : " + path);
        Parent _parent = FXMLLoader.load(path);
        Scene _scene = new Scene(_parent);
        return  _scene;
//        if((this.width != 0)&&(this.height != 0 )){
//            Scene _scene = new Scene(_parent, this.width, this.height);
//            return _scene;
//        } else {
//            Scene _scene = new Scene(_parent);
//            return _scene;
//        }
    }

//    public FXMLLoader initFXMLoader(String nameFxmlFile) throws IOException{
//        System.out.println("in initFXMLoader : " + getClass().getResource(nameFxmlFile).openStream());
//        FXMLLoader fxmlLoader = new FXMLLoader(getClass().getResource(nameFxmlFile).openStream()));
//        return fxmlLoader;
//    }

    public Stage initStage() {
        Stage stage = new Stage();
        Image icon = new Image(String.valueOf(getClass().getResource("resource/images/logo.png")));
        stage.getIcons().add(icon);
        stage.setTitle("LearnStone");
        return stage;
    }


//    public double getWidth(){
//        return width;
//    }
//
//    public double getHeight(){
//        return height;
//    }
}
