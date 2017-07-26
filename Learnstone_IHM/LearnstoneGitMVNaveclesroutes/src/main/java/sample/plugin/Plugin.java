package sample.plugin;

import com.thoughtworks.xstream.XStream;

import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLClassLoader;

/**
 * Created by Paradoxa on 18/03/2017.
 */
public class Plugin implements IPlugin {
    String jarFilePath;
    IPluginDescriptor descriptor;
    boolean loaded = false;

    public Plugin(String jarFilePath) {
        this.jarFilePath = jarFilePath;
    }

    public void load() {
        loaded = true;
        try {
            URL url = new URL("jar:" + jarFilePath + "!/plugin.xml");
            InputStream is = url.openStream();
            XStream xstream = new XStream();
            xstream.processAnnotations(PluginDescriptor.class);
            this.descriptor = (PluginDescriptor) xstream.fromXML(is);
        } catch (MalformedURLException e) {
            throw new PluginException(e);
        } catch (IOException e) {
            throw new PluginException(e);
        }

    }

    public IPluginDescriptor getDescriptor() {
        if (!loaded) {
            throw new PluginException("plugin not loaded");
        }
        return descriptor;
    }

    public Class loadStartupClass() {
        try {
            URL[] urls = { new URL("jar:" + jarFilePath+"!/") };
            URLClassLoader urlClassLoader = new URLClassLoader(urls);
            return urlClassLoader.loadClass(getDescriptor().getStartupClass());
        } catch (MalformedURLException e) {
            throw new PluginException(e);
        } catch (ClassNotFoundException e) {
            throw new PluginException(e);
        }
    }
}
