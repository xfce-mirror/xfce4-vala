<?xml version="1.0"?>
<api version="1.0">
	<namespace name="Xfce">
		<function name="client_session_free" symbol="client_session_free">
			<return-type type="void"/>
			<parameters>
				<parameter name="session_client" type="SessionClient*"/>
			</parameters>
		</function>
		<function name="client_session_get_client_id" symbol="client_session_get_client_id">
			<return-type type="gchar*"/>
			<parameters>
				<parameter name="session_client" type="SessionClient*"/>
			</parameters>
		</function>
		<function name="client_session_get_clone_command" symbol="client_session_get_clone_command">
			<return-type type="gchar**"/>
			<parameters>
				<parameter name="session_client" type="SessionClient*"/>
			</parameters>
		</function>
		<function name="client_session_get_current_directory" symbol="client_session_get_current_directory">
			<return-type type="gchar*"/>
			<parameters>
				<parameter name="session_client" type="SessionClient*"/>
			</parameters>
		</function>
		<function name="client_session_get_current_state" symbol="client_session_get_current_state">
			<return-type type="SessionClientState"/>
			<parameters>
				<parameter name="session_client" type="SessionClient*"/>
			</parameters>
		</function>
		<function name="client_session_get_data" symbol="client_session_get_data">
			<return-type type="gpointer"/>
			<parameters>
				<parameter name="session_client" type="SessionClient*"/>
			</parameters>
		</function>
		<function name="client_session_get_die_callback" symbol="client_session_get_die_callback">
			<return-type type="die_callback"/>
			<parameters>
				<parameter name="session_client" type="SessionClient*"/>
			</parameters>
		</function>
		<function name="client_session_get_discard_command" symbol="client_session_get_discard_command">
			<return-type type="gchar**"/>
			<parameters>
				<parameter name="session_client" type="SessionClient*"/>
			</parameters>
		</function>
		<function name="client_session_get_given_client_id" symbol="client_session_get_given_client_id">
			<return-type type="gchar*"/>
			<parameters>
				<parameter name="session_client" type="SessionClient*"/>
			</parameters>
		</function>
		<function name="client_session_get_interact_callback" symbol="client_session_get_interact_callback">
			<return-type type="interact_callback"/>
			<parameters>
				<parameter name="session_client" type="SessionClient*"/>
			</parameters>
		</function>
		<function name="client_session_get_interact_style" symbol="client_session_get_interact_style">
			<return-type type="SessionInteractStyle"/>
			<parameters>
				<parameter name="session_client" type="SessionClient*"/>
			</parameters>
		</function>
		<function name="client_session_get_priority" symbol="client_session_get_priority">
			<return-type type="gchar"/>
			<parameters>
				<parameter name="session_client" type="SessionClient*"/>
			</parameters>
		</function>
		<function name="client_session_get_program" symbol="client_session_get_program">
			<return-type type="gchar*"/>
			<parameters>
				<parameter name="session_client" type="SessionClient*"/>
			</parameters>
		</function>
		<function name="client_session_get_resign_command" symbol="client_session_get_resign_command">
			<return-type type="gchar**"/>
			<parameters>
				<parameter name="session_client" type="SessionClient*"/>
			</parameters>
		</function>
		<function name="client_session_get_restart_command" symbol="client_session_get_restart_command">
			<return-type type="gchar**"/>
			<parameters>
				<parameter name="session_client" type="SessionClient*"/>
			</parameters>
		</function>
		<function name="client_session_get_restart_style" symbol="client_session_get_restart_style">
			<return-type type="SessionRestartStyle"/>
			<parameters>
				<parameter name="session_client" type="SessionClient*"/>
			</parameters>
		</function>
		<function name="client_session_get_save_complete_callback" symbol="client_session_get_save_complete_callback">
			<return-type type="save_complete_callback"/>
			<parameters>
				<parameter name="session_client" type="SessionClient*"/>
			</parameters>
		</function>
		<function name="client_session_get_save_phase_2_callback" symbol="client_session_get_save_phase_2_callback">
			<return-type type="save_phase_2_callback"/>
			<parameters>
				<parameter name="session_client" type="SessionClient*"/>
			</parameters>
		</function>
		<function name="client_session_get_save_yourself_callback" symbol="client_session_get_save_yourself_callback">
			<return-type type="save_yourself_callback"/>
			<parameters>
				<parameter name="session_client" type="SessionClient*"/>
			</parameters>
		</function>
		<function name="client_session_get_session_connection" symbol="client_session_get_session_connection">
			<return-type type="gpointer"/>
			<parameters>
				<parameter name="session_client" type="SessionClient*"/>
			</parameters>
		</function>
		<function name="client_session_get_shutdown_cancelled_callback" symbol="client_session_get_shutdown_cancelled_callback">
			<return-type type="shutdown_cancelled_callback"/>
			<parameters>
				<parameter name="session_client" type="SessionClient*"/>
			</parameters>
		</function>
		<function name="client_session_get_shutdown_command" symbol="client_session_get_shutdown_command">
			<return-type type="gchar**"/>
			<parameters>
				<parameter name="session_client" type="SessionClient*"/>
			</parameters>
		</function>
		<function name="client_session_new" symbol="client_session_new">
			<return-type type="SessionClient*"/>
			<parameters>
				<parameter name="argc" type="gint"/>
				<parameter name="argv" type="gchar*[]"/>
				<parameter name="data" type="gpointer"/>
				<parameter name="restart_style" type="SessionRestartStyle"/>
				<parameter name="priority" type="gchar"/>
			</parameters>
		</function>
		<function name="client_session_new_full" symbol="client_session_new_full">
			<return-type type="SessionClient*"/>
			<parameters>
				<parameter name="data" type="gpointer"/>
				<parameter name="restart_style" type="SessionRestartStyle"/>
				<parameter name="priority" type="gchar"/>
				<parameter name="client_id" type="gchar*"/>
				<parameter name="program" type="gchar*"/>
				<parameter name="current_directory" type="gchar*"/>
				<parameter name="restart_command" type="gchar**"/>
				<parameter name="clone_command" type="gchar**"/>
				<parameter name="discard_command" type="gchar**"/>
				<parameter name="resign_command" type="gchar**"/>
				<parameter name="shutdown_command" type="gchar**"/>
			</parameters>
		</function>
		<function name="client_session_set_client_id" symbol="client_session_set_client_id">
			<return-type type="void"/>
			<parameters>
				<parameter name="session_client" type="SessionClient*"/>
				<parameter name="value" type="gchar*"/>
			</parameters>
		</function>
		<function name="client_session_set_clone_command" symbol="client_session_set_clone_command">
			<return-type type="void"/>
			<parameters>
				<parameter name="session_client" type="SessionClient*"/>
				<parameter name="value" type="gchar**"/>
			</parameters>
		</function>
		<function name="client_session_set_current_directory" symbol="client_session_set_current_directory">
			<return-type type="void"/>
			<parameters>
				<parameter name="session_client" type="SessionClient*"/>
				<parameter name="value" type="gchar*"/>
			</parameters>
		</function>
		<function name="client_session_set_data" symbol="client_session_set_data">
			<return-type type="void"/>
			<parameters>
				<parameter name="session_client" type="SessionClient*"/>
				<parameter name="value" type="gpointer"/>
			</parameters>
		</function>
		<function name="client_session_set_die_callback" symbol="client_session_set_die_callback">
			<return-type type="void"/>
			<parameters>
				<parameter name="session_client" type="SessionClient*"/>
				<parameter name="value" type="die_callback"/>
			</parameters>
		</function>
		<function name="client_session_set_discard_command" symbol="client_session_set_discard_command">
			<return-type type="void"/>
			<parameters>
				<parameter name="session_client" type="SessionClient*"/>
				<parameter name="value" type="gchar**"/>
			</parameters>
		</function>
		<function name="client_session_set_interact_callback" symbol="client_session_set_interact_callback">
			<return-type type="void"/>
			<parameters>
				<parameter name="session_client" type="SessionClient*"/>
				<parameter name="value" type="interact_callback"/>
			</parameters>
		</function>
		<function name="client_session_set_priority" symbol="client_session_set_priority">
			<return-type type="void"/>
			<parameters>
				<parameter name="session_client" type="SessionClient*"/>
				<parameter name="value" type="gchar"/>
			</parameters>
		</function>
		<function name="client_session_set_program" symbol="client_session_set_program">
			<return-type type="void"/>
			<parameters>
				<parameter name="session_client" type="SessionClient*"/>
				<parameter name="value" type="gchar*"/>
			</parameters>
		</function>
		<function name="client_session_set_resign_command" symbol="client_session_set_resign_command">
			<return-type type="void"/>
			<parameters>
				<parameter name="session_client" type="SessionClient*"/>
				<parameter name="value" type="gchar**"/>
			</parameters>
		</function>
		<function name="client_session_set_restart_command" symbol="client_session_set_restart_command">
			<return-type type="void"/>
			<parameters>
				<parameter name="session_client" type="SessionClient*"/>
				<parameter name="value" type="gchar**"/>
			</parameters>
		</function>
		<function name="client_session_set_restart_style" symbol="client_session_set_restart_style">
			<return-type type="void"/>
			<parameters>
				<parameter name="session_client" type="SessionClient*"/>
				<parameter name="value" type="SessionRestartStyle"/>
			</parameters>
		</function>
		<function name="client_session_set_save_complete_callback" symbol="client_session_set_save_complete_callback">
			<return-type type="void"/>
			<parameters>
				<parameter name="session_client" type="SessionClient*"/>
				<parameter name="value" type="save_complete_callback"/>
			</parameters>
		</function>
		<function name="client_session_set_save_phase_2_callback" symbol="client_session_set_save_phase_2_callback">
			<return-type type="void"/>
			<parameters>
				<parameter name="session_client" type="SessionClient*"/>
				<parameter name="value" type="save_phase_2_callback"/>
			</parameters>
		</function>
		<function name="client_session_set_save_yourself_callback" symbol="client_session_set_save_yourself_callback">
			<return-type type="void"/>
			<parameters>
				<parameter name="session_client" type="SessionClient*"/>
				<parameter name="value" type="save_yourself_callback"/>
			</parameters>
		</function>
		<function name="client_session_set_shutdown_cancelled_callback" symbol="client_session_set_shutdown_cancelled_callback">
			<return-type type="void"/>
			<parameters>
				<parameter name="session_client" type="SessionClient*"/>
				<parameter name="value" type="shutdown_cancelled_callback"/>
			</parameters>
		</function>
		<function name="client_session_set_shutdown_command" symbol="client_session_set_shutdown_command">
			<return-type type="void"/>
			<parameters>
				<parameter name="session_client" type="SessionClient*"/>
				<parameter name="value" type="gchar**"/>
			</parameters>
		</function>
		<function name="confirm" symbol="xfce_confirm">
			<return-type type="gboolean"/>
			<parameters>
				<parameter name="text" type="gchar*"/>
				<parameter name="stock_id" type="gchar*"/>
				<parameter name="action" type="gchar*"/>
			</parameters>
		</function>
		<function name="create_framebox" symbol="xfce_create_framebox">
			<return-type type="GtkWidget*"/>
			<parameters>
				<parameter name="title" type="gchar*"/>
				<parameter name="frame_bin" type="GtkWidget**"/>
			</parameters>
		</function>
		<function name="create_framebox_with_content" symbol="xfce_create_framebox_with_content">
			<return-type type="GtkWidget*"/>
			<parameters>
				<parameter name="title" type="gchar*"/>
				<parameter name="content" type="GtkWidget*"/>
			</parameters>
		</function>
		<function name="create_header" symbol="xfce_create_header">
			<return-type type="GtkWidget*"/>
			<parameters>
				<parameter name="icon" type="GdkPixbuf*"/>
				<parameter name="text" type="gchar*"/>
			</parameters>
		</function>
		<function name="create_header_with_image" symbol="xfce_create_header_with_image">
			<return-type type="GtkWidget*"/>
			<parameters>
				<parameter name="image" type="GtkWidget*"/>
				<parameter name="text" type="gchar*"/>
			</parameters>
		</function>
		<function name="create_mixed_button" symbol="xfce_create_mixed_button">
			<return-type type="GtkWidget*"/>
			<parameters>
				<parameter name="stock" type="gchar*"/>
				<parameter name="text" type="gchar*"/>
			</parameters>
		</function>
		<function name="create_small_label" symbol="xfce_create_small_label">
			<return-type type="GtkWidget*"/>
			<parameters>
				<parameter name="text" type="gchar*"/>
			</parameters>
		</function>
		<function name="err" symbol="xfce_err">
			<return-type type="void"/>
			<parameters>
				<parameter name="format" type="gchar*"/>
			</parameters>
		</function>
		<function name="exec" symbol="xfce_exec">
			<return-type type="gboolean"/>
			<parameters>
				<parameter name="cmd" type="char*"/>
				<parameter name="in_terminal" type="gboolean"/>
				<parameter name="use_sn" type="gboolean"/>
				<parameter name="error" type="GError**"/>
			</parameters>
		</function>
		<function name="exec_argv" symbol="xfce_exec_argv">
			<return-type type="gboolean"/>
			<parameters>
				<parameter name="argv" type="char**"/>
				<parameter name="in_terminal" type="gboolean"/>
				<parameter name="use_sn" type="gboolean"/>
				<parameter name="error" type="GError**"/>
			</parameters>
		</function>
		<function name="exec_argv_on_screen" symbol="xfce_exec_argv_on_screen">
			<return-type type="gboolean"/>
			<parameters>
				<parameter name="screen" type="GdkScreen*"/>
				<parameter name="argv" type="char**"/>
				<parameter name="in_terminal" type="gboolean"/>
				<parameter name="use_sn" type="gboolean"/>
				<parameter name="error" type="GError**"/>
			</parameters>
		</function>
		<function name="exec_argv_with_envp" symbol="xfce_exec_argv_with_envp">
			<return-type type="gboolean"/>
			<parameters>
				<parameter name="argv" type="char**"/>
				<parameter name="in_terminal" type="gboolean"/>
				<parameter name="use_sn" type="gboolean"/>
				<parameter name="error" type="GError**"/>
				<parameter name="envp" type="char**"/>
			</parameters>
		</function>
		<function name="exec_argv_with_envp_on_screen" symbol="xfce_exec_argv_with_envp_on_screen">
			<return-type type="gboolean"/>
			<parameters>
				<parameter name="screen" type="GdkScreen*"/>
				<parameter name="argv" type="char**"/>
				<parameter name="in_terminal" type="gboolean"/>
				<parameter name="use_sn" type="gboolean"/>
				<parameter name="error" type="GError**"/>
				<parameter name="envp" type="char**"/>
			</parameters>
		</function>
		<function name="exec_on_screen" symbol="xfce_exec_on_screen">
			<return-type type="gboolean"/>
			<parameters>
				<parameter name="screen" type="GdkScreen*"/>
				<parameter name="cmd" type="char*"/>
				<parameter name="in_terminal" type="gboolean"/>
				<parameter name="use_sn" type="gboolean"/>
				<parameter name="error" type="GError**"/>
			</parameters>
		</function>
		<function name="exec_sync" symbol="xfce_exec_sync">
			<return-type type="gboolean"/>
			<parameters>
				<parameter name="cmd" type="char*"/>
				<parameter name="in_terminal" type="gboolean"/>
				<parameter name="use_sn" type="gboolean"/>
				<parameter name="error" type="GError**"/>
			</parameters>
		</function>
		<function name="exec_sync_with_envp" symbol="xfce_exec_sync_with_envp">
			<return-type type="gboolean"/>
			<parameters>
				<parameter name="cmd" type="char*"/>
				<parameter name="in_terminal" type="gboolean"/>
				<parameter name="use_sn" type="gboolean"/>
				<parameter name="error" type="GError**"/>
				<parameter name="envp" type="char**"/>
			</parameters>
		</function>
		<function name="exec_with_envp" symbol="xfce_exec_with_envp">
			<return-type type="gboolean"/>
			<parameters>
				<parameter name="cmd" type="char*"/>
				<parameter name="in_terminal" type="gboolean"/>
				<parameter name="use_sn" type="gboolean"/>
				<parameter name="error" type="GError**"/>
				<parameter name="envp" type="char**"/>
			</parameters>
		</function>
		<function name="exec_with_envp_on_screen" symbol="xfce_exec_with_envp_on_screen">
			<return-type type="gboolean"/>
			<parameters>
				<parameter name="screen" type="GdkScreen*"/>
				<parameter name="cmd" type="char*"/>
				<parameter name="in_terminal" type="gboolean"/>
				<parameter name="use_sn" type="gboolean"/>
				<parameter name="error" type="GError**"/>
				<parameter name="envp" type="char**"/>
			</parameters>
		</function>
		<function name="gdk_display_get_fullname" symbol="xfce_gdk_display_get_fullname">
			<return-type type="gchar*"/>
			<parameters>
				<parameter name="display" type="GdkDisplay*"/>
			</parameters>
		</function>
		<function name="gdk_display_locate_monitor_with_pointer" symbol="xfce_gdk_display_locate_monitor_with_pointer">
			<return-type type="GdkScreen*"/>
			<parameters>
				<parameter name="display" type="GdkDisplay*"/>
				<parameter name="monitor_return" type="gint*"/>
			</parameters>
		</function>
		<function name="gdk_screen_get_fullname" symbol="xfce_gdk_screen_get_fullname">
			<return-type type="gchar*"/>
			<parameters>
				<parameter name="screen" type="GdkScreen*"/>
			</parameters>
		</function>
		<function name="gdk_spawn_command_line_on_screen" symbol="xfce_gdk_spawn_command_line_on_screen">
			<return-type type="gboolean"/>
			<parameters>
				<parameter name="screen" type="GdkScreen*"/>
				<parameter name="command_line" type="gchar*"/>
				<parameter name="error" type="GError**"/>
			</parameters>
		</function>
		<function name="gdk_spawn_on_screen" symbol="xfce_gdk_spawn_on_screen">
			<return-type type="gboolean"/>
			<parameters>
				<parameter name="screen" type="GdkScreen*"/>
				<parameter name="working_directory" type="gchar*"/>
				<parameter name="argv" type="gchar**"/>
				<parameter name="envp" type="gchar**"/>
				<parameter name="flags" type="GSpawnFlags"/>
				<parameter name="child_setup" type="GSpawnChildSetupFunc"/>
				<parameter name="user_data" type="gpointer"/>
				<parameter name="child_pid" type="gint*"/>
				<parameter name="error" type="GError**"/>
			</parameters>
		</function>
		<function name="gdk_spawn_on_screen_with_pipes" symbol="xfce_gdk_spawn_on_screen_with_pipes">
			<return-type type="gboolean"/>
			<parameters>
				<parameter name="screen" type="GdkScreen*"/>
				<parameter name="working_directory" type="gchar*"/>
				<parameter name="argv" type="gchar**"/>
				<parameter name="envp" type="gchar**"/>
				<parameter name="flags" type="GSpawnFlags"/>
				<parameter name="child_setup" type="GSpawnChildSetupFunc"/>
				<parameter name="user_data" type="gpointer"/>
				<parameter name="child_pid" type="gint*"/>
				<parameter name="standard_input" type="gint*"/>
				<parameter name="standard_output" type="gint*"/>
				<parameter name="standard_error" type="gint*"/>
				<parameter name="error" type="GError**"/>
			</parameters>
		</function>
		<function name="get_font_desc" symbol="get_font_desc">
			<return-type type="PangoFontDescription*"/>
			<parameters>
				<parameter name="widget" type="GtkWidget*"/>
			</parameters>
		</function>
		<function name="get_style" symbol="get_style">
			<return-type type="gchar*"/>
			<parameters>
				<parameter name="widget" type="GtkWidget*"/>
				<parameter name="name" type="gchar*"/>
				<parameter name="state" type="gchar*"/>
			</parameters>
		</function>
		<function name="get_style_gc" symbol="get_style_gc">
			<return-type type="GdkGC*"/>
			<parameters>
				<parameter name="widget" type="GtkWidget*"/>
				<parameter name="state" type="gchar*"/>
				<parameter name="style" type="gchar*"/>
			</parameters>
		</function>
		<function name="gtk_window_center_on_monitor" symbol="xfce_gtk_window_center_on_monitor">
			<return-type type="void"/>
			<parameters>
				<parameter name="window" type="GtkWindow*"/>
				<parameter name="screen" type="GdkScreen*"/>
				<parameter name="monitor" type="gint"/>
			</parameters>
		</function>
		<function name="gtk_window_center_on_monitor_with_pointer" symbol="xfce_gtk_window_center_on_monitor_with_pointer">
			<return-type type="void"/>
			<parameters>
				<parameter name="window" type="GtkWindow*"/>
			</parameters>
		</function>
		<function name="info" symbol="xfce_info">
			<return-type type="void"/>
			<parameters>
				<parameter name="format" type="gchar*"/>
			</parameters>
		</function>
		<function name="inline_icon_at_size" symbol="xfce_inline_icon_at_size">
			<return-type type="GdkPixbuf*"/>
			<parameters>
				<parameter name="data" type="guint8*"/>
				<parameter name="width" type="int"/>
				<parameter name="height" type="int"/>
			</parameters>
		</function>
		<function name="logout_session" symbol="logout_session">
			<return-type type="void"/>
			<parameters>
				<parameter name="session_client" type="SessionClient*"/>
			</parameters>
		</function>
		<function name="message_dialog" symbol="xfce_message_dialog">
			<return-type type="gint"/>
			<parameters>
				<parameter name="parent" type="GtkWindow*"/>
				<parameter name="title" type="gchar*"/>
				<parameter name="icon_id" type="gchar*"/>
				<parameter name="primary_text" type="gchar*"/>
				<parameter name="secondary_text" type="gchar*"/>
				<parameter name="first_button_type" type="gchar*"/>
			</parameters>
		</function>
		<function name="message_dialog_new" symbol="xfce_message_dialog_new">
			<return-type type="GtkWidget*"/>
			<parameters>
				<parameter name="parent" type="GtkWindow*"/>
				<parameter name="title" type="gchar*"/>
				<parameter name="icon_id" type="gchar*"/>
				<parameter name="primary_text" type="gchar*"/>
				<parameter name="secondary_text" type="gchar*"/>
				<parameter name="first_button_type" type="gchar*"/>
			</parameters>
		</function>
		<function name="pango_get_context" symbol="pango_get_context">
			<return-type type="PangoContext*"/>
			<parameters>
				<parameter name="widget" type="GtkWidget*"/>
			</parameters>
		</function>
		<function name="session_init" symbol="session_init">
			<return-type type="gboolean"/>
			<parameters>
				<parameter name="session_client" type="SessionClient*"/>
			</parameters>
		</function>
		<function name="session_shutdown" symbol="session_shutdown">
			<return-type type="void"/>
			<parameters>
				<parameter name="session_client" type="SessionClient*"/>
			</parameters>
		</function>
		<function name="startup_notification_cancel" symbol="xfce_startup_notification_cancel">
			<return-type type="void"/>
			<parameters>
				<parameter name="id" type="char*"/>
			</parameters>
		</function>
		<function name="startup_notification_cleanup_environment" symbol="xfce_startup_notification_cleanup_environment">
			<return-type type="char**"/>
			<parameters>
				<parameter name="envp" type="char**"/>
			</parameters>
		</function>
		<function name="startup_notification_modify_environment" symbol="xfce_startup_notification_modify_environment">
			<return-type type="char**"/>
			<parameters>
				<parameter name="envp" type="char**"/>
				<parameter name="id" type="char*"/>
			</parameters>
		</function>
		<function name="startup_notification_start" symbol="xfce_startup_notification_start">
			<return-type type="char*"/>
			<parameters>
				<parameter name="screen" type="GdkScreen*"/>
				<parameter name="path" type="char*"/>
			</parameters>
		</function>
		<function name="themed_icon_load" symbol="xfce_themed_icon_load">
			<return-type type="GdkPixbuf*"/>
			<parameters>
				<parameter name="name" type="gchar*"/>
				<parameter name="size" type="gint"/>
			</parameters>
		</function>
		<function name="themed_icon_load_category" symbol="xfce_themed_icon_load_category">
			<return-type type="GdkPixbuf*"/>
			<parameters>
				<parameter name="category" type="XfceIconThemeCategory"/>
				<parameter name="size" type="gint"/>
			</parameters>
		</function>
		<function name="themed_icon_load_list" symbol="xfce_themed_icon_load_list">
			<return-type type="GdkPixbuf*"/>
			<parameters>
				<parameter name="names" type="GList*"/>
				<parameter name="size" type="gint"/>
			</parameters>
		</function>
		<function name="themed_icon_lookup" symbol="xfce_themed_icon_lookup">
			<return-type type="gchar*"/>
			<parameters>
				<parameter name="name" type="gchar*"/>
				<parameter name="size" type="gint"/>
			</parameters>
		</function>
		<function name="themed_icon_lookup_category" symbol="xfce_themed_icon_lookup_category">
			<return-type type="gchar*"/>
			<parameters>
				<parameter name="category" type="XfceIconThemeCategory"/>
				<parameter name="size" type="gint"/>
			</parameters>
		</function>
		<function name="themed_icon_lookup_list" symbol="xfce_themed_icon_lookup_list">
			<return-type type="gchar*"/>
			<parameters>
				<parameter name="names" type="GList*"/>
				<parameter name="size" type="gint"/>
			</parameters>
		</function>
		<function name="verr" symbol="xfce_verr">
			<return-type type="void"/>
			<parameters>
				<parameter name="format" type="gchar*"/>
				<parameter name="ap" type="va_list"/>
			</parameters>
		</function>
		<function name="vinfo" symbol="xfce_vinfo">
			<return-type type="void"/>
			<parameters>
				<parameter name="format" type="gchar*"/>
				<parameter name="ap" type="va_list"/>
			</parameters>
		</function>
		<function name="vwarn" symbol="xfce_vwarn">
			<return-type type="void"/>
			<parameters>
				<parameter name="format" type="gchar*"/>
				<parameter name="ap" type="va_list"/>
			</parameters>
		</function>
		<function name="warn" symbol="xfce_warn">
			<return-type type="void"/>
			<parameters>
				<parameter name="format" type="gchar*"/>
			</parameters>
		</function>
		<callback name="die_callback">
			<return-type type="void"/>
			<parameters>
				<parameter name="client_data" type="gpointer"/>
			</parameters>
		</callback>
		<callback name="interact_callback">
			<return-type type="void"/>
			<parameters>
				<parameter name="client_data" type="gpointer"/>
				<parameter name="interact_style" type="SessionInteractStyle"/>
			</parameters>
		</callback>
		<callback name="save_complete_callback">
			<return-type type="void"/>
			<parameters>
				<parameter name="client_data" type="gpointer"/>
			</parameters>
		</callback>
		<callback name="save_phase_2_callback">
			<return-type type="void"/>
			<parameters>
				<parameter name="client_data" type="gpointer"/>
			</parameters>
		</callback>
		<callback name="save_yourself_callback">
			<return-type type="void"/>
			<parameters>
				<parameter name="client_data" type="gpointer"/>
				<parameter name="save_style" type="int"/>
				<parameter name="shutdown" type="gboolean"/>
				<parameter name="interact_style" type="int"/>
				<parameter name="fast" type="gboolean"/>
			</parameters>
		</callback>
		<callback name="shutdown_cancelled_callback">
			<return-type type="void"/>
			<parameters>
				<parameter name="client_data" type="gpointer"/>
			</parameters>
		</callback>
		<struct name="SessionClient">
			<field name="save_phase_2" type="save_phase_2_callback"/>
			<field name="interact" type="interact_callback"/>
			<field name="shutdown_cancelled" type="shutdown_cancelled_callback"/>
			<field name="save_complete" type="save_complete_callback"/>
			<field name="die" type="die_callback"/>
			<field name="save_yourself" type="save_yourself_callback"/>
			<field name="data" type="gpointer"/>
			<field name="session_connection" type="gpointer"/>
			<field name="current_state" type="SessionClientState"/>
			<field name="restart_style" type="SessionRestartStyle"/>
			<field name="interact_style" type="SessionInteractStyle"/>
			<field name="priority" type="gchar"/>
			<field name="client_id" type="gchar*"/>
			<field name="given_client_id" type="gchar*"/>
			<field name="current_directory" type="gchar*"/>
			<field name="program" type="gchar*"/>
			<field name="clone_command" type="gchar**"/>
			<field name="resign_command" type="gchar**"/>
			<field name="restart_command" type="gchar**"/>
			<field name="discard_command" type="gchar**"/>
			<field name="shutdown_command" type="gchar**"/>
			<field name="shutdown" type="gboolean"/>
		</struct>
		<struct name="XfceAppMenuItemPriv">
		</struct>
		<boxed name="XfceAboutInfo" type-name="XfceAboutInfo" get-type="xfce_about_info_get_type">
			<method name="add_credit" symbol="xfce_about_info_add_credit">
				<return-type type="void"/>
				<parameters>
					<parameter name="info" type="XfceAboutInfo*"/>
					<parameter name="name" type="gchar*"/>
					<parameter name="mail" type="gchar*"/>
					<parameter name="task" type="gchar*"/>
				</parameters>
			</method>
			<method name="copy" symbol="xfce_about_info_copy">
				<return-type type="XfceAboutInfo*"/>
				<parameters>
					<parameter name="info" type="XfceAboutInfo*"/>
				</parameters>
			</method>
			<method name="free" symbol="xfce_about_info_free">
				<return-type type="void"/>
				<parameters>
					<parameter name="info" type="XfceAboutInfo*"/>
				</parameters>
			</method>
			<method name="get_copyright" symbol="xfce_about_info_get_copyright">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="info" type="XfceAboutInfo*"/>
				</parameters>
			</method>
			<method name="get_description" symbol="xfce_about_info_get_description">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="info" type="XfceAboutInfo*"/>
				</parameters>
			</method>
			<method name="get_homepage" symbol="xfce_about_info_get_homepage">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="info" type="XfceAboutInfo*"/>
				</parameters>
			</method>
			<method name="get_license" symbol="xfce_about_info_get_license">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="info" type="XfceAboutInfo*"/>
				</parameters>
			</method>
			<method name="get_program" symbol="xfce_about_info_get_program">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="info" type="XfceAboutInfo*"/>
				</parameters>
			</method>
			<method name="get_version" symbol="xfce_about_info_get_version">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="info" type="XfceAboutInfo*"/>
				</parameters>
			</method>
			<constructor name="new" symbol="xfce_about_info_new">
				<return-type type="XfceAboutInfo*"/>
				<parameters>
					<parameter name="program" type="gchar*"/>
					<parameter name="version" type="gchar*"/>
					<parameter name="description" type="gchar*"/>
					<parameter name="copyright" type="gchar*"/>
					<parameter name="license" type="gchar*"/>
				</parameters>
			</constructor>
			<method name="set_copyright" symbol="xfce_about_info_set_copyright">
				<return-type type="void"/>
				<parameters>
					<parameter name="info" type="XfceAboutInfo*"/>
					<parameter name="copyright" type="gchar*"/>
				</parameters>
			</method>
			<method name="set_description" symbol="xfce_about_info_set_description">
				<return-type type="void"/>
				<parameters>
					<parameter name="info" type="XfceAboutInfo*"/>
					<parameter name="description" type="gchar*"/>
				</parameters>
			</method>
			<method name="set_homepage" symbol="xfce_about_info_set_homepage">
				<return-type type="void"/>
				<parameters>
					<parameter name="info" type="XfceAboutInfo*"/>
					<parameter name="homepage" type="gchar*"/>
				</parameters>
			</method>
			<method name="set_license" symbol="xfce_about_info_set_license">
				<return-type type="void"/>
				<parameters>
					<parameter name="info" type="XfceAboutInfo*"/>
					<parameter name="license" type="gchar*"/>
				</parameters>
			</method>
			<method name="set_program" symbol="xfce_about_info_set_program">
				<return-type type="void"/>
				<parameters>
					<parameter name="info" type="XfceAboutInfo*"/>
					<parameter name="program" type="gchar*"/>
				</parameters>
			</method>
			<method name="set_version" symbol="xfce_about_info_set_version">
				<return-type type="void"/>
				<parameters>
					<parameter name="info" type="XfceAboutInfo*"/>
					<parameter name="version" type="gchar*"/>
				</parameters>
			</method>
		</boxed>
		<enum name="SessionClientState" type-name="SessionClientState" get-type="session_client_state_get_type">
			<member name="SESSION_CLIENT_IDLE" value="0"/>
			<member name="SESSION_CLIENT_SAVING_PHASE_1" value="1"/>
			<member name="SESSION_CLIENT_WAITING_FOR_PHASE_2" value="2"/>
			<member name="SESSION_CLIENT_SAVING_PHASE_2" value="3"/>
			<member name="SESSION_CLIENT_WAITING_FOR_INTERACT" value="4"/>
			<member name="SESSION_CLIENT_DONE_WITH_INTERACT" value="5"/>
			<member name="SESSION_CLIENT_FROZEN" value="6"/>
			<member name="SESSION_CLIENT_DISCONNECTED" value="7"/>
			<member name="SESSION_CLIENT_REGISTERING" value="8"/>
		</enum>
		<enum name="SessionInteractStyle" type-name="SessionInteractStyle" get-type="session_interact_style_get_type">
			<member name="SESSION_INTERACT_NONE" value="0"/>
			<member name="SESSION_INTERACT_ERRORS" value="1"/>
			<member name="SESSION_INTERACT_ANY" value="2"/>
		</enum>
		<enum name="SessionRestartStyle" type-name="SessionRestartStyle" get-type="session_restart_style_get_type">
			<member name="SESSION_RESTART_IF_RUNNING" value="0"/>
			<member name="SESSION_RESTART_ANYWAY" value="1"/>
			<member name="SESSION_RESTART_IMMEDIATELY" value="2"/>
			<member name="SESSION_RESTART_NEVER" value="3"/>
		</enum>
		<enum name="XfceClockLedSize" type-name="XfceClockLedSize" get-type="xfce_clock_led_size_get_type">
			<member name="DIGIT_SMALL" value="0"/>
			<member name="DIGIT_MEDIUM" value="1"/>
			<member name="DIGIT_LARGE" value="2"/>
			<member name="DIGIT_HUGE" value="3"/>
		</enum>
		<enum name="XfceClockMode" type-name="XfceClockMode" get-type="xfce_clock_mode_get_type">
			<member name="XFCE_CLOCK_ANALOG" value="0"/>
			<member name="XFCE_CLOCK_DIGITAL" value="1"/>
			<member name="XFCE_CLOCK_LEDS" value="2"/>
		</enum>
		<enum name="XfceDecorbuttonType" type-name="XfceDecorbuttonType" get-type="xfce_decorbutton_type_get_type">
			<member name="XFCE_DECORBUTTON_CLOSE" value="0"/>
			<member name="XFCE_DECORBUTTON_HIDE" value="1"/>
		</enum>
		<enum name="XfceFileChooserAction" type-name="XfceFileChooserAction" get-type="xfce_file_chooser_action_get_type">
			<member name="XFCE_FILE_CHOOSER_ACTION_OPEN" value="0"/>
			<member name="XFCE_FILE_CHOOSER_ACTION_SAVE" value="1"/>
			<member name="XFCE_FILE_CHOOSER_ACTION_SELECT_FOLDER" value="2"/>
			<member name="XFCE_FILE_CHOOSER_ACTION_CREATE_FOLDER" value="3"/>
		</enum>
		<enum name="XfceFilterStatus" type-name="XfceFilterStatus" get-type="xfce_filter_status_get_type">
			<member name="XEV_FILTER_STOP" value="1"/>
			<member name="XEV_FILTER_CONTINUE" value="0"/>
		</enum>
		<enum name="XfceIconThemeCategory" type-name="XfceIconThemeCategory" get-type="xfce_icon_theme_category_get_type">
			<member name="XFCE_ICON_CATEGORY_UNKNOWN" value="0"/>
			<member name="XFCE_ICON_CATEGORY_EDITOR" value="1"/>
			<member name="XFCE_ICON_CATEGORY_FILEMAN" value="2"/>
			<member name="XFCE_ICON_CATEGORY_UTILITY" value="3"/>
			<member name="XFCE_ICON_CATEGORY_GAME" value="4"/>
			<member name="XFCE_ICON_CATEGORY_HELP" value="5"/>
			<member name="XFCE_ICON_CATEGORY_MULTIMEDIA" value="6"/>
			<member name="XFCE_ICON_CATEGORY_NETWORK" value="7"/>
			<member name="XFCE_ICON_CATEGORY_GRAPHICS" value="8"/>
			<member name="XFCE_ICON_CATEGORY_PRINTER" value="9"/>
			<member name="XFCE_ICON_CATEGORY_PRODUCTIVITY" value="10"/>
			<member name="XFCE_ICON_CATEGORY_OFFICE" value="11"/>
			<member name="XFCE_ICON_CATEGORY_SOUND" value="12"/>
			<member name="XFCE_ICON_CATEGORY_TERMINAL" value="13"/>
			<member name="XFCE_ICON_CATEGORY_DEVELOPMENT" value="14"/>
			<member name="XFCE_ICON_CATEGORY_SETTINGS" value="15"/>
			<member name="XFCE_ICON_CATEGORY_SYSTEM" value="16"/>
			<member name="XFCE_ICON_CATEGORY_WINE" value="17"/>
			<member name="XFCE_ICON_CATEGORY_ACCESSORIES" value="18"/>
			<member name="XFCE_N_BUILTIN_ICON_CATEGORIES" value="19"/>
		</enum>
		<object name="XfceAboutDialog" parent="GtkDialog" type-name="XfceAboutDialog" get-type="xfce_about_dialog_get_type">
			<implements>
				<interface name="GtkBuildable"/>
				<interface name="AtkImplementor"/>
			</implements>
			<method name="add_credit" symbol="xfce_about_dialog_add_credit">
				<return-type type="void"/>
				<parameters>
					<parameter name="dialog" type="XfceAboutDialog*"/>
					<parameter name="name" type="gchar*"/>
					<parameter name="mail" type="gchar*"/>
					<parameter name="task" type="gchar*"/>
				</parameters>
			</method>
			<method name="get_copyright" symbol="xfce_about_dialog_get_copyright">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="dialog" type="XfceAboutDialog*"/>
				</parameters>
			</method>
			<method name="get_description" symbol="xfce_about_dialog_get_description">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="dialog" type="XfceAboutDialog*"/>
				</parameters>
			</method>
			<method name="get_homepage" symbol="xfce_about_dialog_get_homepage">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="dialog" type="XfceAboutDialog*"/>
				</parameters>
			</method>
			<method name="get_icon" symbol="xfce_about_dialog_get_icon">
				<return-type type="GdkPixbuf*"/>
				<parameters>
					<parameter name="dialog" type="XfceAboutDialog*"/>
				</parameters>
			</method>
			<method name="get_license" symbol="xfce_about_dialog_get_license">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="dialog" type="XfceAboutDialog*"/>
				</parameters>
			</method>
			<method name="get_program" symbol="xfce_about_dialog_get_program">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="dialog" type="XfceAboutDialog*"/>
				</parameters>
			</method>
			<method name="get_version" symbol="xfce_about_dialog_get_version">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="dialog" type="XfceAboutDialog*"/>
				</parameters>
			</method>
			<constructor name="new" symbol="xfce_about_dialog_new">
				<return-type type="GtkWidget*"/>
				<parameters>
					<parameter name="parent" type="GtkWindow*"/>
					<parameter name="info" type="XfceAboutInfo*"/>
					<parameter name="icon" type="GdkPixbuf*"/>
				</parameters>
			</constructor>
			<constructor name="new_empty" symbol="xfce_about_dialog_new_empty">
				<return-type type="GtkWidget*"/>
			</constructor>
			<constructor name="new_with_values" symbol="xfce_about_dialog_new_with_values">
				<return-type type="GtkWidget*"/>
				<parameters>
					<parameter name="parent" type="GtkWindow*"/>
					<parameter name="info" type="XfceAboutInfo*"/>
					<parameter name="icon" type="GdkPixbuf*"/>
				</parameters>
			</constructor>
			<method name="set_copyright" symbol="xfce_about_dialog_set_copyright">
				<return-type type="void"/>
				<parameters>
					<parameter name="dialog" type="XfceAboutDialog*"/>
					<parameter name="value" type="gchar*"/>
				</parameters>
			</method>
			<method name="set_description" symbol="xfce_about_dialog_set_description">
				<return-type type="void"/>
				<parameters>
					<parameter name="dialog" type="XfceAboutDialog*"/>
					<parameter name="value" type="gchar*"/>
				</parameters>
			</method>
			<method name="set_homepage" symbol="xfce_about_dialog_set_homepage">
				<return-type type="void"/>
				<parameters>
					<parameter name="dialog" type="XfceAboutDialog*"/>
					<parameter name="value" type="gchar*"/>
				</parameters>
			</method>
			<method name="set_icon" symbol="xfce_about_dialog_set_icon">
				<return-type type="void"/>
				<parameters>
					<parameter name="dialog" type="XfceAboutDialog*"/>
					<parameter name="icon" type="GdkPixbuf*"/>
				</parameters>
			</method>
			<method name="set_license" symbol="xfce_about_dialog_set_license">
				<return-type type="void"/>
				<parameters>
					<parameter name="dialog" type="XfceAboutDialog*"/>
					<parameter name="value" type="gchar*"/>
				</parameters>
			</method>
			<method name="set_program" symbol="xfce_about_dialog_set_program">
				<return-type type="void"/>
				<parameters>
					<parameter name="dialog" type="XfceAboutDialog*"/>
					<parameter name="value" type="gchar*"/>
				</parameters>
			</method>
			<method name="set_version" symbol="xfce_about_dialog_set_version">
				<return-type type="void"/>
				<parameters>
					<parameter name="dialog" type="XfceAboutDialog*"/>
					<parameter name="value" type="gchar*"/>
				</parameters>
			</method>
			<property name="copyright" type="char*" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="description" type="char*" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="homepage" type="char*" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="icon" type="GdkPixbuf*" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="license" type="char*" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="program" type="char*" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="version" type="char*" readable="1" writable="1" construct="0" construct-only="0"/>
		</object>
		<object name="XfceAppMenuItem" parent="GtkImageMenuItem" type-name="XfceAppMenuItem" get-type="xfce_app_menu_item_get_type">
			<implements>
				<interface name="GtkBuildable"/>
				<interface name="AtkImplementor"/>
			</implements>
			<method name="get_command" symbol="xfce_app_menu_item_get_command">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="app_menu_item" type="XfceAppMenuItem*"/>
				</parameters>
			</method>
			<method name="get_icon_name" symbol="xfce_app_menu_item_get_icon_name">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="app_menu_item" type="XfceAppMenuItem*"/>
				</parameters>
			</method>
			<method name="get_name" symbol="xfce_app_menu_item_get_name">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="app_menu_item" type="XfceAppMenuItem*"/>
				</parameters>
			</method>
			<method name="get_needs_term" symbol="xfce_app_menu_item_get_needs_term">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="app_menu_item" type="XfceAppMenuItem*"/>
				</parameters>
			</method>
			<method name="get_startup_notification" symbol="xfce_app_menu_item_get_startup_notification">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="app_menu_item" type="XfceAppMenuItem*"/>
				</parameters>
			</method>
			<constructor name="new" symbol="xfce_app_menu_item_new">
				<return-type type="GtkWidget*"/>
			</constructor>
			<constructor name="new_from_desktop_entry" symbol="xfce_app_menu_item_new_from_desktop_entry">
				<return-type type="GtkWidget*"/>
				<parameters>
					<parameter name="entry" type="XfceDesktopEntry*"/>
					<parameter name="show_icon" type="gboolean"/>
				</parameters>
			</constructor>
			<constructor name="new_full" symbol="xfce_app_menu_item_new_full">
				<return-type type="GtkWidget*"/>
				<parameters>
					<parameter name="label" type="gchar*"/>
					<parameter name="command" type="gchar*"/>
					<parameter name="icon_filename" type="gchar*"/>
					<parameter name="needs_term" type="gboolean"/>
					<parameter name="snotify" type="gboolean"/>
				</parameters>
			</constructor>
			<constructor name="new_with_command" symbol="xfce_app_menu_item_new_with_command">
				<return-type type="GtkWidget*"/>
				<parameters>
					<parameter name="label" type="gchar*"/>
					<parameter name="command" type="gchar*"/>
				</parameters>
			</constructor>
			<constructor name="new_with_label" symbol="xfce_app_menu_item_new_with_label">
				<return-type type="GtkWidget*"/>
				<parameters>
					<parameter name="label" type="gchar*"/>
				</parameters>
			</constructor>
			<constructor name="new_with_mnemonic" symbol="xfce_app_menu_item_new_with_mnemonic">
				<return-type type="GtkWidget*"/>
				<parameters>
					<parameter name="label" type="gchar*"/>
				</parameters>
			</constructor>
			<method name="set_command" symbol="xfce_app_menu_item_set_command">
				<return-type type="void"/>
				<parameters>
					<parameter name="app_menu_item" type="XfceAppMenuItem*"/>
					<parameter name="command" type="gchar*"/>
				</parameters>
			</method>
			<method name="set_icon_name" symbol="xfce_app_menu_item_set_icon_name">
				<return-type type="void"/>
				<parameters>
					<parameter name="app_menu_item" type="XfceAppMenuItem*"/>
					<parameter name="filename" type="gchar*"/>
				</parameters>
			</method>
			<method name="set_icon_theme_name" symbol="xfce_app_menu_item_set_icon_theme_name">
				<return-type type="void"/>
				<parameters>
					<parameter name="theme_name" type="gchar*"/>
				</parameters>
			</method>
			<method name="set_name" symbol="xfce_app_menu_item_set_name">
				<return-type type="void"/>
				<parameters>
					<parameter name="app_menu_item" type="XfceAppMenuItem*"/>
					<parameter name="name" type="gchar*"/>
				</parameters>
			</method>
			<method name="set_needs_term" symbol="xfce_app_menu_item_set_needs_term">
				<return-type type="void"/>
				<parameters>
					<parameter name="app_menu_item" type="XfceAppMenuItem*"/>
					<parameter name="needs_term" type="gboolean"/>
				</parameters>
			</method>
			<method name="set_startup_notification" symbol="xfce_app_menu_item_set_startup_notification">
				<return-type type="void"/>
				<parameters>
					<parameter name="app_menu_item" type="XfceAppMenuItem*"/>
					<parameter name="snotify" type="gboolean"/>
				</parameters>
			</method>
			<property name="command" type="char*" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="icon-name" type="char*" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="label" type="char*" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="needs-term" type="gboolean" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="snotify" type="gboolean" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="use-underline" type="gboolean" readable="1" writable="1" construct="0" construct-only="0"/>
		</object>
		<object name="XfceHeading" parent="GtkWidget" type-name="XfceHeading" get-type="xfce_heading_get_type">
			<implements>
				<interface name="GtkBuildable"/>
				<interface name="AtkImplementor"/>
			</implements>
			<method name="get_icon" symbol="xfce_heading_get_icon">
				<return-type type="GdkPixbuf*"/>
				<parameters>
					<parameter name="heading" type="XfceHeading*"/>
				</parameters>
			</method>
			<method name="get_icon_name" symbol="xfce_heading_get_icon_name">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="heading" type="XfceHeading*"/>
				</parameters>
			</method>
			<method name="get_subtitle" symbol="xfce_heading_get_subtitle">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="heading" type="XfceHeading*"/>
				</parameters>
			</method>
			<method name="get_title" symbol="xfce_heading_get_title">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="heading" type="XfceHeading*"/>
				</parameters>
			</method>
			<constructor name="new" symbol="xfce_heading_new">
				<return-type type="GtkWidget*"/>
			</constructor>
			<method name="set_icon" symbol="xfce_heading_set_icon">
				<return-type type="void"/>
				<parameters>
					<parameter name="heading" type="XfceHeading*"/>
					<parameter name="icon" type="GdkPixbuf*"/>
				</parameters>
			</method>
			<method name="set_icon_name" symbol="xfce_heading_set_icon_name">
				<return-type type="void"/>
				<parameters>
					<parameter name="heading" type="XfceHeading*"/>
					<parameter name="icon_name" type="gchar*"/>
				</parameters>
			</method>
			<method name="set_subtitle" symbol="xfce_heading_set_subtitle">
				<return-type type="void"/>
				<parameters>
					<parameter name="heading" type="XfceHeading*"/>
					<parameter name="subtitle" type="gchar*"/>
				</parameters>
			</method>
			<method name="set_title" symbol="xfce_heading_set_title">
				<return-type type="void"/>
				<parameters>
					<parameter name="heading" type="XfceHeading*"/>
					<parameter name="title" type="gchar*"/>
				</parameters>
			</method>
			<property name="icon" type="GdkPixbuf*" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="icon-name" type="char*" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="subtitle" type="char*" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="title" type="char*" readable="1" writable="1" construct="0" construct-only="0"/>
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
		<object name="XfceIconbutton" parent="GtkButton" type-name="XfceIconbutton" get-type="xfce_iconbutton_get_type">
			<implements>
				<interface name="GtkBuildable"/>
				<interface name="AtkImplementor"/>
			</implements>
			<constructor name="new" symbol="xfce_iconbutton_new">
				<return-type type="GtkWidget*"/>
			</constructor>
			<constructor name="new_from_pixbuf" symbol="xfce_iconbutton_new_from_pixbuf">
				<return-type type="GtkWidget*"/>
				<parameters>
					<parameter name="pb" type="GdkPixbuf*"/>
				</parameters>
			</constructor>
			<method name="set_pixbuf" symbol="xfce_iconbutton_set_pixbuf">
				<return-type type="void"/>
				<parameters>
					<parameter name="icon_button" type="XfceIconbutton*"/>
					<parameter name="pixbuf" type="GdkPixbuf*"/>
				</parameters>
			</method>
			<field name="image" type="GtkWidget*"/>
			<field name="pb" type="GdkPixbuf*"/>
			<field name="icon_width" type="gint"/>
			<field name="icon_height" type="gint"/>
		</object>
		<object name="XfceMenubutton" parent="GtkButton" type-name="XfceMenubutton" get-type="xfce_menubutton_get_type">
			<implements>
				<interface name="GtkBuildable"/>
				<interface name="AtkImplementor"/>
			</implements>
			<constructor name="new" symbol="xfce_menubutton_new">
				<return-type type="GtkWidget*"/>
				<parameters>
					<parameter name="text" type="char*"/>
				</parameters>
			</constructor>
			<constructor name="new_with_pixbuf" symbol="xfce_menubutton_new_with_pixbuf">
				<return-type type="GtkWidget*"/>
				<parameters>
					<parameter name="text" type="char*"/>
					<parameter name="pb" type="GdkPixbuf*"/>
				</parameters>
			</constructor>
			<constructor name="new_with_stock_icon" symbol="xfce_menubutton_new_with_stock_icon">
				<return-type type="GtkWidget*"/>
				<parameters>
					<parameter name="text" type="char*"/>
					<parameter name="stock" type="char*"/>
				</parameters>
			</constructor>
			<method name="set_pixbuf" symbol="xfce_menubutton_set_pixbuf">
				<return-type type="void"/>
				<parameters>
					<parameter name="menubutton" type="XfceMenubutton*"/>
					<parameter name="pixbuf" type="GdkPixbuf*"/>
				</parameters>
			</method>
			<method name="set_stock_icon" symbol="xfce_menubutton_set_stock_icon">
				<return-type type="void"/>
				<parameters>
					<parameter name="menubutton" type="XfceMenubutton*"/>
					<parameter name="stock" type="char*"/>
				</parameters>
			</method>
			<method name="set_text" symbol="xfce_menubutton_set_text">
				<return-type type="void"/>
				<parameters>
					<parameter name="menubutton" type="XfceMenubutton*"/>
					<parameter name="text" type="char*"/>
				</parameters>
			</method>
			<field name="hbox" type="GtkWidget*"/>
			<field name="image" type="GtkWidget*"/>
			<field name="pb" type="GdkPixbuf*"/>
			<field name="icon_size" type="gint"/>
			<field name="label" type="GtkWidget*"/>
		</object>
		<object name="XfceScaledImage" parent="GtkImage" type-name="XfceScaledImage" get-type="xfce_scaled_image_get_type">
			<implements>
				<interface name="GtkBuildable"/>
				<interface name="AtkImplementor"/>
			</implements>
			<constructor name="new" symbol="xfce_scaled_image_new">
				<return-type type="GtkWidget*"/>
			</constructor>
			<constructor name="new_from_pixbuf" symbol="xfce_scaled_image_new_from_pixbuf">
				<return-type type="GtkWidget*"/>
				<parameters>
					<parameter name="pb" type="GdkPixbuf*"/>
				</parameters>
			</constructor>
			<method name="set_from_pixbuf" symbol="xfce_scaled_image_set_from_pixbuf">
				<return-type type="void"/>
				<parameters>
					<parameter name="image" type="XfceScaledImage*"/>
					<parameter name="pixbuf" type="GdkPixbuf*"/>
				</parameters>
			</method>
			<field name="pb" type="GdkPixbuf*"/>
			<field name="width" type="gint"/>
			<field name="height" type="gint"/>
		</object>
		<object name="XfceTitledDialog" parent="GtkDialog" type-name="XfceTitledDialog" get-type="xfce_titled_dialog_get_type">
			<implements>
				<interface name="GtkBuildable"/>
				<interface name="AtkImplementor"/>
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
		<object name="XfceTogglebutton" parent="GtkToggleButton" type-name="XfceTogglebutton" get-type="xfce_togglebutton_get_type">
			<implements>
				<interface name="GtkBuildable"/>
				<interface name="AtkImplementor"/>
			</implements>
			<method name="get_arrow_type" symbol="xfce_togglebutton_get_arrow_type">
				<return-type type="GtkArrowType"/>
				<parameters>
					<parameter name="togglebutton" type="XfceTogglebutton*"/>
				</parameters>
			</method>
			<constructor name="new" symbol="xfce_togglebutton_new">
				<return-type type="GtkWidget*"/>
				<parameters>
					<parameter name="arrow_type" type="GtkArrowType"/>
				</parameters>
			</constructor>
			<method name="set_arrow_type" symbol="xfce_togglebutton_set_arrow_type">
				<return-type type="void"/>
				<parameters>
					<parameter name="togglebutton" type="XfceTogglebutton*"/>
					<parameter name="arrow_type" type="GtkArrowType"/>
				</parameters>
			</method>
			<field name="decortoggle" type="GtkWidget*"/>
		</object>
		<constant name="LIBXFCEGUI4_MAJOR_VERSION" type="int" value="4"/>
		<constant name="LIBXFCEGUI4_MICRO_VERSION" type="int" value="0"/>
		<constant name="LIBXFCEGUI4_MINOR_VERSION" type="int" value="6"/>
		<constant name="SYSTEM_TRAY_BEGIN_MESSAGE" type="int" value="1"/>
		<constant name="SYSTEM_TRAY_CANCEL_MESSAGE" type="int" value="2"/>
		<constant name="SYSTEM_TRAY_REQUEST_DOCK" type="int" value="0"/>
		<constant name="UPDATE_DELAY_LENGTH" type="int" value="30000"/>
		<constant name="XFCE_CUSTOM_BUTTON" type="char*" value="custom-button"/>
		<constant name="XFCE_CUSTOM_PIXBUF_BUTTON" type="char*" value="custom-button-pixbuf"/>
		<constant name="XFCE_CUSTOM_STOCK_BUTTON" type="char*" value="custom-button-stock"/>
		<constant name="XFCE_STARTUP_NOTIFICATION_ENVIRONMENT_DESKTOP_STARTUP_ID" type="char*" value="DESKTOP_STARTUP_ID"/>
	</namespace>
</api>
