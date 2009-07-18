namespace Exo {

	[Compact]
	[CCode (free_function = "")]
	public class Binding {
	}

	[Compact]
	[CCode (free_function = "")]
	public class MutualBinding {
	}

	/* exo-gdk-pixbuf-extensions.h exo-gobject-extensions.h exo-gtk-extensions.h exo-pango-extensions.h */
	[Compact]
	public class Extensions {
		public static Gdk.Pixbuf gdk_pixbuf_colorize (Gdk.Pixbuf src, Gdk.Color color);
		public static Gdk.Pixbuf gdk_pixbuf_frame (Gdk.Pixbuf src, Gdk.Pixbuf frame, int left_offset, int top_offset, int right_offset, int bottom_offset);
		public static Gdk.Pixbuf gdk_pixbuf_lucent (Gdk.Pixbuf src, uint percent);
		public static Gdk.Pixbuf gdk_pixbuf_new_from_file_at_max_size (string filename, int max_width, int max_height, bool preserve_aspect_ratio) throws GLib.Error;
		public static Gdk.Pixbuf gdk_pixbuf_scale_down (Gdk.Pixbuf source, bool preserve_aspect_ratio, int dest_width, int dest_height);
		public static Gdk.Pixbuf gdk_pixbuf_scale_ratio (Gdk.Pixbuf source, int dest_size);
		public static Gdk.Pixbuf gdk_pixbuf_spotlight (Gdk.Pixbuf src);

		public static bool g_value_transform_negate (GLib.Value src_value, GLib.Value dst_value);

		public static void gtk_file_chooser_add_thumbnail_preview (Gtk.FileChooser chooser);
		public static void gtk_object_destroy_later (Gtk.Object object);
		public static void gtk_radio_action_set_current_value (Gtk.RadioAction action, int current_value);
	}

	/* exo-execute.h */
	[Compact]
	public class Execute {
		public static bool preferred_application (string category, string? parameter, string working_directory, string[]? envp) throws GLib.Error;
		public static bool preferred_application_on_screen (string category, string? parameter, string working_directory, string[]? envp, Gdk.Screen screen) throws GLib.Error;
		public static bool terminal_shell (string command_line, string? working_directory, string[]? envp) throws GLib.Error;
		public static bool terminal_shell_on_screen (string command_line, string? working_directory, string[]? envp, Gdk.Screen screen) throws GLib.Error;
	}

	/* exo-md5.h */
	[Compact]
	public class Md5Digest {
		[CCode (cname = "exo_md5_str_to_digest")]
		public static Exo.Md5Digest md5_str_to_digest (string str_digest);
		[CCode (cname = "exo_str_get_md5_digest")]
		public static Exo.Md5Digest str_get_md5_digest (string contents);
	}
	[Compact]
	public class Md5 {
		[CCode (cname = "exo_str_get_md5_str")]
		public static string str_get_md5_str (string contents);
	}

	/* exo-mount-point.h */
	[CCode (cprefix = "EXO_MOUNT_POINT_")]
	[Flags]
	public enum MountPointFlags {
		READ_ONLY
	}

	[Compact]
	public class MountPoint {
		public static unowned GLib.SList list_active () throws GLib.Error;
		public static unowned GLib.SList list_configured () throws GLib.Error;
	}

	/* exo-string.h */
	[Compact]
	public class String {
		[CCode (cname = "exo_intern_static_string")]
		public static weak string intern_static (string str);
		[CCode (cname = "exo_intern_string")]
		public static weak string intern (string str);
		[CCode (cname = "exo_str_elide_underscores")]
		public static string elide_underscores (string text);
		[CCode (cname = "exo_str_is_equal")]
		public static bool is_equal (string? a, string? b);
		[CCode (cname = "exo_str_replace")]
		public static string replace (string str, string pattern, string replacement);
		[CCode (cname = "exo_strdup_strftime")]
		public static string dup_strftime (string format, void* tm);
		[CCode (cname = "exo_strndupv")]
		public static string[] ndupv (string[] strv, int num);
	}

	/* exo-url.h */
	[CCode (cprefix = "EXO_URL_ERROR_")]
	public errordomain UrlError {
		NOT_SUPPORTED
	}

	[Compact]
	public class Url {
		public static void about_dialog_hook (Gtk.AboutDialog about_dialog, string link);
		public static bool show (string url, string? envp) throws Exo.UrlError;
		public static bool show_on_screen (string url, string? envp, Gdk.Screen screen) throws Exo.UrlError;
	}

}
