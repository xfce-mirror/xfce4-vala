using Gtk;
using Garcon;

public class ButtonMenu : Gtk.Button {

	private Gtk.Menu menu = null;
	private Garcon.Menu apps_menu = null;

	construct {
		this.label = "Show Menu";
		this.clicked.connect (() => {
				menu.popup (null, null, null, 0, Gtk.get_current_event_time ());
				});

		init_menu ();
	}

	private void init_menu () {

		/* Build an apps menu */
		try {
			apps_menu = new Garcon.Menu.applications ();
			apps_menu.load (null);
		} catch (Error ex) {
			error ("Couldn't load applications menu.");
		}

		/* Create the gtk menu */
		menu = new Gtk.Menu ();
		create_menu_items (menu, apps_menu);
		menu.show_all ();
	}

	private void create_menu_items (Gtk.Menu gtk_menu, Garcon.Menu menu) {
		unowned List<Garcon.MenuItem> items;
		Gtk.MenuItem mi = null;

		/* Retrieves menu items */
		items = @menu.get_elements ();

		/* Create gtk menu items */
		foreach (Garcon.MenuItem item in items) {
			if (item is Garcon.MenuItem) {
				mi = new Gtk.MenuItem.with_label (item.get_name ());
				mi.set_data ("command", item.get_command());
				mi.activate.connect ((mi) => {
						message ("execute `%s'", mi.get_data<string> ("command"));
						});
			}
			else if (item is Garcon.MenuSeparator) {
				mi = new Gtk.SeparatorMenuItem ();
			}
			else if (item is Garcon.Menu) {
				Garcon.Menu submenu = (Garcon.Menu)item;
				if (submenu.get_items () == null)
					continue;

				mi = new Gtk.MenuItem.with_label (item.get_name ());

				Gtk.Menu gtk_submenu = new Gtk.Menu ();
				create_menu_items (gtk_submenu, submenu);
				mi.set_submenu (gtk_submenu);
			}
			gtk_menu.add (mi);
		}
	}
}

public class GtkSample : Gtk.Window {

	construct {
		this.title = "Apps Menu";
		this.destroy.connect (() => { Gtk.main_quit (); });

		var button = new ButtonMenu ();
		this.add (button);
	}

	static int main (string[] args) {
		Gtk.init (ref args);
		Garcon.set_environment ("XFCE");

		var sample = new GtkSample ();
		sample.show_all ();

		Gtk.main ();

		return 0;
	}
}

