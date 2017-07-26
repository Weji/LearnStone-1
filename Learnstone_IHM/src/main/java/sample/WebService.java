package sample;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.mashape.unirest.http.HttpResponse;
import com.mashape.unirest.http.JsonNode;
import com.mashape.unirest.http.Unirest;
import com.mashape.unirest.http.exceptions.UnirestException;
import org.json.JSONArray;
import org.json.JSONObject;
import sample.annotation.LEVEL;
import sample.annotation.Report;
import sample.annotation.Reports;
import sample.data.dataclass.Card;
import sample.data.dataclass.Definition;
import sample.data.dataclass.Lesson;
import sample.data.dataclass.Person;
import sample.data.dataclass.questions.Answer;
import sample.data.dataclass.questions.Question;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.ArrayList;
import java.util.HashMap;

import static sample.Generator.prepareHashMap;


/**
 * This class goal's is to use the different endpoints of the <b>webservice</b>.
 * It have different method with specified endpoint call,
 *
 * @author William Morgado
 */
public class WebService {

    private Gson gson = new GsonBuilder().create();
    private String ipServ = "localhost";
    private String portNodeJs = ":8080";
    private String urlNodeJs = "http://" + ipServ + portNodeJs + "/fclient";
    private HttpResponse<JsonNode> response = null;
    private JSONArray jsonArray = null;
    private HashMap<String, Object> listParams;
    private JSONObject actualJsonLine = null;

    /**
     * @param ipServ this parameter correspond to the url of the server where all the endpoints are located
     * @param port   this parameter correspond to the port used by the Nodejs webservice
     */
    @Reports(
            {
                    @Report(
                            level = LEVEL.AMELIORATION,
                            commentary = "In stead of using sql request, we directly call our ws endpoints to get acces to the db"
                    ),
                    @Report(
                            level = LEVEL.AMELIORATION,
                            commentary = "This gonna be resolved by the webservice himself"
                    )
            }
    )
    public WebService(String ipServ, int port) {
        this.ipServ = ipServ;
        this.portNodeJs = ":" + port;
        this.urlNodeJs = "http://" + this.ipServ + this.portNodeJs + "/fclient";
    }

    public WebService() {
        this.ipServ = "10.33.2.188";
        this.portNodeJs = ":" + 8080;
        this.urlNodeJs = "http://" + this.ipServ + this.portNodeJs + "/fclient";
    }

