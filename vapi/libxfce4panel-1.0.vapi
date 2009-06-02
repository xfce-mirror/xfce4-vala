/*
 *  xfce4-vala - Vala bindings for Xfce
 *  Copyright (c) 2009  Mike Massonnet <mmassonnet@xfce.org>
 *
 *  This library is free software; you can redistribute it and/or
 *  modify it under the terms of the GNU Lesser General Public
 *  License as published by the Free Software Foundation; either
 *  version 2.1 of the License, or (at your option) any later version.
 *
 *  This library is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 *  Lesser General Public License for more details.
 *
 *  You should have received a copy of the GNU Lesser General Public
 *  License along with this library; if not, write to the Free Software
 *  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
 */

[CCode (cheader_filename = "libxfce4panel/libxfce4panel.h", cprefix = "Xfce", lower_case_cprefix = "xfce_")]
namespace Xfce {
	public static int PanelPluginRegisterExternal ([CCode (array_length_pos = 0)] ref unowned string[] argv, PanelPluginFunc register) {
		return PanelPluginRegisterExternalFull (ref argv, register, null, null);
	}
	public static int PanelPluginRegisterExternalFull ([CCode (array_length_pos = 0)] ref unowned string[] argv, PanelPluginFunc register, PanelPluginPreInit? preinit, PanelPluginCheck? check) {
		if (preinit != null) {
			if (!preinit (argv)) {
				return 3;
			}
		}
		Gtk.init (ref argv);
		if (check != null) {
			if (!check (Gdk.Screen.get_default ())) {
				return 2;
			}
		}
		var panel_plugin = new Xfce.ExternalPanelPlugin (argv, register);
		if (panel_plugin == null)
			return 1;
		GLib.Signal.connect_after (panel_plugin, "destroy", () => { Gtk.main_quit (); }, null);
		panel_plugin.show ();
		Gtk.main ();
		return 0;
	}
	/*
	TODO:
	- PanelPluginRegisterInternal
	*/

	public class ExternalPanelPlugin : Gtk.Plug, PanelPlugin {
		public ExternalPanelPlugin ([CCode (array_length_pos = 0)] string[] argv, PanelPluginFunc register);
	}
	public class InternalPanelPlugin : Gtk.EventBox, PanelPlugin {
		public InternalPanelPlugin (string name, string id, string display_name, int size, ScreenPosition screen_position, PanelPluginFunc register);
	}

	[CCode (has_target = false)]
	public delegate void PanelPluginFunc (PanelPlugin panel_plugin);
	[CCode (has_target = false)]
	public delegate bool PanelPluginCheck (Gdk.Screen screen);
	[CCode (has_target = false)]
	public delegate bool PanelPluginPreInit ([CCode (array_length_pos = 0)] string[] argv);

	public interface PanelPlugin : Gtk.Container {
		public string display_name { get; }
		public bool expand { get; set; }
		public string id { get; }
		public string name { get; }
		public ScreenPosition screen_position { get; }
		public int size { get; }
		public virtual signal void about ();
		public virtual signal void configure_plugin ();
		public virtual signal void free_data ();
		public virtual signal void orientation_changed (Gtk.Orientation orientation);
		public virtual signal void save ();
		public virtual signal void screen_position_changed (ScreenPosition screen_position);
		public virtual signal bool size_changed (int size);
		public string get_name ();
		public string get_id ();
		public string get_display_name ();
		public int get_size ();
		public ScreenPosition get_screen_position ();
		public void set_expand (bool expand);
		public bool get_expand ();
		public Gtk.Orientation get_orientation ();
		public void add_action_widget (Gtk.Widget widget);
		public void menu_insert_item (Gtk.MenuItem item);
		public void menu_show_about ();
		public void menu_show_configure ();
		public void block_menu ();
		public void unblock_menu ();
		public void register_menu (Gtk.Menu menu);
		public string lookup_rc_file ();
		public string save_location (bool create);
		public void focus_widget (Gtk.Widget widget);
		public void set_panel_hidden (bool hidden);
	}

