package sample.resource.data;

/**
 * Created by Morgadow on 22/06/2017.
 */
public class User {
    private int idUsers;
    private String firstname;
    private String lastname;
    private String username;
    private String password;
    private String mailAdresse;
    private int nbGoodAnswer;
    private int nbQuestionAnswered;
    private boolean isAdmin;

    public User(String usernameinput,
                String passwordinput ,
                String mailAdresseInput,
                String firstnameinput,
                String lastnameinput,
                Integer nbGoodAnswerInput,
                Integer nbQuestionAnsweredInput,
                boolean isAdminInput)
    {
        this.username = usernameinput;
        this.password = passwordinput;
        this.mailAdresse = mailAdresseInput;
        this.firstname = firstnameinput;
        this.lastname = lastnameinput;
        this.nbGoodAnswer = nbGoodAnswerInput;
        this.nbQuestionAnswered = nbQuestionAnsweredInput;
        this.isAdmin = isAdminInput;
    }

    public String getUsername() {
        return username;
    }

    public int getNbGoodAnswer() {
        return nbGoodAnswer;
    }

    public int getNbQuestionAnswered() {
        return nbQuestionAnswered;
    }

    public String getLastname() {
        return lastname;
    }

    public String getMailAdresse() {
        return mailAdresse;
    }

    public String getPassword() {
        return password;
    }

    public String getFirstname() {
        return firstname;
    }

    public boolean getIsAdmin(){
        return isAdmin;
    }

    public String toString(){
        return "First name :" + this.firstname + " Last name : " + this.lastname;
    }
}
