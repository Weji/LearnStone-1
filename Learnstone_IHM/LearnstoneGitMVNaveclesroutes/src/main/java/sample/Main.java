package sample;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.text.Font;
import javafx.stage.Stage;
import sample.controller.LoginScreenController;

public class Main extends Application {
    public static void main(String[] args) {
        Application.launch(Main.class, args);
    }

    @Override
    public void start(Stage primaryStage) throws Exception {
//         set the Font for the application
        Font.loadFont(getClass().getClassLoader().getResource("stylesheets/fonts/Belwe-Medium.ttf").toExternalForm(), 12);
        Font.loadFont(getClass().getClassLoader().getResource("stylesheets/fonts/Belwe-Bold.ttf").toExternalForm(), 12);


        Generator generator = new Generator();
        primaryStage = generator.initStage();

        //load a FXMLoader object with scene path
        System.out.println(getClass().getClassLoader().getResource("fxml_page/LoginScreenPddsqage.fxml"));
        FXMLLoader loader = new FXMLLoader(getClass().getClassLoader().getResource("fxml_page/LoginScreenPage.fxml"));
        Parent parent = (Parent) loader.load();
        Scene scene = new Scene(parent);
        primaryStage.setScene(scene);
        LoginScreenController loginScreenController = loader.getController();
        loginScreenController.prepareData();
        primaryStage.show();

    }
}
