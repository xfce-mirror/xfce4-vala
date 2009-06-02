using Xfce;
using Gtk;

public class TestPlugin : GLib.Object {

    private Xfce.PanelPlugin panel_plugin;
    private Gtk.Button button;

    public TestPlugin (Xfce.PanelPlugin panel_plugin) {
        this.panel_plugin = panel_plugin;
	button = Xfce.create_panel_button ();
        button.set_label ("Hello World!");
        button.show ();
        panel_plugin.add (button);
        panel_plugin.add_action_widget (button);

        button.clicked.connect ((button) => {
                var dialog = new Gtk.MessageDialog ((Gtk.Window)button.get_toplevel (),
                        Gtk.DialogFlags.DESTROY_WITH_PARENT, Gtk.MessageType.INFO, Gtk.ButtonsType.OK,
                        "Hello World!");
                dialog.run ();
                dialog.destroy ();
            });
    }

    static TestPlugin plugin;
    public static void register (Xfce.PanelPlugin panel_plugin) {
        plugin = new TestPlugin (panel_plugin);
        panel_plugin.size_changed += (panel_plugin, size) => {
            panel_plugin.set_size_request (-1, -1);
        };
    }

    public static int main (string[] args) {
        return Xfce.PanelPluginRegisterExternal (ref args, TestPlugin.register);
    }
}
