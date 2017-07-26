package sample.annotation;

/**
 * Created by Morgadow on 16/07/2017.
 */
public enum LEVEL {
    MINOR("Minor action", 0),
    AMELIORATION("Can be upgraded", 1),
    BUG("Important bug to fix", 2),
    CRITICAL("Critical bug to fix ASAP !", 3);

    private int level = -1;
    private String description;
    LEVEL(String desc, int lev){
        description = desc;
        level = lev;
    }

    public String toString(){
        return description;
    }

    public int getLevel(){
        return level;
    }
}