    /**
     * @return
     * @deprecated it's the webservice job to test the connection with the db
     */
    public boolean testConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection connexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/",
                    "root", "");
            connexion.close();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public void profilUpdater(int idPerson, boolean isAnswerWell) throws UnirestException {
        if (isAnswerWell){
            listParams = prepareHashMap("idPerson", idPerson, "isAnswerWell", isAnswerWell);
        } else {
            listParams = prepareHashMap("idPerson", idPerson);
        }
        response = Unirest.post(urlNodeJs + "/profilUpdater").fields(listParams).asJson();
        jsonArray = response.getBody().getArray();
        if (jsonArray.getJSONObject(0).has("login")) {
            System.out.println(jsonArray.getJSONObject(0).has("login"));
        } else if(jsonArray.getJSONObject(0).has("result")) {
            System.out.println("profilUpdater : result ");
            System.out.println(jsonArray.getJSONObject(0).has("result"));
        }
    }

    public void questionLog(int idPerson, int idQuestion, boolean isAnswerWell) throws UnirestException {
        listParams = prepareHashMap("idPerson", idPerson, "idQuestion", idQuestion, "isAnswerWell", isAnswerWell);
        response = Unirest.post(urlNodeJs + "/questionLog").fields(listParams).asJson();
        jsonArray = response.getBody().getArray();
        if (jsonArray.getJSONObject(0).has("login")) {
            System.out.println("questionLog wrong password");
        } else {
            System.out.println(jsonArray.getJSONObject(0).has("result"));
        }
    }

    public Person getPerson(int idPerson) throws UnirestException {
        listParams = prepareHashMap("idPerson", idPerson);
        response = Unirest.post(urlNodeJs + "/getPerson").fields(listParams).asJson();
        jsonArray = response.getBody().getArray();
        actualJsonLine = jsonArray.getJSONObject(0);
        if (actualJsonLine.has("login")) {
            return null;
        } else if (actualJsonLine.has("result")) {
            return null;
        } else {
            Person person = gson.fromJson(String.valueOf(actualJsonLine), Person.class);
            return person;
        }
    }

    public int getIdPerson(String username, String password) throws UnirestException {
        listParams = prepareHashMap("username", username, "password", password);
        response = Unirest.post(urlNodeJs + "/getIdPerson").fields(listParams).asJson();
        jsonArray = response.getBody().getArray();
        actualJsonLine = jsonArray.getJSONObject(0);
        if (actualJsonLine.has("login")) {
            return 0;
        } else if (actualJsonLine.has("result")) {
            return 0;
        } else {
            return actualJsonLine.getInt("idPerson");
        }
    }

    public boolean createPerson(Person person) throws UnirestException {
        listParams = prepareHashMap("firstname", person.getFirstname(),
                "lastname", person.getLastname(),
                "idRefRole", person.getIdRefRole(),
                "username", person.getUsername(),
                "password", person.getPassword(),
                "mail", person.getMail());
        response = Unirest.post(urlNodeJs + "/createPerson").fields(listParams).asJson();
        if (response.getBody().getObject().has("login")) {
            return response.getBody().getObject().getBoolean("login");
        } else {
            return response.getBody().getObject().getBoolean("result");
        }
    }

    public boolean isRealUsername(String userName) throws UnirestException {

        listParams = prepareHashMap("username", userName);
        response = Unirest.post(urlNodeJs + "/isRealUsername").fields(listParams).asJson();
        jsonArray = response.getBody().getArray();
        actualJsonLine = jsonArray.getJSONObject(0);
        if (actualJsonLine.has("login")) {
            return actualJsonLine.getBoolean("login");
        } else {
            return actualJsonLine.getBoolean("result");
        }
    }

    public int getMinIdQuestion() throws UnirestException {
        listParams = prepareHashMap();
        response = Unirest.post(urlNodeJs + "/getMinIdQuestion").fields(listParams).asJson();
        jsonArray = response.getBody().getArray();
        actualJsonLine = jsonArray.getJSONObject(0);
        if (actualJsonLine.has("login")) {
            return 0;
        } else if (actualJsonLine.has("result")) {
            return 0;
        } else {
            return actualJsonLine.getInt("min(idQuestion)");
        }
    }

    public int getMaxIdQuestion() throws UnirestException {
        listParams = prepareHashMap();
        response = Unirest.post(urlNodeJs + "/getMaxIdQuestion").fields(listParams).asJson();
        jsonArray = response.getBody().getArray();
        actualJsonLine = jsonArray.getJSONObject(0);
        if (actualJsonLine.has("login")) {
            return 0;
        } else if (actualJsonLine.has("result")) {
            return 0;
        } else {
            return actualJsonLine.getInt("max(idQuestion)");
        }

    }

    public Question getQuestion(int idQuestion) throws UnirestException {
        listParams = prepareHashMap("idQuestion", idQuestion);
        response = Unirest.post(urlNodeJs + "/getQuestion").fields(listParams).asJson();
        jsonArray = response.getBody().getArray();
        actualJsonLine = jsonArray.getJSONObject(0);
        if (actualJsonLine.has("login")) {
            return null;
        } else if (actualJsonLine.has("result")) {
            return null;
        } else {
            Question question = gson.fromJson(String.valueOf(actualJsonLine), Question.class);
            return question;
        }
    }

    public ArrayList<Integer> getListNumberLesson() throws UnirestException {
        listParams = prepareHashMap();
        response = Unirest.post(urlNodeJs + "/getListNumberLesson").fields(listParams).asJson();
        jsonArray = response.getBody().getArray();
        actualJsonLine = jsonArray.getJSONObject(0);

        if (actualJsonLine.has("login")) {
            return null;
        } else if (actualJsonLine.has("result")) {
            return null;
        } else {
            ArrayList<Integer> listLesson = new ArrayList<>();
            for (int i = 0; i < jsonArray.length(); i++) {
                listLesson.add(jsonArray.getJSONObject(i).getInt("numberLesson"));
            }
            return listLesson;
        }
    }

    public ArrayList<Answer> getAnswerFromQuestion(int idQuestion) throws UnirestException {
        listParams = prepareHashMap("idQuestion", idQuestion);
        response = Unirest.post(urlNodeJs + "/getAnswerFromQuestion").fields(listParams).asJson();
        jsonArray = response.getBody().getArray();
        actualJsonLine = jsonArray.getJSONObject(0);
        if (actualJsonLine.has("login")) {
            return null;
        } else if (actualJsonLine.has("result")) {
            return null;
        } else {
            ArrayList<Answer> listAnswer = new ArrayList<>();
            for (int i = 0; i < jsonArray.length(); i++) {
                listAnswer.add(gson.fromJson(String.valueOf(jsonArray.getJSONObject(i)), Answer.class));
            }
            return listAnswer;
        }
    }

    public Lesson getLesson(int numberLesson) throws UnirestException {

        listParams = prepareHashMap("numberLesson", numberLesson);
        response = Unirest.post(urlNodeJs + "/getLesson").fields(listParams).asJson();
        jsonArray = response.getBody().getArray();
        actualJsonLine = jsonArray.getJSONObject(0);
        if (actualJsonLine.has("login")) {
            return null;
        } else if (actualJsonLine.has("result")) {
            return null;
        } else {
            Lesson lesson = gson.fromJson(String.valueOf(actualJsonLine), Lesson.class);
            return lesson;
        }
    }

    @Report(
            level = LEVEL.AMELIORATION,
            recipient = "Steven",
            commentary = "the endpoints should return one line, with the number of the last lesson readed"
    )
    public int getLastReadLesson(int idPerson) throws UnirestException {
        listParams = prepareHashMap("idPerson", idPerson);
        response = Unirest.post(urlNodeJs + "/getLastReadLesson").fields(listParams).asJson();
        jsonArray = response.getBody().getArray();
        actualJsonLine = jsonArray.getJSONObject(0);
        if (actualJsonLine.has("login")) {
            return 1;
        } else if (actualJsonLine.has("result")) {
            return 1;
        } else {
            int numberLesson = 0;
            for (int i = 0; i < jsonArray.length(); i++) {
                numberLesson = jsonArray.getJSONObject(i).getInt("numberLesson");
            }
            return numberLesson;
        }
    }

    public boolean lessonLog(int idPerson, int idLesson) throws UnirestException {
        listParams = prepareHashMap("idPerson", idPerson, "idLesson", idLesson);
        response = Unirest.post(urlNodeJs + "/lessonLog").fields(listParams).asJson();
        jsonArray = response.getBody().getArray();
        actualJsonLine = jsonArray.getJSONObject(0);
        if (actualJsonLine.has("login")) {
            return actualJsonLine.getBoolean("login");
        } else {
            return actualJsonLine.getBoolean("result");
        }
    }

    public Card getCard(int idCard) throws UnirestException {
        listParams = prepareHashMap("idCard", idCard);
        response = Unirest.post(urlNodeJs + "/getCard").fields(listParams).asJson();
        jsonArray = response.getBody().getArray();
        actualJsonLine = jsonArray.getJSONObject(0);
        Card card = new Card();
        if (actualJsonLine.has("login")) {
            return card;
        } else if (actualJsonLine.has("result")) {
            return card;
        } else {
            card = gson.fromJson(String.valueOf(actualJsonLine), Card.class);
            return card;
        }

    }

    public String getLblCardsSet(int idRefCardsSet) throws UnirestException {
        listParams = prepareHashMap("idRefCardsSet", idRefCardsSet);
        response = Unirest.post(urlNodeJs + "/getLblCardsSet").fields(listParams).asJson();
        jsonArray = response.getBody().getArray();
        actualJsonLine = jsonArray.getJSONObject(0);
        if (actualJsonLine.has("login")) {
            return null;
        } else if (actualJsonLine.has("result")) {
            return null;
        } else {
            String label = actualJsonLine.getString("lblCardsSet");
            return label;
        }
    }

    public String getLblClass(int idRefClass) throws UnirestException {
        listParams = prepareHashMap("idRefClass", idRefClass);
        response = Unirest.post(urlNodeJs + "/getLblClass").fields(listParams).asJson();
        jsonArray = response.getBody().getArray();
        actualJsonLine = jsonArray.getJSONObject(0);

        if (actualJsonLine.has("login")) {
            return null;
        } else if (actualJsonLine.has("result")) {
            return null;
        } else {
            String label = actualJsonLine.getString("lblClass");
            return label;
        }
    }

    public String getLblRace(int idRefRace) throws UnirestException {
        listParams = prepareHashMap("idRefRace", idRefRace);
        response = Unirest.post(urlNodeJs + "/getLblRace").fields(listParams).asJson();
        jsonArray = response.getBody().getArray();
        actualJsonLine = jsonArray.getJSONObject(0);

        if (actualJsonLine.has("login")) {
            return null;
        } else if (actualJsonLine.has("result")) {
            return null;
        } else {
            String label = actualJsonLine.getString("lblRace");
            return label;
        }
    }

    public String getLblRarity(int idRefRarity) throws UnirestException {
        listParams = prepareHashMap("idRefRarity", idRefRarity);
        response = Unirest.post(urlNodeJs + "/getLblRarity").fields(listParams).asJson();
        jsonArray = response.getBody().getArray();
        actualJsonLine = jsonArray.getJSONObject(0);
        if (actualJsonLine.has("login")) {
            return null;
        } else if (actualJsonLine.has("result")) {
            return null;
        } else {
            String label = actualJsonLine.getString("lblRarity");
            return label;
        }
    }

    @Deprecated
    public String getLblRole(int idRefRole) throws UnirestException {
        listParams = prepareHashMap("idRefRole", idRefRole);
        response = Unirest.post(urlNodeJs + "/getLblRole").fields(listParams).asJson();
        jsonArray = response.getBody().getArray();
        actualJsonLine = jsonArray.getJSONObject(0);

        if (actualJsonLine.has("login")) {
            return null;
        } else if (actualJsonLine.has("result")) {
            return null;
        } else {
            String label = actualJsonLine.getString("lblRole");
            return label;
        }
    }

    public String getLblType(int idRefType) throws UnirestException {
        listParams = prepareHashMap("idRefType", idRefType);
        response = Unirest.post(urlNodeJs + "/getLblType").fields(listParams).asJson();
        jsonArray = response.getBody().getArray();
        actualJsonLine = jsonArray.getJSONObject(0);

        if (actualJsonLine.has("login")) {
            return null;
        } else if (actualJsonLine.has("result")) {
            return null;
        } else {
            String label = actualJsonLine.getString("lblType");
            return label;
        }
    }

    @Report(
            level = LEVEL.CRITICAL,
            commentary = "waiting for the endpoint fix"
    )
    public ArrayList<String> getAllLblRarity() throws UnirestException {
        listParams = prepareHashMap();
        response = Unirest.post(urlNodeJs + "/getAllLblRarity").fields(listParams).asJson();
        jsonArray = response.getBody().getArray();
        actualJsonLine = jsonArray.getJSONObject(0);

        if (actualJsonLine.has("login")) {
            return null;
        } else if (actualJsonLine.has("result")) {
            return null;
        } else {
            ArrayList<String> listLabel = new ArrayList<>();
            listLabel.add("");
            for (int i = 0; i < jsonArray.length(); i++) {
                listLabel.add(jsonArray.getJSONObject(i).getString("lblRarity"));
            }
            return listLabel;
        }
    }

    @Report(
            level = LEVEL.CRITICAL,
            commentary = "waiting for the endpoint fix"
    )
    public ArrayList<String> getAllLblClass() throws UnirestException {
        listParams = prepareHashMap();
        response = Unirest.post(urlNodeJs + "/getAllLblClass").fields(listParams).asJson();
        jsonArray = response.getBody().getArray();
        actualJsonLine = jsonArray.getJSONObject(0);

        if (actualJsonLine.has("login")) {
            return null;
        } else if (actualJsonLine.has("result")) {
            return null;
        } else {
            ArrayList<String> listLabel = new ArrayList<>();
            listLabel.add("");
            for (int i = 0; i < jsonArray.length(); i++) {
                listLabel.add(jsonArray.getJSONObject(i).getString("lblClass"));
            }
            return listLabel;
        }
    }

    public ArrayList<Card> getIdAndURLCard() throws UnirestException {
        listParams = prepareHashMap();
        response = Unirest.post(urlNodeJs + "/getIdAndURLCard").fields(listParams).asJson();
        jsonArray = response.getBody().getArray();
        actualJsonLine = jsonArray.getJSONObject(0);

        if (actualJsonLine.has("login")) {
            return null;
        } else if (actualJsonLine.has("result")) {
            return null;
        } else {
            ArrayList<Card> listCardShowcase = new ArrayList<>();
            for (int i = 0; i < jsonArray.length(); i++) {
                listCardShowcase.add(gson.fromJson(String.valueOf(jsonArray.getJSONObject(i)), Card.class));
            }
            return listCardShowcase;
        }
    }

    @Report(
            level = LEVEL.CRITICAL,
            commentary = "waiting for endpoint fix, which need also to work with empty value"
    )
    public ArrayList<Card> getFilteredCard(String name, String manaCost, int idRefRarity, int idRefClass) throws UnirestException {
        listParams = prepareHashMap("name", name, "manaCost", manaCost, "idRefRarity", idRefRarity, "idRefClass", idRefClass);
        response = Unirest.post(urlNodeJs + "/getFilteredCard").fields(listParams).asJson();
        jsonArray = response.getBody().getArray();
        actualJsonLine = jsonArray.getJSONObject(0);
        ArrayList<Card> listCardShowCase = new ArrayList<>();

        if (actualJsonLine.has("login")) {
            return listCardShowCase;
        } else if (actualJsonLine.has("result")) {
            return listCardShowCase;
        } else {
            for (int i = 0; i < jsonArray.length(); i++) {
                listCardShowCase.add(gson.fromJson(String.valueOf(jsonArray.getJSONObject(i)), Card.class));
            }
            return listCardShowCase;
        }
    }

    public ArrayList<Definition> getFilteredWord(char letter) throws UnirestException {
        // the endpoint treatment don't support char, so I must send it a String
        String letterString = String.valueOf(letter);
        listParams = prepareHashMap("letter", letterString);
        response = Unirest.post(urlNodeJs + "/getFilteredWord").fields(listParams).asJson();
        jsonArray = response.getBody().getArray();
        actualJsonLine = jsonArray.getJSONObject(0);
        ArrayList<Definition> listWord = new ArrayList<>();

        if (actualJsonLine.has("login")) {
            return listWord;
        } else if (actualJsonLine.has("result")) {
            return listWord;
        } else {
            for (int i = 0; i < jsonArray.length(); i++) {
                listWord.add(gson.fromJson(String.valueOf(jsonArray.getJSONObject(i)), Definition.class));
            }
            return listWord;
        }
    }
}

