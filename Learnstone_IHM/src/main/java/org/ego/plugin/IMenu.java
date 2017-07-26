package org.ego.plugin;

import java.io.IOException;

/**
 * Created by Morgadow on 25/07/2017.
 */
public interface IMenu {
    String getName();
    void showPage() throws IOException;
    void checkFxml();
}
