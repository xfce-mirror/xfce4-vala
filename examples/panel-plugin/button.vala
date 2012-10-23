using Xfce;

public class ButtonPlugin : Xfce.PanelPlugin {
	private Gtk.Button button;

	public override void @construct () {
		button = new Gtk.Button.with_label ("Hello World!");
		add (button);
		button.show ();

		add_action_widget (button);

		save.connect (() => { message ("save yourself"); });
		free_data.connect (() => { message ("free yourself"); });
		size_changed.connect (() => { message ("panel size changed"); return false; });

		menu_show_about ();
		about.connect (() => {
				Gtk.show_about_dialog (null,
					"program-name", "Button",
					"comments", "Test plugin for the Xfce 4.7 Panel",
					null);
			});

		destroy.connect (() => { Gtk.main_quit (); });
	}
}

[ModuleInit]
public Type xfce_panel_module_init (TypeModule module) {
	return typeof (ButtonPlugin);
}
