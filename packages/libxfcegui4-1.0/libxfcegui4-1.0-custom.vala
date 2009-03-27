namespace Xfce {

	/* dialogs.h */
	[Compact]
	public class Dialog {
		[CCode (cname = "xfce_confirm")]
		public static bool confirm (string text, string stock_id, string action);
		[CCode (cname = "xfce_err")]
		public static void error (string format);
		[CCode (cname = "xfce_info")]
		public static void info (string format);
		[CCode (cname = "xfce_warn")]
		public static void warning (string format);
		/*
		[CCode (cname = "xfce_message_dialog")]
		public static int message (Gtk.Window parent, string title, string icon_id, string primary_text, string secondary_text, ...);
		[CCode (cname = "xfce_message_dialog_new")]
		public static unowned Gtk.Widget message_new (Gtk.Window parent, string title, string icon_id, string primary_text, string secondary_text, ...);
		*/
	}

	/* icons.h */
	[Compact]
	public class Icon {
		[CCode (cname = "xfce_inline_icon_at_size")]
		public static Gdk.Pixbuf inline_at_size (string data, int width, int height);
		[CCode (cname = "xfce_themed_icon_load")]
		public static Gdk.Pixbuf load (string name, int size);
		[CCode (cname = "xfce_themed_icon_lookup")]
		public static string lookup (string name, int size);
	}

	/* xfce-exec.h */
	[Compact]
	public class Exec {
		[CCode (cname = "xfce_exec")]
		public static bool exec (string cmd, bool in_terminal, bool use_sn) throws GLib.Error;
		[CCode (cname = "xfce_exec_with_envp")]
		public static bool exec_with_envp (string cmd, bool in_terminal, bool use_sn, string[] envp) throws GLib.Error;
	}

	/* xfce-gdk-extensions.h xfce-gtk-extensions.h */
	[Compact]
	public class Extensions {
		[CCode (cname = "xfce_gdk_display_get_fullname")]
		public static string gdk_display_get_fullname (Gdk.Display display);
		/* TODO verify unowned */
		[CCode (cname = "xfce_gdk_display_locate_monitor_with_pointer")]
		public static unowned Gdk.Screen gdk_display_locate_monitor_with_pointer (Gdk.Display display, out int monitor_return);
		[CCode (cname = "xfce_gdk_screen_get_fullname")]
		public static string gdk_screen_get_fullname (Gdk.Screen screen);
		[CCode (cname = "xfce_gdk_spawn_command_line_on_screen")]
		public static bool gdk_spawn_command_line_on_screen (Gdk.Screen screen, string command_line) throws GLib.Error;
		[CCode (cname = "xfce_gdk_spawn_on_screen")]
		public static bool gdk_spawn_on_screen (Gdk.Screen screen, string? working_directory, string[] argv, string[]? envp, GLib.SpawnFlags flags, GLib.SpawnChildSetupFunc child_setup, out int? child_pid) throws GLib.Error;
		[CCode (cname = "xfce_gdk_spawn_on_screen_with_pipes")]
		public static bool gdk_spawn_on_screen_with_pipes (Gdk.Screen screen, string? working_directory, string[] argv, string[]? envp, GLib.SpawnFlags flags, GLib.SpawnChildSetupFunc child_setup, out int? child_pid, out int? standard_input, out int? standard_output, out int? standard_error) throws GLib.Error;
		[CCode (cname = "xfce_gtk_window_center_on_monitor")]
		public static void gtk_window_center_on_monitor (Gtk.Window window, Gdk.Screen screen, int monitor);
		[CCode (cname = "xfce_gtk_window_center_on_monitor_with_pointer")]
		public static void gtk_window_center_on_monitor_with_pointer (Gtk.Window window);
	}

	/* xfce-startup-notification.h */
	[Compact]
	public class StartupNotification {
		public const string ENVIRONMENT_DESKTOP_STARTUP_ID;
		public static void cancel (string id);
		public static string[] cleanup_environment (string[] envp);
		public static string[] modify_environment (string[] envp, string id);
		public static string start (Gdk.Screen screen, string path);
	}

	/* xfce-widget-helpers.h */
	[Compact]
	public class WidgetHelpers {
		/* TODO verify unowned */
		[CCode (cname = "xfce_create_framebox")]
		public static unowned Gtk.Widget create_framebox (string title, out unowned Gtk.Widget frame_bin);
		[CCode (cname = "xfce_create_framebox_with_content")]
		public static unowned Gtk.Widget create_framebox_with_content (string title, Gtk.Widget content);
	}

}
