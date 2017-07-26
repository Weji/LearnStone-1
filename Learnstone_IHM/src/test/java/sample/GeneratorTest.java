package sample;

import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Label;
import javafx.stage.Stage;
import org.junit.Test;

import java.io.IOException;
import java.net.URL;
import java.sql.SQLException;
import static org.assertj.core.api.Java6Assertions.assertThat;
/**
 * Created by Morgadow on 16/07/2017.
 */
public class GeneratorTest {
    @Test
    public void should_create_the_scene_LoginScreenPage() throws SQLException, IOException, ClassNotFoundException {
        String nameOfScene = "LoginScreenPage";
        assertThat(getClass().getClassLoader().getResource("fxml_page/" + nameOfScene + ".fxml")).isNotEqualTo(null);
    }

    @Test
    public void should_create_the_scene_MenuCardList() throws SQLException, IOException, ClassNotFoundException {
        String nameOfScene = "MenuCardList";
        assertThat(getClass().getClassLoader().getResource("fxml_page/" + nameOfScene + ".fxml")).isNotEqualTo(null);
    }

    @Test
    public void should_create_the_scene_MenuHome() throws SQLException, IOException, ClassNotFoundException {
        String nameOfScene = "MenuHome";
        assertThat(getClass().getClassLoader().getResource("fxml_page/" + nameOfScene + ".fxml")).isNotEqualTo(null);
    }

    @Test
    public void should_create_the_scene_MenuLessons() throws SQLException, IOException, ClassNotFoundException {
        String nameOfScene = "MenuLessons";
        assertThat(getClass().getClassLoader().getResource("fxml_page/" + nameOfScene + ".fxml")).isNotEqualTo(null);
    }

    @Test
    public void should_create_the_scene_MenuLibrary() throws SQLException, IOException, ClassNotFoundException {
        String nameOfScene = "MenuLibrary";
        assertThat(getClass().getClassLoader().getResource("fxml_page/" + nameOfScene + ".fxml")).isNotEqualTo(null);
    }

    @Test
    public void should_create_the_scene_MenuPresentationOfTheGame() throws SQLException, IOException, ClassNotFoundException {
        String nameOfScene = "MenuPresentationOfTheGame";
        assertThat(getClass().getClassLoader().getResource("fxml_page/" + nameOfScene + ".fxml")).isNotEqualTo(null);

    }

    @Test
    public void should_create_the_scene_MenuQuizz() throws SQLException, IOException, ClassNotFoundException {
        String nameOfScene = "MenuQuizz";
        assertThat(getClass().getClassLoader().getResource("fxml_page/" + nameOfScene + ".fxml")).isNotEqualTo(null);;
    }

    @Test
    public void should_create_the_scene_StatsOfThePlayer() throws SQLException, IOException, ClassNotFoundException {
        String nameOfScene = "MenuStatsOfThePlayer";
        assertThat(getClass().getClassLoader().getResource("fxml_page/" + nameOfScene + ".fxml")).isNotEqualTo(null);
    }

    @Test
    public void should_create_the_scene_StreamTwitchTV() throws SQLException, IOException, ClassNotFoundException {
        String nameOfScene = "MenuStreamTwitchTV";
        assertThat(getClass().getClassLoader().getResource("fxml_page/" + nameOfScene + ".fxml")).isNotEqualTo(null);
    }

    @Test
    public void should_create_the_scene_WelcomePage() throws SQLException, IOException, ClassNotFoundException {
        String nameOfScene = "WelcomePage";
        assertThat(getClass().getClassLoader().getResource("fxml_page/" + nameOfScene + ".fxml")).isNotEqualTo(null);
    }
}