<?xml version="1.0"?>
<api version="1.0">
	<namespace name="Xfce">
		<function name="libxfce4panel_check_version" symbol="libxfce4panel_check_version">
			<return-type type="gchar*"/>
			<parameters>
				<parameter name="required_major" type="guint"/>
				<parameter name="required_minor" type="guint"/>
				<parameter name="required_micro" type="guint"/>
			</parameters>
		</function>
		<function name="panel_create_button" symbol="xfce_panel_create_button">
			<return-type type="GtkWidget*"/>
		</function>
		<function name="panel_create_toggle_button" symbol="xfce_panel_create_toggle_button">
			<return-type type="GtkWidget*"/>
		</function>
		<function name="panel_get_channel_name" symbol="xfce_panel_get_channel_name">
			<return-type type="gchar*"/>
		</function>
		<function name="panel_pixbuf_from_source" symbol="xfce_panel_pixbuf_from_source">
			<return-type type="GdkPixbuf*"/>
			<parameters>
				<parameter name="source" type="gchar*"/>
				<parameter name="icon_theme" type="GtkIconTheme*"/>
				<parameter name="size" type="gint"/>
			</parameters>
		</function>
		<function name="panel_pixbuf_from_source_at_size" symbol="xfce_panel_pixbuf_from_source_at_size">
			<return-type type="GdkPixbuf*"/>
			<parameters>
				<parameter name="source" type="gchar*"/>
				<parameter name="icon_theme" type="GtkIconTheme*"/>
				<parameter name="dest_width" type="gint"/>
				<parameter name="dest_height" type="gint"/>
			</parameters>
		</function>
		<callback name="PluginConstructFunc">
			<return-type type="GtkWidget*"/>
			<parameters>
				<parameter name="name" type="gchar*"/>
				<parameter name="unique_id" type="gint"/>
				<parameter name="display_name" type="gchar*"/>
				<parameter name="comment" type="gchar*"/>
				<parameter name="arguments" type="gchar**"/>
				<parameter name="screen" type="GdkScreen*"/>
			</parameters>
		</callback>
		<callback name="PluginInitFunc">
			<return-type type="GType"/>
			<parameters>
				<parameter name="module" type="GTypeModule*"/>
				<parameter name="make_resident" type="gboolean*"/>
			</parameters>
		</callback>
		<callback name="XfcePanelPluginCheck">
			<return-type type="gboolean"/>
			<parameters>
				<parameter name="screen" type="GdkScreen*"/>
			</parameters>
		</callback>
		<callback name="XfcePanelPluginFunc">
			<return-type type="void"/>
			<parameters>
				<parameter name="plugin" type="XfcePanelPlugin*"/>
			</parameters>
		</callback>
		<callback name="XfcePanelPluginPreInit">
			<return-type type="gboolean"/>
			<parameters>
				<parameter name="argc" type="gint"/>
				<parameter name="argv" type="gchar**"/>
			</parameters>
		</callback>
		<struct name="XfcePanelTypeModule">
		</struct>
		<enum name="XfcePanelPluginMode" type-name="XfcePanelPluginMode" get-type="xfce_panel_plugin_mode_get_type">
			<member name="XFCE_PANEL_PLUGIN_MODE_HORIZONTAL" value="0"/>
			<member name="XFCE_PANEL_PLUGIN_MODE_VERTICAL" value="1"/>
			<member name="XFCE_PANEL_PLUGIN_MODE_DESKBAR" value="2"/>
		</enum>
		<enum name="XfcePanelPluginProviderPropType">
			<member name="PROVIDER_PROP_TYPE_SET_SIZE" value="0"/>
			<member name="PROVIDER_PROP_TYPE_SET_MODE" value="1"/>
			<member name="PROVIDER_PROP_TYPE_SET_SCREEN_POSITION" value="2"/>
			<member name="PROVIDER_PROP_TYPE_SET_BACKGROUND_ALPHA" value="3"/>
			<member name="PROVIDER_PROP_TYPE_SET_NROWS" value="4"/>
			<member name="PROVIDER_PROP_TYPE_SET_LOCKED" value="5"/>
			<member name="PROVIDER_PROP_TYPE_SET_SENSITIVE" value="6"/>
			<member name="PROVIDER_PROP_TYPE_SET_BACKGROUND_COLOR" value="7"/>
			<member name="PROVIDER_PROP_TYPE_SET_BACKGROUND_IMAGE" value="8"/>
			<member name="PROVIDER_PROP_TYPE_ACTION_REMOVED" value="9"/>
			<member name="PROVIDER_PROP_TYPE_ACTION_SAVE" value="10"/>
			<member name="PROVIDER_PROP_TYPE_ACTION_QUIT" value="11"/>
			<member name="PROVIDER_PROP_TYPE_ACTION_QUIT_FOR_RESTART" value="12"/>
			<member name="PROVIDER_PROP_TYPE_ACTION_BACKGROUND_UNSET" value="13"/>
			<member name="PROVIDER_PROP_TYPE_ACTION_SHOW_CONFIGURE" value="14"/>
			<member name="PROVIDER_PROP_TYPE_ACTION_SHOW_ABOUT" value="15"/>
			<member name="PROVIDER_PROP_TYPE_ACTION_ASK_REMOVE" value="16"/>
		</enum>
		<enum name="XfcePanelPluginProviderSignal">
			<member name="PROVIDER_SIGNAL_MOVE_PLUGIN" value="0"/>
			<member name="PROVIDER_SIGNAL_EXPAND_PLUGIN" value="1"/>
			<member name="PROVIDER_SIGNAL_COLLAPSE_PLUGIN" value="2"/>
			<member name="PROVIDER_SIGNAL_SMALL_PLUGIN" value="3"/>
			<member name="PROVIDER_SIGNAL_UNSMALL_PLUGIN" value="4"/>
			<member name="PROVIDER_SIGNAL_LOCK_PANEL" value="5"/>
			<member name="PROVIDER_SIGNAL_UNLOCK_PANEL" value="6"/>
			<member name="PROVIDER_SIGNAL_REMOVE_PLUGIN" value="7"/>
			<member name="PROVIDER_SIGNAL_ADD_NEW_ITEMS" value="8"/>
			<member name="PROVIDER_SIGNAL_PANEL_PREFERENCES" value="9"/>
			<member name="PROVIDER_SIGNAL_PANEL_LOGOUT" value="10"/>
			<member name="PROVIDER_SIGNAL_PANEL_ABOUT" value="11"/>
			<member name="PROVIDER_SIGNAL_PANEL_HELP" value="12"/>
			<member name="PROVIDER_SIGNAL_SHOW_CONFIGURE" value="13"/>
			<member name="PROVIDER_SIGNAL_SHOW_ABOUT" value="14"/>
			<member name="PROVIDER_SIGNAL_FOCUS_PLUGIN" value="15"/>
			<member name="PROVIDER_SIGNAL_SHRINK_PLUGIN" value="16"/>
			<member name="PROVIDER_SIGNAL_UNSHRINK_PLUGIN" value="17"/>
		</enum>
		<enum name="XfceScreenPosition" type-name="XfceScreenPosition" get-type="xfce_screen_position_get_type">
			<member name="XFCE_SCREEN_POSITION_NONE" value="0"/>
			<member name="XFCE_SCREEN_POSITION_NW_H" value="1"/>
			<member name="XFCE_SCREEN_POSITION_N" value="2"/>
			<member name="XFCE_SCREEN_POSITION_NE_H" value="3"/>
			<member name="XFCE_SCREEN_POSITION_NW_V" value="4"/>
			<member name="XFCE_SCREEN_POSITION_W" value="5"/>
			<member name="XFCE_SCREEN_POSITION_SW_V" value="6"/>
			<member name="XFCE_SCREEN_POSITION_NE_V" value="7"/>
			<member name="XFCE_SCREEN_POSITION_E" value="8"/>
			<member name="XFCE_SCREEN_POSITION_SE_V" value="9"/>
			<member name="XFCE_SCREEN_POSITION_SW_H" value="10"/>
			<member name="XFCE_SCREEN_POSITION_S" value="11"/>
			<member name="XFCE_SCREEN_POSITION_SE_H" value="12"/>
			<member name="XFCE_SCREEN_POSITION_FLOATING_H" value="13"/>
			<member name="XFCE_SCREEN_POSITION_FLOATING_V" value="14"/>
		</enum>
		<object name="XfceArrowButton" parent="GtkToggleButton" type-name="XfceArrowButton" get-type="xfce_arrow_button_get_type">
			<implements>
				<interface name="AtkImplementor"/>
				<interface name="GtkBuildable"/>
				<interface name="GtkActivatable"/>
			</implements>
			<method name="get_arrow_type" symbol="xfce_arrow_button_get_arrow_type">
				<return-type type="GtkArrowType"/>
				<parameters>
					<parameter name="button" type="XfceArrowButton*"/>
				</parameters>
			</method>
			<method name="get_blinking" symbol="xfce_arrow_button_get_blinking">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="button" type="XfceArrowButton*"/>
				</parameters>
			</method>
			<constructor name="new" symbol="xfce_arrow_button_new">
				<return-type type="GtkWidget*"/>
				<parameters>
					<parameter name="arrow_type" type="GtkArrowType"/>
				</parameters>
			</constructor>
			<method name="set_arrow_type" symbol="xfce_arrow_button_set_arrow_type">
				<return-type type="void"/>
				<parameters>
					<parameter name="button" type="XfceArrowButton*"/>
					<parameter name="arrow_type" type="GtkArrowType"/>
				</parameters>
			</method>
			<method name="set_blinking" symbol="xfce_arrow_button_set_blinking">
				<return-type type="void"/>
				<parameters>
					<parameter name="button" type="XfceArrowButton*"/>
					<parameter name="blinking" type="gboolean"/>
				</parameters>
			</method>
			<property name="arrow-type" type="GtkArrowType" readable="1" writable="1" construct="0" construct-only="0"/>
			<signal name="arrow-type-changed" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="button" type="XfceArrowButton*"/>
					<parameter name="type" type="GtkArrowType"/>
				</parameters>
			</signal>
		</object>
		<object name="XfceHVBox" parent="GtkBox" type-name="XfceHVBox" get-type="xfce_hvbox_get_type">
			<implements>
				<interface name="AtkImplementor"/>
				<interface name="GtkBuildable"/>
				<interface name="GtkOrientable"/>
			</implements>
			<method name="get_orientation" symbol="xfce_hvbox_get_orientation">
				<return-type type="GtkOrientation"/>
				<parameters>
					<parameter name="hvbox" type="XfceHVBox*"/>
				</parameters>
			</method>
			<constructor name="new" symbol="xfce_hvbox_new">
				<return-type type="GtkWidget*"/>
				<parameters>
					<parameter name="orientation" type="GtkOrientation"/>
					<parameter name="homogeneous" type="gboolean"/>
					<parameter name="spacing" type="gint"/>
				</parameters>
			</constructor>
			<method name="set_orientation" symbol="xfce_hvbox_set_orientation">
				<return-type type="void"/>
				<parameters>
					<parameter name="hvbox" type="XfceHVBox*"/>
					<parameter name="orientation" type="GtkOrientation"/>
				</parameters>
			</method>
			<field name="orientation" type="GtkOrientation"/>
		</object>
		<object name="XfcePanelImage" parent="GtkWidget" type-name="XfcePanelImage" get-type="xfce_panel_image_get_type">
			<implements>
				<interface name="AtkImplementor"/>
				<interface name="GtkBuildable"/>
			</implements>
			<method name="clear" symbol="xfce_panel_image_clear">
				<return-type type="void"/>
				<parameters>
					<parameter name="image" type="XfcePanelImage*"/>
				</parameters>
			</method>
			<method name="get_size" symbol="xfce_panel_image_get_size">
				<return-type type="gint"/>
				<parameters>
					<parameter name="image" type="XfcePanelImage*"/>
				</parameters>
			</method>
			<constructor name="new" symbol="xfce_panel_image_new">
				<return-type type="GtkWidget*"/>
			</constructor>
			<constructor name="new_from_pixbuf" symbol="xfce_panel_image_new_from_pixbuf">
				<return-type type="GtkWidget*"/>
				<parameters>
					<parameter name="pixbuf" type="GdkPixbuf*"/>
				</parameters>
			</constructor>
			<constructor name="new_from_source" symbol="xfce_panel_image_new_from_source">
				<return-type type="GtkWidget*"/>
				<parameters>
					<parameter name="source" type="gchar*"/>
				</parameters>
			</constructor>
			<method name="set_from_pixbuf" symbol="xfce_panel_image_set_from_pixbuf">
				<return-type type="void"/>
				<parameters>
					<parameter name="image" type="XfcePanelImage*"/>
					<parameter name="pixbuf" type="GdkPixbuf*"/>
				</parameters>
			</method>
			<method name="set_from_source" symbol="xfce_panel_image_set_from_source">
				<return-type type="void"/>
				<parameters>
					<parameter name="image" type="XfcePanelImage*"/>
					<parameter name="source" type="gchar*"/>
				</parameters>
			</method>
			<method name="set_size" symbol="xfce_panel_image_set_size">
				<return-type type="void"/>
				<parameters>
					<parameter name="image" type="XfcePanelImage*"/>
					<parameter name="size" type="gint"/>
				</parameters>
			</method>
			<property name="pixbuf" type="GdkPixbuf*" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="size" type="gint" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="source" type="char*" readable="1" writable="1" construct="0" construct-only="0"/>
			<vfunc name="reserved1">
				<return-type type="void"/>
			</vfunc>
			<vfunc name="reserved2">
				<return-type type="void"/>
			</vfunc>
			<vfunc name="reserved3">
				<return-type type="void"/>
			</vfunc>
			<vfunc name="reserved4">
				<return-type type="void"/>
			</vfunc>
		</object>
		<object name="XfcePanelPlugin" parent="GtkEventBox" type-name="XfcePanelPlugin" get-type="xfce_panel_plugin_get_type">
			<implements>
				<interface name="AtkImplementor"/>
				<interface name="GtkBuildable"/>
				<interface name="XfcePanelPluginProvider"/>
			</implements>
			<method name="add_action_widget" symbol="xfce_panel_plugin_add_action_widget">
				<return-type type="void"/>
				<parameters>
					<parameter name="plugin" type="XfcePanelPlugin*"/>
					<parameter name="widget" type="GtkWidget*"/>
				</parameters>
			</method>
			<method name="arrow_type" symbol="xfce_panel_plugin_arrow_type">
				<return-type type="GtkArrowType"/>
				<parameters>
					<parameter name="plugin" type="XfcePanelPlugin*"/>
				</parameters>
			</method>
			<method name="block_autohide" symbol="xfce_panel_plugin_block_autohide">
				<return-type type="void"/>
				<parameters>
					<parameter name="plugin" type="XfcePanelPlugin*"/>
					<parameter name="blocked" type="gboolean"/>
				</parameters>
			</method>
			<method name="block_menu" symbol="xfce_panel_plugin_block_menu">
				<return-type type="void"/>
				<parameters>
					<parameter name="plugin" type="XfcePanelPlugin*"/>
				</parameters>
			</method>
			<method name="focus_widget" symbol="xfce_panel_plugin_focus_widget">
				<return-type type="void"/>
				<parameters>
					<parameter name="plugin" type="XfcePanelPlugin*"/>
					<parameter name="widget" type="GtkWidget*"/>
				</parameters>
			</method>
			<method name="get_arguments" symbol="xfce_panel_plugin_get_arguments">
				<return-type type="gchar**"/>
				<parameters>
					<parameter name="plugin" type="XfcePanelPlugin*"/>
				</parameters>
			</method>
			<method name="get_comment" symbol="xfce_panel_plugin_get_comment">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="plugin" type="XfcePanelPlugin*"/>
				</parameters>
			</method>
			<method name="get_display_name" symbol="xfce_panel_plugin_get_display_name">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="plugin" type="XfcePanelPlugin*"/>
				</parameters>
			</method>
			<method name="get_expand" symbol="xfce_panel_plugin_get_expand">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="plugin" type="XfcePanelPlugin*"/>
				</parameters>
			</method>
			<method name="get_locked" symbol="xfce_panel_plugin_get_locked">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="plugin" type="XfcePanelPlugin*"/>
				</parameters>
			</method>
			<method name="get_mode" symbol="xfce_panel_plugin_get_mode">
				<return-type type="XfcePanelPluginMode"/>
				<parameters>
					<parameter name="plugin" type="XfcePanelPlugin*"/>
				</parameters>
			</method>
			<method name="get_name" symbol="xfce_panel_plugin_get_name">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="plugin" type="XfcePanelPlugin*"/>
				</parameters>
			</method>
			<method name="get_nrows" symbol="xfce_panel_plugin_get_nrows">
				<return-type type="guint"/>
				<parameters>
					<parameter name="plugin" type="XfcePanelPlugin*"/>
				</parameters>
			</method>
			<method name="get_orientation" symbol="xfce_panel_plugin_get_orientation">
				<return-type type="GtkOrientation"/>
				<parameters>
					<parameter name="plugin" type="XfcePanelPlugin*"/>
				</parameters>
			</method>
			<method name="get_property_base" symbol="xfce_panel_plugin_get_property_base">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="plugin" type="XfcePanelPlugin*"/>
				</parameters>
			</method>
			<method name="get_screen_position" symbol="xfce_panel_plugin_get_screen_position">
				<return-type type="XfceScreenPosition"/>
				<parameters>
					<parameter name="plugin" type="XfcePanelPlugin*"/>
				</parameters>
			</method>
			<method name="get_shrink" symbol="xfce_panel_plugin_get_shrink">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="plugin" type="XfcePanelPlugin*"/>
				</parameters>
			</method>
			<method name="get_size" symbol="xfce_panel_plugin_get_size">
				<return-type type="gint"/>
				<parameters>
					<parameter name="plugin" type="XfcePanelPlugin*"/>
				</parameters>
			</method>
			<method name="get_small" symbol="xfce_panel_plugin_get_small">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="plugin" type="XfcePanelPlugin*"/>
				</parameters>
			</method>
			<method name="get_unique_id" symbol="xfce_panel_plugin_get_unique_id">
				<return-type type="gint"/>
				<parameters>
					<parameter name="plugin" type="XfcePanelPlugin*"/>
				</parameters>
			</method>
			<method name="lookup_rc_file" symbol="xfce_panel_plugin_lookup_rc_file">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="plugin" type="XfcePanelPlugin*"/>
				</parameters>
			</method>
			<method name="menu_insert_item" symbol="xfce_panel_plugin_menu_insert_item">
				<return-type type="void"/>
				<parameters>
					<parameter name="plugin" type="XfcePanelPlugin*"/>
					<parameter name="item" type="GtkMenuItem*"/>
				</parameters>
			</method>
			<method name="menu_show_about" symbol="xfce_panel_plugin_menu_show_about">
				<return-type type="void"/>
				<parameters>
					<parameter name="plugin" type="XfcePanelPlugin*"/>
				</parameters>
			</method>
			<method name="menu_show_configure" symbol="xfce_panel_plugin_menu_show_configure">
				<return-type type="void"/>
				<parameters>
					<parameter name="plugin" type="XfcePanelPlugin*"/>
				</parameters>
			</method>
			<method name="position_menu" symbol="xfce_panel_plugin_position_menu">
				<return-type type="void"/>
				<parameters>
					<parameter name="menu" type="GtkMenu*"/>
					<parameter name="x" type="gint*"/>
					<parameter name="y" type="gint*"/>
					<parameter name="push_in" type="gboolean*"/>
					<parameter name="panel_plugin" type="gpointer"/>
				</parameters>
			</method>
			<method name="position_widget" symbol="xfce_panel_plugin_position_widget">
				<return-type type="void"/>
				<parameters>
					<parameter name="plugin" type="XfcePanelPlugin*"/>
					<parameter name="menu_widget" type="GtkWidget*"/>
					<parameter name="attach_widget" type="GtkWidget*"/>
					<parameter name="x" type="gint*"/>
					<parameter name="y" type="gint*"/>
				</parameters>
			</method>
			<method name="register_menu" symbol="xfce_panel_plugin_register_menu">
				<return-type type="void"/>
				<parameters>
					<parameter name="plugin" type="XfcePanelPlugin*"/>
					<parameter name="menu" type="GtkMenu*"/>
				</parameters>
			</method>
			<method name="remove" symbol="xfce_panel_plugin_remove">
				<return-type type="void"/>
				<parameters>
					<parameter name="plugin" type="XfcePanelPlugin*"/>
				</parameters>
			</method>
			<method name="save_location" symbol="xfce_panel_plugin_save_location">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="plugin" type="XfcePanelPlugin*"/>
					<parameter name="create" type="gboolean"/>
				</parameters>
			</method>
			<method name="set_expand" symbol="xfce_panel_plugin_set_expand">
				<return-type type="void"/>
				<parameters>
					<parameter name="plugin" type="XfcePanelPlugin*"/>
					<parameter name="expand" type="gboolean"/>
				</parameters>
			</method>
			<method name="set_shrink" symbol="xfce_panel_plugin_set_shrink">
				<return-type type="void"/>
				<parameters>
					<parameter name="plugin" type="XfcePanelPlugin*"/>
					<parameter name="shrink" type="gboolean"/>
				</parameters>
			</method>
			<method name="set_small" symbol="xfce_panel_plugin_set_small">
				<return-type type="void"/>
				<parameters>
					<parameter name="plugin" type="XfcePanelPlugin*"/>
					<parameter name="small" type="gboolean"/>
				</parameters>
			</method>
			<method name="take_window" symbol="xfce_panel_plugin_take_window">
				<return-type type="void"/>
				<parameters>
					<parameter name="plugin" type="XfcePanelPlugin*"/>
					<parameter name="window" type="GtkWindow*"/>
				</parameters>
			</method>
			<method name="unblock_menu" symbol="xfce_panel_plugin_unblock_menu">
				<return-type type="void"/>
				<parameters>
					<parameter name="plugin" type="XfcePanelPlugin*"/>
				</parameters>
			</method>
			<property name="arguments" type="GStrv*" readable="1" writable="1" construct="0" construct-only="1"/>
			<property name="comment" type="char*" readable="1" writable="1" construct="0" construct-only="1"/>
			<property name="display-name" type="char*" readable="1" writable="1" construct="0" construct-only="1"/>
			<property name="expand" type="gboolean" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="mode" type="XfcePanelPluginMode" readable="1" writable="0" construct="0" construct-only="0"/>
			<property name="name" type="char*" readable="1" writable="1" construct="0" construct-only="1"/>
			<property name="nrows" type="guint" readable="1" writable="0" construct="0" construct-only="0"/>
			<property name="orientation" type="GtkOrientation" readable="1" writable="0" construct="0" construct-only="0"/>
			<property name="screen-position" type="XfceScreenPosition" readable="1" writable="0" construct="0" construct-only="0"/>
			<property name="shrink" type="gboolean" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="size" type="gint" readable="1" writable="0" construct="0" construct-only="0"/>
			<property name="small" type="gboolean" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="unique-id" type="gint" readable="1" writable="1" construct="0" construct-only="1"/>
			<signal name="about" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="plugin" type="XfcePanelPlugin*"/>
				</parameters>
			</signal>
			<signal name="configure-plugin" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="plugin" type="XfcePanelPlugin*"/>
				</parameters>
			</signal>
			<signal name="free-data" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="plugin" type="XfcePanelPlugin*"/>
				</parameters>
			</signal>
			<signal name="mode-changed" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="plugin" type="XfcePanelPlugin*"/>
					<parameter name="mode" type="XfcePanelPluginMode"/>
				</parameters>
			</signal>
			<signal name="nrows-changed" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="plugin" type="XfcePanelPlugin*"/>
					<parameter name="rows" type="guint"/>
				</parameters>
			</signal>
			<signal name="orientation-changed" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="plugin" type="XfcePanelPlugin*"/>
					<parameter name="orientation" type="GtkOrientation"/>
				</parameters>
			</signal>
			<signal name="remote-event" when="LAST">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="plugin" type="XfcePanelPlugin*"/>
					<parameter name="name" type="char*"/>
					<parameter name="value" type="GValue*"/>
				</parameters>
			</signal>
			<signal name="removed" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="plugin" type="XfcePanelPlugin*"/>
				</parameters>
			</signal>
			<signal name="save" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="plugin" type="XfcePanelPlugin*"/>
				</parameters>
			</signal>
			<signal name="screen-position-changed" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="plugin" type="XfcePanelPlugin*"/>
					<parameter name="position" type="XfceScreenPosition"/>
				</parameters>
			</signal>
			<signal name="size-changed" when="LAST">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="plugin" type="XfcePanelPlugin*"/>
					<parameter name="size" type="gint"/>
				</parameters>
			</signal>
			<vfunc name="construct">
				<return-type type="void"/>
				<parameters>
					<parameter name="plugin" type="XfcePanelPlugin*"/>
				</parameters>
			</vfunc>
			<vfunc name="reserved1">
				<return-type type="void"/>
			</vfunc>
			<vfunc name="reserved2">
				<return-type type="void"/>
			</vfunc>
		</object>
		<interface name="XfcePanelPluginProvider" type-name="XfcePanelPluginProvider" get-type="xfce_panel_plugin_provider_get_type">
			<method name="ask_remove" symbol="xfce_panel_plugin_provider_ask_remove">
				<return-type type="void"/>
				<parameters>
					<parameter name="provider" type="XfcePanelPluginProvider*"/>
				</parameters>
			</method>
			<method name="emit_signal" symbol="xfce_panel_plugin_provider_emit_signal">
				<return-type type="void"/>
				<parameters>
					<parameter name="provider" type="XfcePanelPluginProvider*"/>
					<parameter name="provider_signal" type="XfcePanelPluginProviderSignal"/>
				</parameters>
			</method>
			<method name="get_name" symbol="xfce_panel_plugin_provider_get_name">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="provider" type="XfcePanelPluginProvider*"/>
				</parameters>
			</method>
			<method name="get_show_about" symbol="xfce_panel_plugin_provider_get_show_about">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="provider" type="XfcePanelPluginProvider*"/>
				</parameters>
			</method>
			<method name="get_show_configure" symbol="xfce_panel_plugin_provider_get_show_configure">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="provider" type="XfcePanelPluginProvider*"/>
				</parameters>
			</method>
			<method name="get_unique_id" symbol="xfce_panel_plugin_provider_get_unique_id">
				<return-type type="gint"/>
				<parameters>
					<parameter name="provider" type="XfcePanelPluginProvider*"/>
				</parameters>
			</method>
			<method name="remote_event" symbol="xfce_panel_plugin_provider_remote_event">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="provider" type="XfcePanelPluginProvider*"/>
					<parameter name="name" type="gchar*"/>
					<parameter name="value" type="GValue*"/>
					<parameter name="handle" type="guint*"/>
				</parameters>
			</method>
			<method name="removed" symbol="xfce_panel_plugin_provider_removed">
				<return-type type="void"/>
				<parameters>
					<parameter name="provider" type="XfcePanelPluginProvider*"/>
				</parameters>
			</method>
			<method name="save" symbol="xfce_panel_plugin_provider_save">
				<return-type type="void"/>
				<parameters>
					<parameter name="provider" type="XfcePanelPluginProvider*"/>
				</parameters>
			</method>
			<method name="set_locked" symbol="xfce_panel_plugin_provider_set_locked">
				<return-type type="void"/>
				<parameters>
					<parameter name="provider" type="XfcePanelPluginProvider*"/>
					<parameter name="locked" type="gboolean"/>
				</parameters>
			</method>
			<method name="set_mode" symbol="xfce_panel_plugin_provider_set_mode">
				<return-type type="void"/>
				<parameters>
					<parameter name="provider" type="XfcePanelPluginProvider*"/>
					<parameter name="mode" type="XfcePanelPluginMode"/>
				</parameters>
			</method>
			<method name="set_nrows" symbol="xfce_panel_plugin_provider_set_nrows">
				<return-type type="void"/>
				<parameters>
					<parameter name="provider" type="XfcePanelPluginProvider*"/>
					<parameter name="rows" type="guint"/>
				</parameters>
			</method>
			<method name="set_screen_position" symbol="xfce_panel_plugin_provider_set_screen_position">
				<return-type type="void"/>
				<parameters>
					<parameter name="provider" type="XfcePanelPluginProvider*"/>
					<parameter name="screen_position" type="XfceScreenPosition"/>
				</parameters>
			</method>
			<method name="set_size" symbol="xfce_panel_plugin_provider_set_size">
				<return-type type="void"/>
				<parameters>
					<parameter name="provider" type="XfcePanelPluginProvider*"/>
					<parameter name="size" type="gint"/>
				</parameters>
			</method>
			<method name="show_about" symbol="xfce_panel_plugin_provider_show_about">
				<return-type type="void"/>
				<parameters>
					<parameter name="provider" type="XfcePanelPluginProvider*"/>
				</parameters>
			</method>
			<method name="show_configure" symbol="xfce_panel_plugin_provider_show_configure">
				<return-type type="void"/>
				<parameters>
					<parameter name="provider" type="XfcePanelPluginProvider*"/>
				</parameters>
			</method>
			<signal name="provider-signal" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="object" type="XfcePanelPluginProvider*"/>
					<parameter name="p0" type="guint"/>
				</parameters>
			</signal>
			<vfunc name="ask_remove">
				<return-type type="void"/>
				<parameters>
					<parameter name="provider" type="XfcePanelPluginProvider*"/>
				</parameters>
			</vfunc>
			<vfunc name="get_name">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="provider" type="XfcePanelPluginProvider*"/>
				</parameters>
			</vfunc>
			<vfunc name="get_show_about">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="provider" type="XfcePanelPluginProvider*"/>
				</parameters>
			</vfunc>
			<vfunc name="get_show_configure">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="provider" type="XfcePanelPluginProvider*"/>
				</parameters>
			</vfunc>
			<vfunc name="get_unique_id">
				<return-type type="gint"/>
				<parameters>
					<parameter name="provider" type="XfcePanelPluginProvider*"/>
				</parameters>
			</vfunc>
			<vfunc name="remote_event">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="provider" type="XfcePanelPluginProvider*"/>
					<parameter name="name" type="gchar*"/>
					<parameter name="value" type="GValue*"/>
					<parameter name="handle" type="guint*"/>
				</parameters>
			</vfunc>
			<vfunc name="removed">
				<return-type type="void"/>
				<parameters>
					<parameter name="provider" type="XfcePanelPluginProvider*"/>
				</parameters>
			</vfunc>
			<vfunc name="save">
				<return-type type="void"/>
				<parameters>
					<parameter name="provider" type="XfcePanelPluginProvider*"/>
				</parameters>
			</vfunc>
			<vfunc name="set_locked">
				<return-type type="void"/>
				<parameters>
					<parameter name="provider" type="XfcePanelPluginProvider*"/>
					<parameter name="locked" type="gboolean"/>
				</parameters>
			</vfunc>
			<vfunc name="set_mode">
				<return-type type="void"/>
				<parameters>
					<parameter name="provider" type="XfcePanelPluginProvider*"/>
					<parameter name="mode" type="XfcePanelPluginMode"/>
				</parameters>
			</vfunc>
			<vfunc name="set_nrows">
				<return-type type="void"/>
				<parameters>
					<parameter name="provider" type="XfcePanelPluginProvider*"/>
					<parameter name="rows" type="guint"/>
				</parameters>
			</vfunc>
			<vfunc name="set_screen_position">
				<return-type type="void"/>
				<parameters>
					<parameter name="provider" type="XfcePanelPluginProvider*"/>
					<parameter name="screen_position" type="XfceScreenPosition"/>
				</parameters>
			</vfunc>
			<vfunc name="set_size">
				<return-type type="void"/>
				<parameters>
					<parameter name="provider" type="XfcePanelPluginProvider*"/>
					<parameter name="size" type="gint"/>
				</parameters>
			</vfunc>
			<vfunc name="show_about">
				<return-type type="void"/>
				<parameters>
					<parameter name="provider" type="XfcePanelPluginProvider*"/>
				</parameters>
			</vfunc>
			<vfunc name="show_configure">
				<return-type type="void"/>
				<parameters>
					<parameter name="provider" type="XfcePanelPluginProvider*"/>
				</parameters>
			</vfunc>
		</interface>
		<constant name="LIBXFCE4PANEL_MAJOR_VERSION" type="int" value="4"/>
		<constant name="LIBXFCE4PANEL_MICRO_VERSION" type="int" value="0"/>
		<constant name="LIBXFCE4PANEL_MINOR_VERSION" type="int" value="13"/>
		<constant name="LIBXFCE4PANEL_VERSION" type="char*" value="4.13.0git-2b0ad995"/>
	</namespace>
</api>
