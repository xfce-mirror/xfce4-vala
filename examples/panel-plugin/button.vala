using Xfce;

public class ButtonPlugin : Xfce.PanelPlugin {
	private Gtk.Button button;

	public ButtonPlugin () {
		GLib.Object ();
		debug ("constructor");
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
