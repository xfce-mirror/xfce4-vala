<?xml version="1.0"?>
<api version="1.0">
	<namespace name="Xfce">
		<function name="dialog_confirm" symbol="xfce_dialog_confirm">
			<return-type type="gboolean"/>
			<parameters>
				<parameter name="parent" type="GtkWindow*"/>
				<parameter name="stock_id" type="gchar*"/>
				<parameter name="confirm_label" type="gchar*"/>
				<parameter name="secondary_text" type="gchar*"/>
				<parameter name="primary_format" type="gchar*"/>
			</parameters>
		</function>
		<function name="dialog_show_error" symbol="xfce_dialog_show_error">
			<return-type type="void"/>
			<parameters>
				<parameter name="parent" type="GtkWindow*"/>
				<parameter name="error" type="GError*"/>
				<parameter name="primary_format" type="gchar*"/>
			</parameters>
		</function>
		<function name="dialog_show_help" symbol="xfce_dialog_show_help">
			<return-type type="void"/>
			<parameters>
				<parameter name="parent" type="GtkWindow*"/>
				<parameter name="application" type="gchar*"/>
				<parameter name="page" type="gchar*"/>
				<parameter name="offset" type="gchar*"/>
			</parameters>
		</function>
		<function name="dialog_show_help_with_version" symbol="xfce_dialog_show_help_with_version">
			<return-type type="void"/>
			<parameters>
				<parameter name="parent" type="GtkWindow*"/>
				<parameter name="application" type="gchar*"/>
				<parameter name="page" type="gchar*"/>
				<parameter name="offset" type="gchar*"/>
				<parameter name="version" type="gchar*"/>
			</parameters>
		</function>
		<function name="dialog_show_info" symbol="xfce_dialog_show_info">
			<return-type type="void"/>
			<parameters>
				<parameter name="parent" type="GtkWindow*"/>
				<parameter name="secondary_text" type="gchar*"/>
				<parameter name="primary_format" type="gchar*"/>
			</parameters>
		</function>
		<function name="dialog_show_warning" symbol="xfce_dialog_show_warning">
			<return-type type="void"/>
			<parameters>
				<parameter name="parent" type="GtkWindow*"/>
				<parameter name="secondary_text" type="gchar*"/>
				<parameter name="primary_format" type="gchar*"/>
			</parameters>
		</function>
		<function name="gdk_screen_get_active" symbol="xfce_gdk_screen_get_active">
			<return-type type="GdkScreen*"/>
			<parameters>
				<parameter name="monitor_return" type="gint*"/>
			</parameters>
		</function>
		<function name="gtk_button_new_mixed" symbol="xfce_gtk_button_new_mixed">
			<return-type type="GtkWidget*"/>
			<parameters>
				<parameter name="stock_id" type="gchar*"/>
				<parameter name="label" type="gchar*"/>
			</parameters>
		</function>
		<function name="gtk_frame_box_new" symbol="xfce_gtk_frame_box_new">
			<return-type type="GtkWidget*"/>
			<parameters>
				<parameter name="label" type="gchar*"/>
				<parameter name="container_return" type="GtkWidget**"/>
			</parameters>
		</function>
		<function name="gtk_frame_box_new_with_content" symbol="xfce_gtk_frame_box_new_with_content">
			<return-type type="GtkWidget*"/>
			<parameters>
				<parameter name="label" type="gchar*"/>
				<parameter name="content" type="GtkWidget*"/>
			</parameters>
		</function>
		<function name="gtk_menu_popup_until_mapped" symbol="xfce_gtk_menu_popup_until_mapped">
			<return-type type="gboolean"/>
			<parameters>
				<parameter name="menu" type="GtkMenu*"/>
				<parameter name="parent_menu_shell" type="GtkWidget*"/>
				<parameter name="parent_menu_item" type="GtkWidget*"/>
				<parameter name="func" type="GtkMenuPositionFunc"/>
				<parameter name="data" type="gpointer"/>
				<parameter name="button" type="guint"/>
				<parameter name="activate_time" type="guint32"/>
			</parameters>
		</function>
		<function name="gtk_window_center_on_active_screen" symbol="xfce_gtk_window_center_on_active_screen">
			<return-type type="void"/>
			<parameters>
				<parameter name="window" type="GtkWindow*"/>
			</parameters>
		</function>
		<function name="libxfce4ui_check_version" symbol="libxfce4ui_check_version">
			<return-type type="gchar*"/>
			<parameters>
				<parameter name="required_major" type="guint"/>
				<parameter name="required_minor" type="guint"/>
				<parameter name="required_micro" type="guint"/>
			</parameters>
		</function>
		<function name="message_dialog" symbol="xfce_message_dialog">
			<return-type type="gint"/>
			<parameters>
				<parameter name="parent" type="GtkWindow*"/>
				<parameter name="title" type="gchar*"/>
				<parameter name="stock_id" type="gchar*"/>
				<parameter name="primary_text" type="gchar*"/>
				<parameter name="secondary_text" type="gchar*"/>
				<parameter name="first_button_text" type="gchar*"/>
			</parameters>
		</function>
		<function name="message_dialog_new" symbol="xfce_message_dialog_new">
			<return-type type="GtkWidget*"/>
			<parameters>
				<parameter name="parent" type="GtkWindow*"/>
				<parameter name="title" type="gchar*"/>
				<parameter name="stock_id" type="gchar*"/>
				<parameter name="primary_text" type="gchar*"/>
				<parameter name="secondary_text" type="gchar*"/>
				<parameter name="first_button_text" type="gchar*"/>
			</parameters>
		</function>
		<function name="message_dialog_new_valist" symbol="xfce_message_dialog_new_valist">
			<return-type type="GtkWidget*"/>
			<parameters>
				<parameter name="parent" type="GtkWindow*"/>
				<parameter name="title" type="gchar*"/>
				<parameter name="icon_stock_id" type="gchar*"/>
				<parameter name="primary_text" type="gchar*"/>
				<parameter name="secondary_text" type="gchar*"/>
				<parameter name="first_button_text" type="gchar*"/>
				<parameter name="args" type="va_list"/>
			</parameters>
		</function>
		<function name="spawn_command_line_on_screen" symbol="xfce_spawn_command_line_on_screen">
			<return-type type="gboolean"/>
			<parameters>
				<parameter name="screen" type="GdkScreen*"/>
				<parameter name="command_line" type="gchar*"/>
				<parameter name="in_terminal" type="gboolean"/>
				<parameter name="startup_notify" type="gboolean"/>
				<parameter name="error" type="GError**"/>
			</parameters>
		</function>
		<function name="spawn_on_screen" symbol="xfce_spawn_on_screen">
			<return-type type="gboolean"/>
			<parameters>
				<parameter name="screen" type="GdkScreen*"/>
				<parameter name="working_directory" type="gchar*"/>
				<parameter name="argv" type="gchar**"/>
				<parameter name="envp" type="gchar**"/>
				<parameter name="flags" type="GSpawnFlags"/>
				<parameter name="startup_notify" type="gboolean"/>
				<parameter name="startup_timestamp" type="guint32"/>
				<parameter name="startup_icon_name" type="gchar*"/>
				<parameter name="error" type="GError**"/>
			</parameters>
		</function>
		<function name="spawn_on_screen_with_child_watch" symbol="xfce_spawn_on_screen_with_child_watch">
			<return-type type="gboolean"/>
			<parameters>
				<parameter name="screen" type="GdkScreen*"/>
				<parameter name="working_directory" type="gchar*"/>
				<parameter name="argv" type="gchar**"/>
				<parameter name="envp" type="gchar**"/>
				<parameter name="flags" type="GSpawnFlags"/>
				<parameter name="startup_notify" type="gboolean"/>
				<parameter name="startup_timestamp" type="guint32"/>
				<parameter name="startup_icon_name" type="gchar*"/>
				<parameter name="child_watch_closure" type="GClosure*"/>
				<parameter name="error" type="GError**"/>
			</parameters>
		</function>
		<function name="widget_reparent" symbol="xfce_widget_reparent">
			<return-type type="gboolean"/>
			<parameters>
				<parameter name="widget" type="GtkWidget*"/>
				<parameter name="new_parent" type="GtkWidget*"/>
			</parameters>
		</function>
		<enum name="XfceSMClientPriority">
			<member name="XFCE_SM_CLIENT_PRIORITY_HIGHEST" value="0"/>
			<member name="XFCE_SM_CLIENT_PRIORITY_WM" value="15"/>
			<member name="XFCE_SM_CLIENT_PRIORITY_CORE" value="25"/>
			<member name="XFCE_SM_CLIENT_PRIORITY_DESKTOP" value="35"/>
			<member name="XFCE_SM_CLIENT_PRIORITY_DEFAULT" value="50"/>
			<member name="XFCE_SM_CLIENT_PRIORITY_LOWEST" value="255"/>
		</enum>
		<enum name="XfceSMClientRestartStyle" type-name="XfceSMClientRestartStyle" get-type="xfce_sm_client_restart_style_get_type">
			<member name="XFCE_SM_CLIENT_RESTART_NORMAL" value="0"/>
			<member name="XFCE_SM_CLIENT_RESTART_IMMEDIATELY" value="1"/>
		</enum>
		<enum name="XfceSMClientShutdownHint" type-name="XfceSMClientShutdownHint" get-type="xfce_sm_client_shutdown_hint_get_type">
			<member name="XFCE_SM_CLIENT_SHUTDOWN_HINT_ASK" value="0"/>
			<member name="XFCE_SM_CLIENT_SHUTDOWN_HINT_LOGOUT" value="1"/>
			<member name="XFCE_SM_CLIENT_SHUTDOWN_HINT_HALT" value="2"/>
			<member name="XFCE_SM_CLIENT_SHUTDOWN_HINT_REBOOT" value="3"/>
		</enum>
		<enum name="XfceSmCLientErrorEnum" type-name="XfceSmCLientErrorEnum" get-type="xfce_sm_client_error_enum_get_type">
			<member name="XFCE_SM_CLIENT_ERROR_FAILED" value="0"/>
			<member name="XFCE_SM_CLIENT_ERROR_INVALID_CLIENT" value="1"/>
		</enum>
		<object name="XfceSMClient" parent="GObject" type-name="XfceSMClient" get-type="xfce_sm_client_get_type">
			<method name="connect" symbol="xfce_sm_client_connect">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="sm_client" type="XfceSMClient*"/>
					<parameter name="error" type="GError**"/>
				</parameters>
			</method>
			<method name="disconnect" symbol="xfce_sm_client_disconnect">
				<return-type type="void"/>
				<parameters>
					<parameter name="sm_client" type="XfceSMClient*"/>
				</parameters>
			</method>
			<method name="error_quark" symbol="xfce_sm_client_error_quark">
				<return-type type="GQuark"/>
			</method>
			<method name="get" symbol="xfce_sm_client_get">
				<return-type type="XfceSMClient*"/>
			</method>
			<method name="get_client_id" symbol="xfce_sm_client_get_client_id">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="sm_client" type="XfceSMClient*"/>
				</parameters>
			</method>
			<method name="get_current_directory" symbol="xfce_sm_client_get_current_directory">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="sm_client" type="XfceSMClient*"/>
				</parameters>
			</method>
			<method name="get_full" symbol="xfce_sm_client_get_full">
				<return-type type="XfceSMClient*"/>
				<parameters>
					<parameter name="restart_style" type="XfceSMClientRestartStyle"/>
					<parameter name="priority" type="guchar"/>
					<parameter name="resumed_client_id" type="gchar*"/>
					<parameter name="current_directory" type="gchar*"/>
					<parameter name="restart_command" type="gchar**"/>
					<parameter name="desktop_file" type="gchar*"/>
				</parameters>
			</method>
			<method name="get_option_group" symbol="xfce_sm_client_get_option_group">
				<return-type type="GOptionGroup*"/>
				<parameters>
					<parameter name="argc" type="gint"/>
					<parameter name="argv" type="gchar**"/>
				</parameters>
			</method>
			<method name="get_priority" symbol="xfce_sm_client_get_priority">
				<return-type type="guint8"/>
				<parameters>
					<parameter name="sm_client" type="XfceSMClient*"/>
				</parameters>
			</method>
			<method name="get_restart_command" symbol="xfce_sm_client_get_restart_command">
				<return-type type="gchar**"/>
				<parameters>
					<parameter name="sm_client" type="XfceSMClient*"/>
				</parameters>
			</method>
			<method name="get_restart_style" symbol="xfce_sm_client_get_restart_style">
				<return-type type="XfceSMClientRestartStyle"/>
				<parameters>
					<parameter name="sm_client" type="XfceSMClient*"/>
				</parameters>
			</method>
			<method name="get_state_file" symbol="xfce_sm_client_get_state_file">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="sm_client" type="XfceSMClient*"/>
				</parameters>
			</method>
			<method name="get_with_argv" symbol="xfce_sm_client_get_with_argv">
				<return-type type="XfceSMClient*"/>
				<parameters>
					<parameter name="argc" type="gint"/>
					<parameter name="argv" type="gchar**"/>
					<parameter name="restart_style" type="XfceSMClientRestartStyle"/>
					<parameter name="priority" type="guchar"/>
				</parameters>
			</method>
			<method name="is_connected" symbol="xfce_sm_client_is_connected">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="sm_client" type="XfceSMClient*"/>
				</parameters>
			</method>
			<method name="is_resumed" symbol="xfce_sm_client_is_resumed">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="sm_client" type="XfceSMClient*"/>
				</parameters>
			</method>
			<method name="request_shutdown" symbol="xfce_sm_client_request_shutdown">
				<return-type type="void"/>
				<parameters>
					<parameter name="sm_client" type="XfceSMClient*"/>
					<parameter name="shutdown_hint" type="XfceSMClientShutdownHint"/>
				</parameters>
			</method>
			<method name="set_current_directory" symbol="xfce_sm_client_set_current_directory">
				<return-type type="void"/>
				<parameters>
					<parameter name="sm_client" type="XfceSMClient*"/>
					<parameter name="current_directory" type="gchar*"/>
				</parameters>
			</method>
			<method name="set_desktop_file" symbol="xfce_sm_client_set_desktop_file">
				<return-type type="void"/>
				<parameters>
					<parameter name="sm_client" type="XfceSMClient*"/>
					<parameter name="desktop_file" type="gchar*"/>
				</parameters>
			</method>
			<method name="set_priority" symbol="xfce_sm_client_set_priority">
				<return-type type="void"/>
				<parameters>
					<parameter name="sm_client" type="XfceSMClient*"/>
					<parameter name="priority" type="guint8"/>
				</parameters>
			</method>
			<method name="set_restart_command" symbol="xfce_sm_client_set_restart_command">
				<return-type type="void"/>
				<parameters>
					<parameter name="sm_client" type="XfceSMClient*"/>
					<parameter name="restart_command" type="gchar**"/>
				</parameters>
			</method>
			<method name="set_restart_style" symbol="xfce_sm_client_set_restart_style">
				<return-type type="void"/>
				<parameters>
					<parameter name="sm_client" type="XfceSMClient*"/>
					<parameter name="restart_style" type="XfceSMClientRestartStyle"/>
				</parameters>
			</method>
			<property name="argc" type="gint" readable="0" writable="1" construct="0" construct-only="1"/>
			<property name="argv" type="GStrv*" readable="0" writable="1" construct="0" construct-only="1"/>
			<property name="client-id" type="char*" readable="1" writable="1" construct="0" construct-only="1"/>
			<property name="current-directory" type="char*" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="desktop-file" type="char*" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="priority" type="guchar" readable="1" writable="1" construct="1" construct-only="0"/>
			<property name="restart-command" type="GStrv*" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="restart-style" type="XfceSMClientRestartStyle" readable="1" writable="1" construct="1" construct-only="0"/>
			<property name="resumed" type="gboolean" readable="1" writable="0" construct="0" construct-only="0"/>
			<signal name="quit" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="object" type="XfceSMClient*"/>
				</parameters>
			</signal>
			<signal name="quit-cancelled" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="object" type="XfceSMClient*"/>
				</parameters>
			</signal>
			<signal name="quit-requested" when="LAST">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="object" type="XfceSMClient*"/>
				</parameters>
			</signal>
			<signal name="save-state" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="object" type="XfceSMClient*"/>
				</parameters>
			</signal>
			<signal name="save-state-extended" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="object" type="XfceSMClient*"/>
				</parameters>
			</signal>
		</object>
		<object name="XfceTitledDialog" parent="GtkDialog" type-name="XfceTitledDialog" get-type="xfce_titled_dialog_get_type">
			<implements>
				<interface name="AtkImplementor"/>
				<interface name="GtkBuildable"/>
			</implements>
			<method name="get_subtitle" symbol="xfce_titled_dialog_get_subtitle">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="titled_dialog" type="XfceTitledDialog*"/>
				</parameters>
			</method>
			<constructor name="new" symbol="xfce_titled_dialog_new">
				<return-type type="GtkWidget*"/>
			</constructor>
			<constructor name="new_with_buttons" symbol="xfce_titled_dialog_new_with_buttons">
				<return-type type="GtkWidget*"/>
				<parameters>
					<parameter name="title" type="gchar*"/>
					<parameter name="parent" type="GtkWindow*"/>
					<parameter name="flags" type="GtkDialogFlags"/>
					<parameter name="first_button_text" type="gchar*"/>
				</parameters>
			</constructor>
			<constructor name="new_with_mixed_buttons" symbol="xfce_titled_dialog_new_with_mixed_buttons">
				<return-type type="GtkWidget*"/>
				<parameters>
					<parameter name="title" type="gchar*"/>
					<parameter name="parent" type="GtkWindow*"/>
					<parameter name="flags" type="GtkDialogFlags"/>
					<parameter name="first_button_icon_name" type="gchar*"/>
					<parameter name="first_button_text" type="gchar*"/>
				</parameters>
			</constructor>
			<method name="set_subtitle" symbol="xfce_titled_dialog_set_subtitle">
				<return-type type="void"/>
				<parameters>
					<parameter name="titled_dialog" type="XfceTitledDialog*"/>
					<parameter name="subtitle" type="gchar*"/>
				</parameters>
			</method>
			<property name="subtitle" type="char*" readable="1" writable="1" construct="0" construct-only="0"/>
			<vfunc name="reserved0">
				<return-type type="void"/>
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
			<vfunc name="reserved5">
				<return-type type="void"/>
			</vfunc>
		</object>
		<constant name="LIBXFCE4UI_MAJOR_VERSION" type="int" value="4"/>
		<constant name="LIBXFCE4UI_MICRO_VERSION" type="int" value="1"/>
		<constant name="LIBXFCE4UI_MINOR_VERSION" type="int" value="13"/>
		<constant name="XFCE_BUTTON_TYPE_MIXED" type="char*" value="button-mixed"/>
		<constant name="XFCE_BUTTON_TYPE_PIXBUF" type="char*" value="button-pixbuf"/>
	</namespace>
</api>
