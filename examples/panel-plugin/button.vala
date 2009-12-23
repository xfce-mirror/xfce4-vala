using Xfce;

public class ButtonPlugin : Xfce.PanelPlugin {
	private Gtk.Button button;

	/* The constructor is never called, but since Vala 0.7.8 prints a warning if the sub-classed
	 * class doesn't provide a public constructor and tries to chain up to it, it is possible to
	 * chain directly to Object. This only avoids the warning to be printed.
	 */
	public ButtonPlugin () {
		GLib.Object ();
	}

	public override void @construct () {
		button = new Gtk.Button.with_label ("Hello World!");
		add (button);
		button.show ();

		add_action_widget (button);

		save.connect (() => { debug ("save yourself"); });
		free_data.connect (() => { debug ("free yourself"); });
		size_changed.connect (() => { debug ("panel size changed"); });

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
