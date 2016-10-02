namespace Exo {

	/* exo-gdk-pixbuf-extensions.h */
	[Compact]
	public class Extensions {
		public static Gdk.Pixbuf gdk_pixbuf_colorize (Gdk.Pixbuf src, Gdk.Color color);
		public static Gdk.Pixbuf gdk_pixbuf_frame (Gdk.Pixbuf src, Gdk.Pixbuf frame, int left_offset, int top_offset, int right_offset, int bottom_offset);
		public static Gdk.Pixbuf gdk_pixbuf_lucent (Gdk.Pixbuf src, uint percent);
		public static Gdk.Pixbuf gdk_pixbuf_new_from_file_at_max_size (string filename, int max_width, int max_height, bool preserve_aspect_ratio) throws GLib.Error;
		public static Gdk.Pixbuf gdk_pixbuf_scale_down (Gdk.Pixbuf source, bool preserve_aspect_ratio, int dest_width, int dest_height);
		public static Gdk.Pixbuf gdk_pixbuf_scale_ratio (Gdk.Pixbuf source, int dest_size);
		public static Gdk.Pixbuf gdk_pixbuf_spotlight (Gdk.Pixbuf src);
	}

	/* exo-string.h */
	[Compact]
	public class String {
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

}
