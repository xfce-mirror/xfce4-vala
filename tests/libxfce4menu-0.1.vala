using Gtk;
using Xfce;

public class ButtonMenu : Gtk.Button {

	private Gtk.Menu menu = null;

	construct {
		this.label = "Show Menu";
		this.clicked.connect (() => {
				menu.popup (null, null, null, 0, Gtk.get_current_event_time ());
				});

		init_menu ();
	}

	private void init_menu () {
		Xfce.Menu root_menu;

		/* Build a root menu */
		try {
			root_menu = Xfce.Menu.get_root ();
		} catch (Error ex) {
			error ("Unable to build a root menu");
			return;
		}

		/* Create the gtk menu */
		menu = new Gtk.Menu ();
		create_menu_items (menu, root_menu);
		menu.show_all ();
	}

	private void create_menu_items (Gtk.Menu gtk_menu, Xfce.Menu xfce_menu) {
		unowned SList<Xfce.MenuItem> items;
		Gtk.MenuItem mi = null;

		/* Retrieves menu items */
		if (xfce_menu.has_layout ()) {
			items = xfce_menu.get_layout_elements ();
		} else {
			items = xfce_menu.get_items ();
		}

		/* Create gtk menu items */
		foreach (Xfce.MenuItem item in items) {
			if (item is Xfce.MenuItem) {
				mi = new Gtk.MenuItem.with_label (item.get_name ());
				mi.set_data ("command", item.get_command());
				mi.activate.connect ((mi) => {
						debug ("execute `%s'", (string)mi.get_data ("command"));
						});
			}
			else if (item is Xfce.MenuSeparator) {
				mi = new Gtk.SeparatorMenuItem ();
			}
			else if (item is Xfce.Menu) {
				Xfce.Menu xfce_submenu = (Xfce.Menu)item;
				if (xfce_submenu.get_items () == null)
					continue;

				mi = new Gtk.MenuItem.with_label (item.get_name ());

				Gtk.Menu gtk_submenu = new Gtk.Menu ();
				create_menu_items (gtk_submenu, xfce_submenu);
				mi.set_submenu (gtk_submenu);
			}
			gtk_menu.add (mi);
		}
	}
}

public class GtkSample : Gtk.Window {

	construct {
		this.title = "Xfce4 Menu";
		this.destroy.connect (() => { Gtk.main_quit (); });

		var button = new ButtonMenu ();
		this.add (button);
	}

	static int main (string[] args) {
		Gtk.init (ref args);
		Xfce.menu_init ("XFCE");

		var sample = new GtkSample ();
		sample.show_all ();

		Gtk.main ();

		Xfce.menu_shutdown ();

		return 0;
	}
}

