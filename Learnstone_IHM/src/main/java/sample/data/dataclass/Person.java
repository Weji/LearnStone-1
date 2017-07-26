package sample.data.dataclass;

/**
 * Created by Morgadow on 22/06/2017.
 */
public class Person {
    private int idPerson;
    private String firstname;
    private String lastname;
    private String username;
    private String password;
    private String mail;
    private int nbGoodAnswer;
    private int nbQuestionAnswered;
    private int idRefRole;

    @Override
    public String toString() {
        return "Person{" +
                "idPerson=" + idPerson +
                ", firstname='" + firstname + '\'' +
                ", lastname='" + lastname + '\'' +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", mail='" + mail + '\'' +
                ", nbGoodAnswer=" + nbGoodAnswer +
                ", nbQuestionAnswered=" + nbQuestionAnswered +
                ", idRefRole=" + idRefRole +
                '}';
    }

    public Person(String firstname, String lastname,
                  String username, String password,
                  String mail, int nbGoodAnswer,
                  int nbQuestionAnswered, int idRefRole) {
        this.firstname = firstname;
        this.lastname = lastname;
        this.username = username;
        this.password = password;
        this.mail = mail;
        this.nbGoodAnswer = nbGoodAnswer;
        this.nbQuestionAnswered = nbQuestionAnswered;
        this.idRefRole = idRefRole;
    }

    public int getIdPerson() {
        return idPerson;
    }

    public void setIdPerson(int idPerson) {
        this.idPerson = idPerson;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public int getNbGoodAnswer() {
        return nbGoodAnswer;
    }

    public void setNbGoodAnswer(int nbGoodAnswer) {
        this.nbGoodAnswer = nbGoodAnswer;
    }

    public int getNbQuestionAnswered() {
        return nbQuestionAnswered;
    }

    public void setNbQuestionAnswered(int nbQuestionAnswered) {
        this.nbQuestionAnswered = nbQuestionAnswered;
    }

    public int getIdRefRole() {
        return idRefRole;
    }

    public void setIdRefRole(int idRefRole) {
        this.idRefRole = idRefRole;
    }
}

