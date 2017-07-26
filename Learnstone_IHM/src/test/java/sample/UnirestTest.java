package sample;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import sample.data.dataclass.Person;

import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;

import static sample.Generator.prepareHashMap;

/**
 * Created by Morgadow on 20/07/2017.
 */
public class UnirestTest {

    /* TEST ENDPOINTS CODE
    =========================================================================
//         */
    String name = "name";
    String manaCost = "";
    Integer idRefRarity = 0;
    int idRefClass = 3;
    Object string = false;

    //        if(string.equals("")){
//            System.out.println("String vide");
//        }
//        if(string.equals(0)){
//            System.out.println("number vide");
//        }
//        switch (idRefClass.getClass())
    HashMap<String, Object> listParams = prepareHashMap("name", name, "manaCost", manaCost, "idRefRarity", idRefRarity, "idRefClass", idRefClass);

    Gson gson = new GsonBuilder().create();
    String username = "Neji";
    String wsPassword = "FeNBGjzDG354@ofe*$32Rfsss4F";

    //        HashMap<String, Object> listParams = prepareHashMap("wsPassword", wsPassword);
//        System.out.println(listParams.get("wsPassword"));
//        System.out.println(listParams.get("wsPassword").getClass());
////        System.out.println(listParams.get("username"));
////        System.out.println(listParams.get("username").getClass());
//        HttpResponse<JsonNode> response = Unirest.post("http://localhost/fclient/getMinIdQuestion").fields(listParams).asJson();
//        System.out.println(response.getBody());
    WebService webService = new WebService("localhost", 8080);
    //        System.out.println(webService.isRealUsername("Neji"));
    HashMap<String, Object> field = new HashMap<>();

}
