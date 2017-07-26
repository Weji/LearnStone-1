package sample;

import com.mashape.unirest.http.exceptions.UnirestException;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Label;
import javafx.scene.image.Image;
import javafx.stage.Stage;
import sample.controller.*;

import java.io.IOException;
import java.util.HashMap;

/**
 * Created by Morgadow on 14/06/2017.
 */

/**
 * this class is used to switch scene and setup a stage
 */
public class Generator {
    private final static String wsPassword = "FeNBGjzDG354@ofe*$32Rfsss4F";
    public Scene initScene(String nameOfFxml) throws IOException {
        Parent _parent = FXMLLoader.load(getClass().getClassLoader().getResource("fxml_page/" + nameOfFxml));
        Scene _scene = new Scene(_parent);
        return  _scene;
    }

    /**
     * Setup the window with the title and the icon logo
     * @return stage created and modified
     */
    public Stage initStage() {
        Stage stage = new Stage();
        Image icon = new Image(String.valueOf(getClass().getClassLoader().getResource("images/logo.png")));
        stage.getIcons().add(icon);
        stage.setTitle("LearnStone");
        stage.setResizable(false);
        return stage;
    }

    /**
     * This Function is used to change scene
     * @param nameOfScene name of the scene in the project folder
     * @param stage stage where the new scene will appear
     * @param labelIdUser the id of the person connected to pass to next scene
     * @throws IOException if the fxml file is not founded
     * @throws ClassNotFoundException If the controller of the next scene is not founded
     */
    public void switchScene(String nameOfScene, Stage stage, Label labelIdUser) throws IOException, UnirestException {
        Parent parent;
        FXMLLoader loader = new FXMLLoader(getClass().getClassLoader().getResource("fxml_page/" + nameOfScene + ".fxml"));
        parent = (Parent) loader.load();
        Scene scene = new Scene(parent);
        stage.setScene(scene);

        //send the id_user to the correct page called
        switch (nameOfScene){
            case "MenuHome":
                MenuHomeController menuHomeController = loader.getController();
                menuHomeController.prepareData(Integer.parseInt(labelIdUser.getText()));
                break;
            case "MenuPresentationOfTheGame":
                MenuPresentationOfTheGameController menuPresentationOfTheGameController = loader.getController();
                menuPresentationOfTheGameController.prepareData(Integer.parseInt(labelIdUser.getText()));
                break;
            case "MenuCardList":
                MenuCardListController menuCardListController = loader.getController();
                menuCardListController.prepareData(Integer.parseInt(labelIdUser.getText()));
                break;
            case "MenuLibrary":
                MenuLibraryController menuLibraryController = loader.getController();
                menuLibraryController.prepareData(Integer.parseInt(labelIdUser.getText()));
                break;
            case "MenuLessons":
                MenuLessonsController menuLessonsController = loader.getController();
                menuLessonsController.prepareData(Integer.parseInt(labelIdUser.getText()));
                break;
            case "MenuQuizz":
                MenuQuizzController menuQuizzController = loader.getController();
                menuQuizzController.prepareData(Integer.parseInt(labelIdUser.getText()));
                break;
            case "MenuQuizzFinished":
                MenuQuizzControllerFinished menuQuizzControllerFinished = loader.getController();
                menuQuizzControllerFinished.prepareData(Integer.parseInt(labelIdUser.getText()));
                break;
            case "MenuStatsOfThePlayer":
                MenuStatsOfThePlayerController menuStatsOfThePlayerController = loader.getController();
                menuStatsOfThePlayerController.prepareData(Integer.parseInt(labelIdUser.getText()));
                break;
            case "LoginScreenPage":
//                LoginScreenController LoginScreenController = loader.getController();
                break;
            default:
                System.out.println("Page innexistant...");
        }
        stage.show();
    }

    public static HashMap<String,Object> prepareHashMap(Object... args){
        if((args.length%2) == 0){
            HashMap<String,Object> listParams = new HashMap<>();
            for(int i = 0; i < args.length; i = i+2){

                if(args[i+1].equals(0)){
                    args[i+1] = "";
                }
                if(args[i+1].equals(true)){
                    args[i+1] = 1;
                }
                if(args[i+1].equals(false)){
                    args[i+1] = 0;
                }
                if(!(args[i+1].equals(""))){
                    listParams.put((String)args[i], args[i+1]);
//                    System.out.println("key : " + args[i] + " value : " + args[i+1]);
                }

            }
            listParams.put("wsPassword", wsPassword);
            System.out.println(" ");
            return listParams;
        } else if(args.length == 0){
            HashMap<String,Object> listParams = new HashMap<>();
            listParams.put("wsPassword", wsPassword);
            return listParams;

        } else {
            // one value is missing
            return null;
        }
    }
}
