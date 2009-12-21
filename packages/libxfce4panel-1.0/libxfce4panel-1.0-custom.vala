namespace Xfce {
	public class PanelImage : Gtk.Widget {
		[CCode (has_construct_function=false)]
		public PanelImage ();
		[CCode (has_construct_function=false)]
		public PanelImage.from_pixbuf (Gdk.Pixbuf pixbuf);
		[CCode (has_construct_function=false)]
		public PanelImage.from_source (string source);
		public void set_from_pixbuf (Gdk.Pixbuf pixbuf);
		public void set_from_source (string source);
		public void clear ();
	}
	public interface PanelPluginProvider {
	}
	public unowned Gtk.Button panel_create_button ();
	public unowned Gtk.ToggleButton panel_create_toggle_button ();
}
