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
	}
}

[ModuleInit]
public Type xfce_panel_module_init (TypeModule module) {
	return typeof (ButtonPlugin);
}