	public class ArrowButton : Gtk.ToggleButton {
		public Gtk.ArrowType arrow_type { get; set; }
		public virtual signal void arrow_type_changed (Gtk.ArrowType type);
		public ArrowButton (Gtk.ArrowType type);
		public void set_arrow_type (Gtk.ArrowType type);
		public Gtk.ArrowType get_arrow_type ();
	}
	public class HVBox : Gtk.Box {
		public HVBox (Gtk.Orientation orientation, bool homogeneous, int spacing);
		public void set_orientation (Gtk.Orientation orientation);
	}
	public class ItemBar : Gtk.Container {
		public Gtk.Orientation orientation { get; set; }
		public virtual signal void contents_changed ();
		public virtual signal void orientation_changed (Gtk.Orientation orientation);
		public ItemBar (Gtk.Orientation orientation);
		public void set_orientation (Gtk.Orientation orientation);
		public Gtk.Orientation get_orientation ();
		public void insert (Gtk.Widget item, int position);
		public void append (Gtk.Widget item);
		public void prepend (Gtk.Widget item);
		public void reorder_child (Gtk.Widget item, int position);
		public void set_child_expand (Gtk.Widget item, bool expand);
		public bool get_child_expand (Gtk.Widget item);
		public void set_allow_expand (bool expand);
		public int get_n_items ();
		public int get_item_index (Gtk.Widget item);
		public Gtk.Widget get_nth_item (int n);
		public void raise_event_window ();
		public void lower_event_window ();
		public bool event_window_is_raised ();
		public Gtk.Widget get_item_at_point (int x, int y);
		public int get_drop_index (int x, int y);
	}
	[Compact]
	public class ItemBarChild {
		public bool expand;
		public weak Gtk.Widget widget;
	}
	[CCode (delegate_target_pos = 1)]
	public delegate bool PanelWindowMoveFunc (Gtk.Widget widget, out int x, out int y);
	[CCode (delegate_target_pos = 1)]
	public delegate bool PanelWindowResizeFunc (Gtk.Widget widget, out Gtk.Allocation previous, out Gtk.Allocation allocation, out int x, out int y);
	public class PanelWindow : Gtk.Window {
		public HandleStyle handle_style { get; set; }
		public Gtk.Orientation orientation { get; set; }
		public virtual signal void move (int x, int y);
		public virtual signal void move_end (int x, int y);
		public virtual signal void move_start ();
		public virtual signal void orientation_changed (Gtk.Orientation orientation);
		public PanelWindow ();
		public void set_orientation (Gtk.Orientation orientation);
		public Gtk.Orientation get_orientation ();
		public void set_handle_style (HandleStyle style);
		public HandleStyle get_handle_style ();
		public void set_show_border (bool top_border, bool bottom_border, bool left_border, bool right_border);
		public void get_show_border (out bool top_border, out bool bottom_border, out bool left_border, out bool right_border);
		public void set_resize_function (PanelWindowResizeFunc function);
		public void set_move_function (PanelWindowMoveFunc function);
		public void set_movable (bool movable);
		public bool get_movable ();
	}

	public static Gtk.Button create_panel_button ();
	public static Gtk.ToggleButton create_panel_toggle_button ();
	public static bool allow_panel_customization ();

	[CCode (has_type_id = false)]
	public enum ScreenPosition {
		NONE,
		NW_H,          /* North West Horizontal */
		N,             /* North                 */
		NE_H,          /* North East Horizontal */
		NW_V,          /* North West Vertical   */
		W,             /* West                  */
		SW_V,          /* South West Vertical   */
		NE_V,          /* North East Vertical   */
		E,             /* East                  */
		SE_V,          /* South East Vertical   */
		SW_H,          /* South West Horizontal */
		S,             /* South                 */
		SE_H,          /* South East Horizontal */
		FLOATING_H,    /* Floating Horizontal */
		FLOATING_V     /* Floating Vertical */
	}

	[CCode (has_type_id = false)]
	public enum HandleStyle {
		NONE,
		BOTH,
		START,
		END
	}
}
