package sample.plugin;

/**
 * Created by Paradoxa on 18/03/2017.
 */
public interface IPlugin {
    IPluginDescriptor getDescriptor();
    Class loadStartupClass();
}
