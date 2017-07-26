package sample.plugin;

/**
 * Created by Paradoxa on 18/03/2017.
 */
public class PluginException extends RuntimeException {
    public PluginException(Exception root) {
        super(root);
    }
    public PluginException(String message) {
        super(message);
    }
}
