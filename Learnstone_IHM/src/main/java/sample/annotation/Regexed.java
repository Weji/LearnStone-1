package sample.annotation;

import java.lang.annotation.*;

/**
 * Created by Morgadow on 16/07/2017.
 */

@Documented
@Target(ElementType.LOCAL_VARIABLE)
@Retention(RetentionPolicy.RUNTIME)
public @interface Regexed {
    String regex();
}
