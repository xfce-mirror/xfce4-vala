namespace Xfce {

	[Compact]
	[CCode (cheader_filename = "libxfce4util/libxfce4util.h", free_function = "xfce_rc_close")]
	public class Rc {
		[CCode (has_construct_function = false, cname = "xfce_rc_simple_open")]
		public Rc (string filename, bool readonly);
		[CCode (has_construct_function = false, cname = "xfce_rc_config_open")]
		public Rc.from_resource (Xfce.ResourceType type, string resource, bool readonly);
	}

	[Compact]
	[CCode (cheader_filename = "libxfce4util/libxfce4util.h")]
	public class Resource {
		public static unowned string lookup (Xfce.ResourceType type, string filename);
		public static unowned string save_location (Xfce.ResourceType type, string relpath, bool create);
		[CCode (array_length = false)]
		public static string[] dirs (Xfce.ResourceType type);
		[CCode (array_length = false)]
		public static string[] lookup_all (Xfce.ResourceType type, string filename);
		[CCode (array_length = false)]
		public static string[] match (Xfce.ResourceType type, string pattern, bool unique);
		//public delegate bool MatchFunc (string basedir, string relpath);
		//[CCode (array_length = false)]
		//public static string[] match_custom (Xfce.ResourceType type, bool unique, Xfce.Resource.MatchFunc func);
		//public static void pop_path (Xfce.ResourceType type);
		//public static void push_path (Xfce.ResourceType type, string path);
	}

	[Compact]
	[CCode (cheader_filename = "libxfce4util/libxfce4util.h")]
	public class PosixSignalHandler {
		public delegate void Callback (int @signal);
		public static bool init () throws GLib.Error;
		public static void restore_handler (int @signal);
		public static bool set_handler (int @signal, Xfce.PosixSignalHandler.Callback handler) throws GLib.Error;
		public static void shutdown ();
	}

	[CCode (cname = "xfce_version_string")]
	public static weak string get_version_string ();
	public static weak string get_license_text (Xfce.LicenseTextType type);
	public static void textdomain (string package, string localedir, string? encoding);

}
