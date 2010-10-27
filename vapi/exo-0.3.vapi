/* exo-0.3.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "Exo", lower_case_cprefix = "exo_")]
namespace Exo {
	[Compact]
	[CCode (free_function = "", cheader_filename = "exo/exo.h")]
	public class Binding {
		[CCode (has_construct_function = false)]
		public Binding.full (GLib.Object src_object, string src_property, GLib.Object dst_object, string dst_property, Exo.BindingTransform transform, GLib.DestroyNotify destroy_notify);
		[CCode (has_construct_function = false)]
		public Binding (GLib.Object src_object, string src_property, GLib.Object dst_object, string dst_property);
		public void unbind ();
		[CCode (has_construct_function = false)]
		public Binding.with_negation (GLib.Object src_object, string src_property, GLib.Object dst_object, string dst_property);
	}
	[CCode (cheader_filename = "exo/exo.h")]
	public class CellRendererEllipsizedText : Gtk.CellRendererText {
		[CCode (type = "GtkCellRenderer*", has_construct_function = false)]
		public CellRendererEllipsizedText ();
		[NoAccessorMethod]
		public bool follow_state { get; set; }
	}
	[CCode (cheader_filename = "exo/exo.h")]
	public class CellRendererIcon : Gtk.CellRenderer {
		[CCode (type = "GtkCellRenderer*", has_construct_function = false)]
		public CellRendererIcon ();
		[NoAccessorMethod]
		public bool follow_state { get; set construct; }
		[NoAccessorMethod]
		public string icon { owned get; set; }
		[NoAccessorMethod]
		public int size { get; set construct; }
	}
	[Compact]
	[CCode (cheader_filename = "exo/exo.h")]
	public class Execute {
		public static bool preferred_application (string category, string? parameter, string working_directory, string[]? envp) throws GLib.Error;
		public static bool preferred_application_on_screen (string category, string? parameter, string working_directory, string[]? envp, Gdk.Screen screen) throws GLib.Error;
		public static bool terminal_shell (string command_line, string? working_directory, string[]? envp) throws GLib.Error;
		public static bool terminal_shell_on_screen (string command_line, string? working_directory, string[]? envp, Gdk.Screen screen) throws GLib.Error;
	}
	[Compact]
	[CCode (cheader_filename = "exo/exo.h")]
	public class Extensions {
		public static bool g_value_transform_negate (GLib.Value src_value, GLib.Value dst_value);
		public static Gdk.Pixbuf gdk_pixbuf_colorize (Gdk.Pixbuf src, Gdk.Color color);
		public static Gdk.Pixbuf gdk_pixbuf_frame (Gdk.Pixbuf src, Gdk.Pixbuf frame, int left_offset, int top_offset, int right_offset, int bottom_offset);
		public static Gdk.Pixbuf gdk_pixbuf_lucent (Gdk.Pixbuf src, uint percent);
		public static Gdk.Pixbuf gdk_pixbuf_new_from_file_at_max_size (string filename, int max_width, int max_height, bool preserve_aspect_ratio) throws GLib.Error;
		public static Gdk.Pixbuf gdk_pixbuf_scale_down (Gdk.Pixbuf source, bool preserve_aspect_ratio, int dest_width, int dest_height);
		public static Gdk.Pixbuf gdk_pixbuf_scale_ratio (Gdk.Pixbuf source, int dest_size);
		public static Gdk.Pixbuf gdk_pixbuf_spotlight (Gdk.Pixbuf src);
		public static void gtk_file_chooser_add_thumbnail_preview (Gtk.FileChooser chooser);
		public static void gtk_object_destroy_later (Gtk.Object object);
		public static void gtk_radio_action_set_current_value (Gtk.RadioAction action, int current_value);
	}
	[CCode (cheader_filename = "exo/exo.h")]
	public class IconBar : Gtk.Container, Atk.Implementor, Gtk.Buildable {
		public int get_active ();
		public bool get_active_iter (Gtk.TreeIter iter);
		public unowned Gtk.TreeModel get_model ();
		public Gtk.Orientation get_orientation ();
		public int get_pixbuf_column ();
		public int get_text_column ();
		[CCode (type = "GtkWidget*", has_construct_function = false)]
		public IconBar ();
		public void set_active (int index);
		public void set_active_iter (Gtk.TreeIter iter);
		public void set_model (Gtk.TreeModel model);
		public void set_orientation (Gtk.Orientation orientation);
		public void set_pixbuf_column (int column);
		public void set_text_column (int column);
		[CCode (type = "GtkWidget*", has_construct_function = false)]
		public IconBar.with_model (Gtk.TreeModel model);
		public int active { get; set; }
		public Gtk.TreeModel model { get; set; }
		public Gtk.Orientation orientation { get; set; }
		public int pixbuf_column { get; set; }
		public int text_column { get; set; }
		public virtual signal void selection_changed ();
		public virtual signal void set_scroll_adjustments (Gtk.Adjustment hadjustment, Gtk.Adjustment vadjustment);
	}
	[CCode (cheader_filename = "exo/exo.h")]
	public class IconChooserDialog : Gtk.Dialog, Atk.Implementor, Gtk.Buildable {
		public unowned string get_icon ();
		[CCode (type = "GtkWidget*", has_construct_function = false)]
		public IconChooserDialog (string title, Gtk.Window parent, ...);
		public bool set_icon (string icon);
	}
	[CCode (cheader_filename = "exo/exo.h")]
	public class IconView : Gtk.Container, Atk.Implementor, Gtk.Buildable, Gtk.CellLayout {
		public unowned Gdk.Pixmap create_drag_icon (Gtk.TreePath path);
		public void enable_model_drag_dest (Gtk.TargetEntry[] targets, Gdk.DragAction actions);
		public void enable_model_drag_source (Gdk.ModifierType start_button_mask, Gtk.TargetEntry[] targets, Gdk.DragAction actions);
		[CCode (cname = "exo_icon_view_item_activated")]
		public void exo_icon_view_activate_item (Gtk.TreePath path);
		public int get_column_spacing ();
		public int get_columns ();
		public bool get_cursor (out unowned Gtk.TreePath path, out unowned Gtk.CellRenderer cell);
		public bool get_dest_item_at_pos (int drag_x, int drag_y, out unowned Gtk.TreePath path, Exo.IconViewDropPosition pos);
		public void get_drag_dest_item (out unowned Gtk.TreePath path, Exo.IconViewDropPosition pos);
		public bool get_enable_search ();
		public bool get_item_at_pos (int x, int y, out unowned Gtk.TreePath path, out unowned Gtk.CellRenderer cell);
		public int get_item_width ();
		public Exo.IconViewLayoutMode get_layout_mode ();
		public int get_margin ();
		public unowned Gtk.TreeModel get_model ();
		public Gtk.Orientation get_orientation ();
		public unowned Gtk.TreePath get_path_at_pos (int x, int y);
		public bool get_reorderable ();
		public int get_row_spacing ();
		public int get_search_column ();
		public unowned Exo.IconViewSearchEqualFunc get_search_equal_func ();
		public unowned Exo.IconViewSearchPositionFunc get_search_position_func ();
		public unowned GLib.List get_selected_items ();
		public Gtk.SelectionMode get_selection_mode ();
		public bool get_single_click ();
		public uint get_single_click_timeout ();
		public int get_spacing ();
		public bool get_visible_range (out unowned Gtk.TreePath start_path, out unowned Gtk.TreePath end_path);
		public void icon_to_widget_coords (int ix, int iy, int wx, int wy);
		[CCode (type = "GtkWidget*", has_construct_function = false)]
		public IconView ();
		public bool path_is_selected (Gtk.TreePath path);
		public void scroll_to_path (Gtk.TreePath path, bool use_align, float row_align, float col_align);
		public void select_all ();
		public void select_path (Gtk.TreePath path);
		public void selected_foreach (Exo.IconViewForeachFunc func, void* data);
		public void set_column_spacing (int column_spacing);
		public void set_columns (int columns);
		public void set_cursor (Gtk.TreePath path, Gtk.CellRenderer cell, bool start_editing);
		public void set_drag_dest_item (Gtk.TreePath path, Exo.IconViewDropPosition pos);
		public void set_enable_search (bool enable_search);
		public void set_item_width (int item_width);
		public void set_layout_mode (Exo.IconViewLayoutMode layout_mode);
		public void set_margin (int margin);
		public void set_model (Gtk.TreeModel model);
		public void set_orientation (Gtk.Orientation orientation);
		public void set_reorderable (bool reorderable);
		public void set_row_spacing (int row_spacing);
		public void set_search_column (int search_column);
		public void set_search_equal_func (Exo.IconViewSearchEqualFunc search_equal_func, void* search_equal_data, GLib.DestroyNotify search_equal_destroy);
		public void set_search_position_func (Exo.IconViewSearchPositionFunc search_position_func, void* search_position_data, GLib.DestroyNotify search_position_destroy);
		public void set_selection_mode (Gtk.SelectionMode mode);
		public void set_single_click (bool single_click);
		public void set_single_click_timeout (uint single_click_timeout);
		public void set_spacing (int spacing);
		public void unselect_all ();
		public void unselect_path (Gtk.TreePath path);
		public void unset_model_drag_dest ();
		public void unset_model_drag_source ();
		public void widget_to_icon_coords (int wx, int wy, int ix, int iy);
		[CCode (type = "GtkWidget*", has_construct_function = false)]
		public IconView.with_model (Gtk.TreeModel model);
		public int column_spacing { get; set; }
		public int columns { get; set; }
		public bool enable_search { get; set; }
		public int item_width { get; set; }
		public Exo.IconViewLayoutMode layout_mode { get; set; }
		public int margin { get; set; }
		[NoAccessorMethod]
		public int markup_column { get; set; }
		public Gtk.TreeModel model { get; set; }
		public Gtk.Orientation orientation { get; set; }
		[NoAccessorMethod]
		public int pixbuf_column { get; set; }
		public bool reorderable { get; set; }
		public int row_spacing { get; set; }
		public int search_column { get; set; }
		public Gtk.SelectionMode selection_mode { get; set; }
		public bool single_click { get; set; }
		public uint single_click_timeout { get; set; }
		public int spacing { get; set; }
		[NoAccessorMethod]
		public int text_column { get; set; }
		public virtual signal bool activate_cursor_item ();
		public virtual signal void all_selected ();
		public virtual signal void all_unselected ();
		public virtual signal void item_activated (Gtk.TreePath path);
		public virtual signal bool move_cursor (Gtk.MovementStep step, int count);
		public virtual signal void select_cursor_item ();
		public virtual signal void selection_changed ();
		public virtual signal void set_scroll_adjustments (Gtk.Adjustment hadjustment, Gtk.Adjustment vadjustment);
		public virtual signal bool start_interactive_search ();
		public virtual signal void toggle_cursor_item ();
	}
	[Compact]
	[CCode (cheader_filename = "exo/exo.h")]
	public class Md5 {
		[CCode (cname = "exo_str_get_md5_str")]
		public static string str_get_md5_str (string contents);
	}
	[Compact]
	[CCode (cheader_filename = "exo/exo.h")]
	public class Md5Digest {
		[CCode (array_length = false)]
		public weak uchar[] digest;
		public unowned Exo.Md5Digest dup ();
		public static bool equal (void* digest1, void* digest2);
		public static uint hash (void* digest);
		[CCode (cname = "exo_md5_str_to_digest")]
		public static Exo.Md5Digest md5_str_to_digest (string str_digest);
		[CCode (cname = "exo_str_get_md5_digest")]
		public static Exo.Md5Digest str_get_md5_digest (string contents);
		public unowned string to_str ();
	}
	[Compact]
	[CCode (cheader_filename = "exo/exo.h")]
	public class MountPoint {
		public weak string device;
		public Exo.MountPointFlags flags;
		public weak string folder;
		public weak string fstype;
		public unowned Exo.MountPoint dup ();
		public static unowned GLib.SList list_active () throws GLib.Error;
		public static unowned GLib.SList list_configured () throws GLib.Error;
		public static unowned GLib.SList list_matched (Exo.MountPointMatchMask mask, string device, string folder, string fstype) throws GLib.Error;
	}
	[Compact]
	[CCode (free_function = "", cheader_filename = "exo/exo.h")]
	public class MutualBinding {
		[CCode (has_construct_function = false)]
		public MutualBinding.full (GLib.Object object1, string property1, GLib.Object object2, string property2, Exo.BindingTransform transform, Exo.BindingTransform reverse_transform, GLib.DestroyNotify destroy_notify);
		[CCode (has_construct_function = false)]
		public MutualBinding (GLib.Object object1, string property1, GLib.Object object2, string property2);
		public void unbind ();
		[CCode (has_construct_function = false)]
		public MutualBinding.with_negation (GLib.Object object1, string property1, GLib.Object object2, string property2);
	}
	[Compact]
	[CCode (cheader_filename = "exo/exo.h")]
	public class String {
		[CCode (cname = "exo_strdup_strftime")]
		public static string dup_strftime (string format, void* tm);
		[CCode (cname = "exo_str_elide_underscores")]
		public static string elide_underscores (string text);
		[CCode (cname = "exo_intern_string")]
		public static unowned string intern (string str);
		[CCode (cname = "exo_intern_static_string")]
		public static unowned string intern_static (string str);
		[CCode (cname = "exo_str_is_equal")]
		public static bool is_equal (string? a, string? b);
		[CCode (cname = "exo_strndupv")]
		public static string[] ndupv (string[] strv, int num);
		[CCode (cname = "exo_str_replace")]
		public static string replace (string str, string pattern, string replacement);
	}
	[CCode (cheader_filename = "exo/exo.h")]
	public class ToolbarsEditor : Gtk.VBox, Atk.Implementor, Gtk.Buildable {
		public unowned Exo.ToolbarsModel get_model ();
		public unowned Gtk.UIManager get_ui_manager ();
		[CCode (type = "GtkWidget*", has_construct_function = false)]
		public ToolbarsEditor (Gtk.UIManager ui_manager);
		public void set_model (Exo.ToolbarsModel model);
		public void set_ui_manager (Gtk.UIManager ui_manager);
		[CCode (type = "GtkWidget*", has_construct_function = false)]
		public ToolbarsEditor.with_model (Gtk.UIManager ui_manager, Exo.ToolbarsModel model);
		public Exo.ToolbarsModel model { get; set; }
		public Gtk.UIManager ui_manager { get; set; }
	}
	[CCode (cheader_filename = "exo/exo.h")]
	public class ToolbarsEditorDialog : Gtk.Dialog, Atk.Implementor, Gtk.Buildable {
		[CCode (type = "GtkWidget*", has_construct_function = false)]
		public ToolbarsEditorDialog.with_model (Gtk.UIManager ui_manager, Exo.ToolbarsModel model);
	}
	[CCode (cheader_filename = "exo/exo.h")]
	public class ToolbarsModel : GLib.Object {
		public virtual bool add_item (int toolbar_position, int item_position, string id, string type);
		public void add_separator (int toolbar_position, int item_position);
		public int add_toolbar (int toolbar_position, string name);
		public unowned string get_actions ();
		public Exo.ToolbarsModelFlags get_flags (int toolbar_position);
		public unowned string get_item_data (string type, string id);
		public unowned string get_item_id (string type, string name);
		public unowned string get_item_type (Gdk.Atom dnd_type);
		public Gtk.ToolbarStyle get_style (int toolbar_position);
		public void item_nth (int toolbar_position, int item_position, bool is_separator, string id, string type);
		public bool load_from_file (string filename) throws GLib.Error;
		public void move_item (int toolbar_position, int item_position, int new_toolbar_position, int new_item_position);
		public int n_items (int toolbar_position);
		public int n_toolbars ();
		[CCode (has_construct_function = false)]
		public ToolbarsModel ();
		public void remove_item (int toolbar_position, int item_position);
		public void remove_toolbar (int toolbar_position);
		public bool save_to_file (string filename) throws GLib.Error;
		public void set_actions (string[] actions);
		public void set_flags (Exo.ToolbarsModelFlags flags, int toolbar_position);
		public void set_style (Gtk.ToolbarStyle style, int toolbar_position);
		public unowned string toolbar_nth (int toolbar_position);
		public void unset_style (int toolbar_position);
		public virtual signal void item_added (int toolbar_position, int item_position);
		public virtual signal unowned string item_data (string type, string id);
		public virtual signal unowned string item_id (string type, string data);
		public virtual signal void item_removed (int toolbar_position, int item_position);
		public virtual signal unowned string item_type (void* dnd_type);
		public virtual signal void toolbar_added (int toolbar_position);
		public virtual signal void toolbar_changed (int toolbar_position);
		public virtual signal void toolbar_removed (int toolbar_position);
	}
	[CCode (cheader_filename = "exo/exo.h")]
	public class ToolbarsView : Gtk.VBox, Atk.Implementor, Gtk.Buildable {
		public bool get_editing ();
		public unowned Exo.ToolbarsModel get_model ();
		public unowned Gtk.UIManager get_ui_manager ();
		[CCode (type = "GtkWidget*", has_construct_function = false)]
		public ToolbarsView (Gtk.UIManager ui_manager);
		public void set_editing (bool editing);
		public void set_model (Exo.ToolbarsModel model);
		public void set_ui_manager (Gtk.UIManager ui_manager);
		[CCode (type = "GtkWidget*", has_construct_function = false)]
		public ToolbarsView.with_model (Gtk.UIManager ui_manager, Exo.ToolbarsModel model);
		public bool editing { get; set; }
		public Exo.ToolbarsModel model { get; set; }
		public Gtk.UIManager ui_manager { get; set; }
		public virtual signal void action_request (string action_name);
		public virtual signal void customize ();
	}
	[CCode (cheader_filename = "exo/exo.h")]
	public class TreeView : Gtk.TreeView, Atk.Implementor, Gtk.Buildable {
		public bool get_single_click ();
		public uint get_single_click_timeout ();
		[CCode (type = "GtkWidget*", has_construct_function = false)]
		public TreeView ();
		public void set_single_click (bool single_click);
		public void set_single_click_timeout (uint single_click_timeout);
		public bool single_click { get; set; }
		public uint single_click_timeout { get; set; }
	}
	[Compact]
	[CCode (cheader_filename = "exo/exo.h")]
	public class Url {
		public static void about_dialog_hook (Gtk.AboutDialog about_dialog, string link);
		public static bool show (string url, string? envp) throws Exo.UrlError;
		public static bool show_on_screen (string url, string? envp, Gdk.Screen screen) throws Exo.UrlError;
	}
	[CCode (cheader_filename = "exo/exo.h")]
	public class WrapTable : Gtk.Container, Atk.Implementor, Gtk.Buildable {
		public uint get_col_spacing ();
		public bool get_homogeneous ();
		public uint get_row_spacing ();
		[CCode (type = "GtkWidget*", has_construct_function = false)]
		public WrapTable (bool homogeneous);
		public void set_col_spacing (uint col_spacing);
		public void set_homogeneous (bool homogeneous);
		public void set_row_spacing (uint row_spacing);
		public uint col_spacing { get; set; }
		public bool homogeneous { get; set; }
		public uint row_spacing { get; set; }
	}
	[CCode (cheader_filename = "exo/exo.h")]
	public class XsessionClient : GLib.Object {
		[CCode (has_construct_function = false)]
		public XsessionClient.with_group (Gdk.Window leader);
		public Gdk.Window group { get; set; }
		public string[] restart_command { get; set; }
		public virtual signal void save_yourself ();
	}
	[CCode (cprefix = "EXO_ICON_VIEW_", cheader_filename = "exo/exo.h")]
	public enum IconViewDropPosition {
		NO_DROP,
		DROP_INTO,
		DROP_LEFT,
		DROP_RIGHT,
		DROP_ABOVE,
		DROP_BELOW
	}
	[CCode (cprefix = "EXO_ICON_VIEW_LAYOUT_", cheader_filename = "exo/exo.h")]
	public enum IconViewLayoutMode {
		ROWS,
		COLS
	}
	[CCode (cprefix = "EXO_MOUNT_POINT_", cheader_filename = "exo/exo.h")]
	[Flags]
	public enum MountPointFlags {
		READ_ONLY
	}
	[CCode (cprefix = "EXO_MOUNT_POINT_MATCH_", has_type_id = "0", cheader_filename = "exo/exo.h")]
	public enum MountPointMatchMask {
		ACTIVE,
		CONFIGURED,
		DEVICE,
		FOLDER,
		FSTYPE
	}
	[CCode (cprefix = "EXO_TOOLBARS_MODEL_", cheader_filename = "exo/exo.h")]
	[Flags]
	public enum ToolbarsModelFlags {
		NOT_REMOVABLE,
		ACCEPT_ITEMS_ONLY,
		OVERRIDE_STYLE
	}
	[CCode (cprefix = "EXO_URL_ERROR_", cheader_filename = "exo/exo.h")]
	public errordomain UrlError {
		NOT_SUPPORTED,
	}
	[CCode (cheader_filename = "exo/exo.h")]
	public delegate bool BindingTransform (GLib.Value src_value, GLib.Value dst_value);
	[CCode (cheader_filename = "exo/exo.h")]
	public delegate void IconViewForeachFunc (Exo.IconView icon_view, Gtk.TreePath path);
	[CCode (cheader_filename = "exo/exo.h", has_target = false)]
	public delegate bool IconViewSearchEqualFunc (Gtk.TreeModel model, int column, string key, Gtk.TreeIter iter, void* search_data);
	[CCode (cheader_filename = "exo/exo.h")]
	public delegate void IconViewSearchPositionFunc (Exo.IconView icon_view, Gtk.Widget search_dialog);
	[CCode (cheader_filename = "exo/exo.h")]
	public const string TOOLBARS_ITEM_TYPE;
}