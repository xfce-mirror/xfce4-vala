namespace Xfce {

	public class MenuItemCache {
		/* Should be scanned by gen-introspect (bug?) */
		public	unowned Xfce.MenuItem lookup (string filename, string desktop_id);
	}

	[Compact]
	public class MenuMonitor {
		public void* add_directory (string directory);
		public void* add_file (string filename);
		public void* add_item (Xfce.MenuItem item);
		public static Xfce.MenuMonitorFlags get_flags ();
		public static bool has_flags (Xfce.MenuMonitorFlags flags);
		public void remove_directory (string directory);
		public void remove_file (string filename);
		public void remove_item (Xfce.MenuItem item);
		public static void set_flags (Xfce.MenuMonitorFlags flags);
		public static void set_vtable (Xfce.MenuMonitorVTable vtable);
	}

	public static void menu_init (string env);
	public static void menu_shutdown ();
	public static unowned string menu_get_environment ();
	public static void menu_set_environment (string env);
}
