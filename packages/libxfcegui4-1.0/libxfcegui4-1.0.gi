<?xml version="1.0"?>
<api version="1.0">
	<namespace name="Xfce">
		<struct name="XfceAppMenuItemPriv">
		</struct>
		<object name="XfceAppMenuItem" parent="GtkImageMenuItem" type-name="XfceAppMenuItem" get-type="xfce_app_menu_item_get_type">
			<implements>
				<interface name="AtkImplementor"/>
				<interface name="GtkBuildable"/>
				<interface name="GtkActivatable"/>
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
	</namespace>
</api>
