package sample.plugin;

import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;

/**
 * Created by Paradoxa on 18/03/2017.
 */
@XStreamAlias("descriptor")
public class PluginDescriptor implements IPluginDescriptor {

    @XStreamAsAttribute
    String version;

    @XStreamAsAttribute
    String startupClass;

    public PluginDescriptor() {
    }

    public String getVersion() {
        return version;
    }

    public void setVersion(String version) {
        this.version = version;
    }

    public String getStartupClass() {
        return startupClass;
    }

    public void setStartupClass(String startupClass) {
        this.startupClass = startupClass;
    }

}
