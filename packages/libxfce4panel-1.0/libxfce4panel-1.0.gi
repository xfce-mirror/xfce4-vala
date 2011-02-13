<?xml version="1.0"?>
<api version="1.0">
	<namespace name="Xfce">
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
			<method name="get_name" symbol="xfce_panel_plugin_get_name">
				<return-type type="gchar*"/>
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
			<method name="get_size" symbol="xfce_panel_plugin_get_size">
				<return-type type="gint"/>
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
			<property name="name" type="char*" readable="1" writable="1" construct="0" construct-only="1"/>
			<property name="orientation" type="GtkOrientation" readable="1" writable="0" construct="0" construct-only="0"/>
			<property name="screen-position" type="XfceScreenPosition" readable="1" writable="0" construct="0" construct-only="0"/>
			<property name="size" type="gint" readable="1" writable="0" construct="0" construct-only="0"/>
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
			<vfunc name="reserved3">
				<return-type type="void"/>
			</vfunc>
			<vfunc name="reserved4">
				<return-type type="void"/>
			</vfunc>
		</object>
		<constant name="PANEL_PARAM_READABLE" type="int" value="0"/>
		<constant name="PANEL_PARAM_READWRITE" type="int" value="0"/>
		<constant name="PANEL_PARAM_WRITABLE" type="int" value="0"/>
	</namespace>
</api>
