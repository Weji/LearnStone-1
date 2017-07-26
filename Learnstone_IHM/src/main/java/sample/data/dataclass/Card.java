package sample.data.dataclass;

/**
 * Created by Morgadow on 29/06/2017.
 */
public class Card {
    private int idCard;
    private String name;
    private String text;
    private int attack;
    private int health;
    private int manaCost;
    private String artist;
    private int durability;
    private int idRefClass;
    private int idRefCardsSet;
    private int idRefType;
    private int idRefRace;
    private int idRefRarity;
    private String img;
    private String imgGold;

    public Card(int idCardInput, String nameInput,
                String textInput, int attackInput,
                int healthInput, int manaCostInput,
                String artistInput, int durabilityInput,
                int idRefClassInput, int idRefCardsSetInput,
                int idRefTypeInput, int idRefRaceInput,
                int idRefRarityInput,
                String imgGoldInput){

        this.idCard = idCardInput;
        this.name = nameInput;
        this.text = textInput;
        this.attack = attackInput;
        this.health = healthInput;
        this.manaCost = manaCostInput;
        this.artist = artistInput;
        this.durability = durabilityInput;
        this.idRefClass = idRefClassInput;
        this.idRefCardsSet = idRefCardsSetInput;
        this.idRefRace = idRefRaceInput;
        this.idRefType = idRefTypeInput;
        this.idRefRarity = idRefRarityInput;
        this.imgGold = imgGoldInput;
    }
    public Card(int idCardInput, String imgInput){
        this.idCard = idCardInput;
        this.img = imgInput;
    }

    public Card() {

    }

    public int getAttack() {
        return attack;
    }

    public String getName() {
        return name;
    }

    public int getDurability() {
        return durability;
    }

    public int getHealth() {
        return health;
    }

    public int getIdRefCardsSet() {
        return idRefCardsSet;
    }

    public int getIdCard() {
        return idCard;
    }

    public int getIdRefClass() {
        return idRefClass;
    }

    public int getIdRefRace() {
        return idRefRace;
    }

    public int getIdRefRarity() {
        return idRefRarity;
    }

    public int getIdRefType() {
        return idRefType;
    }

    public int getManaCost() {
        return manaCost;
    }

    public String getArtist() {
        return artist;
    }

    public String getImgGold() {
        return imgGold;
    }

    public String getImg() {
        return img;
    }

    public String getText() {
        return text;
    }

    @Override
    public String toString() {
        return "Card{" +
                "idCard=" + idCard +
                ", name='" + name + '\'' +
                ", text='" + text + '\'' +
                ", attack=" + attack +
                ", health=" + health +
                ", manaCost=" + manaCost +
                ", artist='" + artist + '\'' +
                ", durability=" + durability +
                ", idRefClass=" + idRefClass +
                ", idRefCardsSet=" + idRefCardsSet +
                ", idRefType=" + idRefType +
                ", idRefRace=" + idRefRace +
                ", idRefRarity=" + idRefRarity +
                ", img='" + img + '\'' +
                ", imgGold='" + imgGold + '\'' +
                '}';
    }
}
