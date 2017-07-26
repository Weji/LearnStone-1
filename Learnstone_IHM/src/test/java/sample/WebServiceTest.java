package sample;

import org.junit.Test;
import org.junit.Before;
import org.junit.runner.RunWith;
import static org.assertj.core.api.Assertions.fail;
import static org.assertj.core.api.Java6Assertions.assertThat;
/**
 * Created by Morgadow on 16/07/2017.
 */
public class WebServiceTest {

    @Test
    public void should_return_true_if_connexion_is_success(){
        WebService webService = new WebService("localhost",8080);
        assertThat(webService.testConnection()).isEqualTo(true);
    }
}