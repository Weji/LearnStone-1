package sample.annotation;

/**
 * Created by Morgadow on 16/07/2017.
 */

import java.lang.annotation.Documented;
import java.lang.annotation.Inherited;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@Documented
@Retention(RetentionPolicy.SOURCE)
@Inherited
public @interface Report {
    LEVEL level() default LEVEL.BUG;
    String author() default "William";
    String recipient() default "All";
    String commentary();
}