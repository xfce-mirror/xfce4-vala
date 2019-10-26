<?xml version="1.0"?>
<api version="1.0">
	<namespace name="Garcon">
		<function name="check_version" symbol="garcon_check_version">
			<return-type type="gchar*"/>
			<parameters>
				<parameter name="required_major" type="guint"/>
				<parameter name="required_minor" type="guint"/>
				<parameter name="required_micro" type="guint"/>
			</parameters>
		</function>
		<function name="config_build_paths" symbol="garcon_config_build_paths">
			<return-type type="gchar**"/>
			<parameters>
				<parameter name="filename" type="gchar*"/>
			</parameters>
		</function>
		<function name="config_lookup" symbol="garcon_config_lookup">
			<return-type type="gchar*"/>
			<parameters>
				<parameter name="filename" type="gchar*"/>
			</parameters>
		</function>
		<function name="get_environment" symbol="garcon_get_environment">
			<return-type type="gchar*"/>
		</function>
		<function name="marshal_VOID__OBJECT_OBJECT" symbol="garcon_marshal_VOID__OBJECT_OBJECT">
			<return-type type="void"/>
			<parameters>
				<parameter name="closure" type="GClosure*"/>
				<parameter name="return_value" type="GValue*"/>
				<parameter name="n_param_values" type="guint"/>
				<parameter name="param_values" type="GValue*"/>
				<parameter name="invocation_hint" type="gpointer"/>
				<parameter name="marshal_data" type="gpointer"/>
			</parameters>
		</function>
		<function name="set_environment" symbol="garcon_set_environment">
			<return-type type="void"/>
			<parameters>
				<parameter name="env" type="gchar*"/>
			</parameters>
		</function>
		<function name="set_environment_xdg" symbol="garcon_set_environment_xdg">
			<return-type type="void"/>
			<parameters>
				<parameter name="fallback_env" type="gchar*"/>
			</parameters>
		</function>
		<struct name="GarconMenuItemPoolClass">
		</struct>
		<struct name="GarconMenuNodeClass">
		</struct>
		<enum name="GarconMenuLayoutMergeType">
			<member name="GARCON_MENU_LAYOUT_MERGE_MENUS" value="0"/>
			<member name="GARCON_MENU_LAYOUT_MERGE_FILES" value="1"/>
			<member name="GARCON_MENU_LAYOUT_MERGE_ALL" value="2"/>
		</enum>
		<enum name="GarconMenuMergeFileType">
			<member name="GARCON_MENU_MERGE_FILE_PATH" value="0"/>
			<member name="GARCON_MENU_MERGE_FILE_PARENT" value="1"/>
		</enum>
		<enum name="GarconMenuNodeType" type-name="GarconMenuNodeType" get-type="garcon_menu_node_type_get_type">
			<member name="GARCON_MENU_NODE_TYPE_INVALID" value="0"/>
			<member name="GARCON_MENU_NODE_TYPE_MENU" value="1"/>
			<member name="GARCON_MENU_NODE_TYPE_NAME" value="2"/>
			<member name="GARCON_MENU_NODE_TYPE_DIRECTORY" value="3"/>
			<member name="GARCON_MENU_NODE_TYPE_DIRECTORY_DIR" value="4"/>
			<member name="GARCON_MENU_NODE_TYPE_DEFAULT_DIRECTORY_DIRS" value="5"/>
			<member name="GARCON_MENU_NODE_TYPE_APP_DIR" value="6"/>
			<member name="GARCON_MENU_NODE_TYPE_DEFAULT_APP_DIRS" value="7"/>
			<member name="GARCON_MENU_NODE_TYPE_ONLY_UNALLOCATED" value="8"/>
			<member name="GARCON_MENU_NODE_TYPE_NOT_ONLY_UNALLOCATED" value="9"/>
			<member name="GARCON_MENU_NODE_TYPE_DELETED" value="10"/>
			<member name="GARCON_MENU_NODE_TYPE_NOT_DELETED" value="11"/>
			<member name="GARCON_MENU_NODE_TYPE_INCLUDE" value="12"/>
			<member name="GARCON_MENU_NODE_TYPE_EXCLUDE" value="13"/>
			<member name="GARCON_MENU_NODE_TYPE_ALL" value="14"/>
			<member name="GARCON_MENU_NODE_TYPE_FILENAME" value="15"/>
			<member name="GARCON_MENU_NODE_TYPE_CATEGORY" value="16"/>
			<member name="GARCON_MENU_NODE_TYPE_OR" value="17"/>
			<member name="GARCON_MENU_NODE_TYPE_AND" value="18"/>
			<member name="GARCON_MENU_NODE_TYPE_NOT" value="19"/>
			<member name="GARCON_MENU_NODE_TYPE_MOVE" value="20"/>
			<member name="GARCON_MENU_NODE_TYPE_OLD" value="21"/>
			<member name="GARCON_MENU_NODE_TYPE_NEW" value="22"/>
			<member name="GARCON_MENU_NODE_TYPE_DEFAULT_LAYOUT" value="23"/>
			<member name="GARCON_MENU_NODE_TYPE_LAYOUT" value="24"/>
			<member name="GARCON_MENU_NODE_TYPE_MENUNAME" value="25"/>
			<member name="GARCON_MENU_NODE_TYPE_SEPARATOR" value="26"/>
			<member name="GARCON_MENU_NODE_TYPE_MERGE" value="27"/>
			<member name="GARCON_MENU_NODE_TYPE_MERGE_FILE" value="28"/>
			<member name="GARCON_MENU_NODE_TYPE_MERGE_DIR" value="29"/>
			<member name="GARCON_MENU_NODE_TYPE_DEFAULT_MERGE_DIRS" value="30"/>
		</enum>
		<object name="GarconMenu" parent="GObject" type-name="GarconMenu" get-type="garcon_menu_get_type">
			<implements>
				<interface name="GarconMenuElement"/>
			</implements>
			<method name="add_menu" symbol="garcon_menu_add_menu">
				<return-type type="void"/>
				<parameters>
					<parameter name="menu" type="GarconMenu*"/>
					<parameter name="submenu" type="GarconMenu*"/>
				</parameters>
			</method>
			<method name="get_directory" symbol="garcon_menu_get_directory">
				<return-type type="GarconMenuDirectory*"/>
				<parameters>
					<parameter name="menu" type="GarconMenu*"/>
				</parameters>
			</method>
			<method name="get_elements" symbol="garcon_menu_get_elements">
				<return-type type="GList*"/>
				<parameters>
					<parameter name="menu" type="GarconMenu*"/>
				</parameters>
			</method>
			<method name="get_file" symbol="garcon_menu_get_file">
				<return-type type="GFile*"/>
				<parameters>
					<parameter name="menu" type="GarconMenu*"/>
				</parameters>
			</method>
			<method name="get_item_pool" symbol="garcon_menu_get_item_pool">
				<return-type type="GarconMenuItemPool*"/>
				<parameters>
					<parameter name="menu" type="GarconMenu*"/>
				</parameters>
			</method>
			<method name="get_items" symbol="garcon_menu_get_items">
				<return-type type="GList*"/>
				<parameters>
					<parameter name="menu" type="GarconMenu*"/>
				</parameters>
			</method>
			<method name="get_menu_with_name" symbol="garcon_menu_get_menu_with_name">
				<return-type type="GarconMenu*"/>
				<parameters>
					<parameter name="menu" type="GarconMenu*"/>
					<parameter name="name" type="gchar*"/>
				</parameters>
			</method>
			<method name="get_menus" symbol="garcon_menu_get_menus">
				<return-type type="GList*"/>
				<parameters>
					<parameter name="menu" type="GarconMenu*"/>
				</parameters>
			</method>
			<method name="get_parent" symbol="garcon_menu_get_parent">
				<return-type type="GarconMenu*"/>
				<parameters>
					<parameter name="menu" type="GarconMenu*"/>
				</parameters>
			</method>
			<method name="load" symbol="garcon_menu_load">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="menu" type="GarconMenu*"/>
					<parameter name="cancellable" type="GCancellable*"/>
					<parameter name="error" type="GError**"/>
				</parameters>
			</method>
			<constructor name="new" symbol="garcon_menu_new">
				<return-type type="GarconMenu*"/>
				<parameters>
					<parameter name="file" type="GFile*"/>
				</parameters>
			</constructor>
			<constructor name="new_applications" symbol="garcon_menu_new_applications">
				<return-type type="GarconMenu*"/>
			</constructor>
			<constructor name="new_for_path" symbol="garcon_menu_new_for_path">
				<return-type type="GarconMenu*"/>
				<parameters>
					<parameter name="filename" type="gchar*"/>
				</parameters>
			</constructor>
			<property name="directory" type="GarconMenuDirectory*" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="file" type="GFile*" readable="1" writable="1" construct="0" construct-only="1"/>
			<signal name="directory-changed" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="object" type="GarconMenu*"/>
					<parameter name="p0" type="GarconMenuDirectory*"/>
					<parameter name="p1" type="GarconMenuDirectory*"/>
				</parameters>
			</signal>
			<signal name="reload-required" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="object" type="GarconMenu*"/>
				</parameters>
			</signal>
		</object>
		<object name="GarconMenuDirectory" parent="GObject" type-name="GarconMenuDirectory" get-type="garcon_menu_directory_get_type">
			<method name="equal" symbol="garcon_menu_directory_equal">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="directory" type="GarconMenuDirectory*"/>
					<parameter name="other" type="GarconMenuDirectory*"/>
				</parameters>
			</method>
			<method name="get_comment" symbol="garcon_menu_directory_get_comment">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="directory" type="GarconMenuDirectory*"/>
				</parameters>
			</method>
			<method name="get_file" symbol="garcon_menu_directory_get_file">
				<return-type type="GFile*"/>
				<parameters>
					<parameter name="directory" type="GarconMenuDirectory*"/>
				</parameters>
			</method>
			<method name="get_hidden" symbol="garcon_menu_directory_get_hidden">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="directory" type="GarconMenuDirectory*"/>
				</parameters>
			</method>
			<method name="get_icon_name" symbol="garcon_menu_directory_get_icon_name">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="directory" type="GarconMenuDirectory*"/>
				</parameters>
			</method>
			<method name="get_name" symbol="garcon_menu_directory_get_name">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="directory" type="GarconMenuDirectory*"/>
				</parameters>
			</method>
			<method name="get_no_display" symbol="garcon_menu_directory_get_no_display">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="directory" type="GarconMenuDirectory*"/>
				</parameters>
			</method>
			<method name="get_show_in_environment" symbol="garcon_menu_directory_get_show_in_environment">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="directory" type="GarconMenuDirectory*"/>
				</parameters>
			</method>
			<method name="get_visible" symbol="garcon_menu_directory_get_visible">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="directory" type="GarconMenuDirectory*"/>
				</parameters>
			</method>
			<constructor name="new" symbol="garcon_menu_directory_new">
				<return-type type="GarconMenuDirectory*"/>
				<parameters>
					<parameter name="file" type="GFile*"/>
				</parameters>
			</constructor>
			<method name="set_comment" symbol="garcon_menu_directory_set_comment">
				<return-type type="void"/>
				<parameters>
					<parameter name="directory" type="GarconMenuDirectory*"/>
					<parameter name="comment" type="gchar*"/>
				</parameters>
			</method>
			<method name="set_icon_name" symbol="garcon_menu_directory_set_icon_name">
				<return-type type="void"/>
				<parameters>
					<parameter name="directory" type="GarconMenuDirectory*"/>
					<parameter name="icon" type="gchar*"/>
				</parameters>
			</method>
			<method name="set_name" symbol="garcon_menu_directory_set_name">
				<return-type type="void"/>
				<parameters>
					<parameter name="directory" type="GarconMenuDirectory*"/>
					<parameter name="name" type="gchar*"/>
				</parameters>
			</method>
			<method name="set_no_display" symbol="garcon_menu_directory_set_no_display">
				<return-type type="void"/>
				<parameters>
					<parameter name="directory" type="GarconMenuDirectory*"/>
					<parameter name="no_display" type="gboolean"/>
				</parameters>
			</method>
			<property name="comment" type="char*" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="file" type="GFile*" readable="1" writable="1" construct="0" construct-only="1"/>
			<property name="icon-name" type="char*" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="name" type="char*" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="no-display" type="gboolean" readable="1" writable="1" construct="0" construct-only="0"/>
		</object>
		<object name="GarconMenuItem" parent="GObject" type-name="GarconMenuItem" get-type="garcon_menu_item_get_type">
			<implements>
				<interface name="GarconMenuElement"/>
			</implements>
			<method name="decrement_allocated" symbol="garcon_menu_item_decrement_allocated">
				<return-type type="void"/>
				<parameters>
					<parameter name="item" type="GarconMenuItem*"/>
				</parameters>
			</method>
			<method name="get_action" symbol="garcon_menu_item_get_action">
				<return-type type="GarconMenuItemAction*"/>
				<parameters>
					<parameter name="item" type="GarconMenuItem*"/>
					<parameter name="action_name" type="gchar*"/>
				</parameters>
			</method>
			<method name="get_actions" symbol="garcon_menu_item_get_actions">
				<return-type type="GList*"/>
				<parameters>
					<parameter name="item" type="GarconMenuItem*"/>
				</parameters>
			</method>
			<method name="get_allocated" symbol="garcon_menu_item_get_allocated">
				<return-type type="gint"/>
				<parameters>
					<parameter name="item" type="GarconMenuItem*"/>
				</parameters>
			</method>
			<method name="get_categories" symbol="garcon_menu_item_get_categories">
				<return-type type="GList*"/>
				<parameters>
					<parameter name="item" type="GarconMenuItem*"/>
				</parameters>
			</method>
			<method name="get_command" symbol="garcon_menu_item_get_command">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="item" type="GarconMenuItem*"/>
				</parameters>
			</method>
			<method name="get_comment" symbol="garcon_menu_item_get_comment">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="item" type="GarconMenuItem*"/>
				</parameters>
			</method>
			<method name="get_desktop_id" symbol="garcon_menu_item_get_desktop_id">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="item" type="GarconMenuItem*"/>
				</parameters>
			</method>
			<method name="get_file" symbol="garcon_menu_item_get_file">
				<return-type type="GFile*"/>
				<parameters>
					<parameter name="item" type="GarconMenuItem*"/>
				</parameters>
			</method>
			<method name="get_generic_name" symbol="garcon_menu_item_get_generic_name">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="item" type="GarconMenuItem*"/>
				</parameters>
			</method>
			<method name="get_hidden" symbol="garcon_menu_item_get_hidden">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="item" type="GarconMenuItem*"/>
				</parameters>
			</method>
			<method name="get_icon_name" symbol="garcon_menu_item_get_icon_name">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="item" type="GarconMenuItem*"/>
				</parameters>
			</method>
			<method name="get_name" symbol="garcon_menu_item_get_name">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="item" type="GarconMenuItem*"/>
				</parameters>
			</method>
			<method name="get_no_display" symbol="garcon_menu_item_get_no_display">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="item" type="GarconMenuItem*"/>
				</parameters>
			</method>
			<method name="get_path" symbol="garcon_menu_item_get_path">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="item" type="GarconMenuItem*"/>
				</parameters>
			</method>
			<method name="get_show_in_environment" symbol="garcon_menu_item_get_show_in_environment">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="item" type="GarconMenuItem*"/>
				</parameters>
			</method>
			<method name="get_try_exec" symbol="garcon_menu_item_get_try_exec">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="item" type="GarconMenuItem*"/>
				</parameters>
			</method>
			<method name="get_uri" symbol="garcon_menu_item_get_uri">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="item" type="GarconMenuItem*"/>
				</parameters>
			</method>
			<method name="has_action" symbol="garcon_menu_item_has_action">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="item" type="GarconMenuItem*"/>
					<parameter name="action_name" type="gchar*"/>
				</parameters>
			</method>
			<method name="has_category" symbol="garcon_menu_item_has_category">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="item" type="GarconMenuItem*"/>
					<parameter name="category" type="gchar*"/>
				</parameters>
			</method>
			<method name="increment_allocated" symbol="garcon_menu_item_increment_allocated">
				<return-type type="void"/>
				<parameters>
					<parameter name="item" type="GarconMenuItem*"/>
				</parameters>
			</method>
			<constructor name="new" symbol="garcon_menu_item_new">
				<return-type type="GarconMenuItem*"/>
				<parameters>
					<parameter name="file" type="GFile*"/>
				</parameters>
			</constructor>
			<constructor name="new_for_path" symbol="garcon_menu_item_new_for_path">
				<return-type type="GarconMenuItem*"/>
				<parameters>
					<parameter name="filename" type="gchar*"/>
				</parameters>
			</constructor>
			<constructor name="new_for_uri" symbol="garcon_menu_item_new_for_uri">
				<return-type type="GarconMenuItem*"/>
				<parameters>
					<parameter name="uri" type="gchar*"/>
				</parameters>
			</constructor>
			<method name="only_show_in_environment" symbol="garcon_menu_item_only_show_in_environment">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="item" type="GarconMenuItem*"/>
				</parameters>
			</method>
			<method name="ref" symbol="garcon_menu_item_ref">
				<return-type type="void"/>
				<parameters>
					<parameter name="item" type="GarconMenuItem*"/>
				</parameters>
			</method>
			<method name="reload" symbol="garcon_menu_item_reload">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="item" type="GarconMenuItem*"/>
					<parameter name="affects_the_outside" type="gboolean*"/>
					<parameter name="error" type="GError**"/>
				</parameters>
			</method>
			<method name="reload_from_file" symbol="garcon_menu_item_reload_from_file">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="item" type="GarconMenuItem*"/>
					<parameter name="file" type="GFile*"/>
					<parameter name="affects_the_outside" type="gboolean*"/>
					<parameter name="error" type="GError**"/>
				</parameters>
			</method>
			<method name="requires_terminal" symbol="garcon_menu_item_requires_terminal">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="item" type="GarconMenuItem*"/>
				</parameters>
			</method>
			<method name="set_action" symbol="garcon_menu_item_set_action">
				<return-type type="void"/>
				<parameters>
					<parameter name="item" type="GarconMenuItem*"/>
					<parameter name="action_name" type="gchar*"/>
					<parameter name="action" type="GarconMenuItemAction*"/>
				</parameters>
			</method>
			<method name="set_categories" symbol="garcon_menu_item_set_categories">
				<return-type type="void"/>
				<parameters>
					<parameter name="item" type="GarconMenuItem*"/>
					<parameter name="categories" type="GList*"/>
				</parameters>
			</method>
			<method name="set_command" symbol="garcon_menu_item_set_command">
				<return-type type="void"/>
				<parameters>
					<parameter name="item" type="GarconMenuItem*"/>
					<parameter name="command" type="gchar*"/>
				</parameters>
			</method>
			<method name="set_comment" symbol="garcon_menu_item_set_comment">
				<return-type type="void"/>
				<parameters>
					<parameter name="item" type="GarconMenuItem*"/>
					<parameter name="comment" type="gchar*"/>
				</parameters>
			</method>
			<method name="set_desktop_id" symbol="garcon_menu_item_set_desktop_id">
				<return-type type="void"/>
				<parameters>
					<parameter name="item" type="GarconMenuItem*"/>
					<parameter name="desktop_id" type="gchar*"/>
				</parameters>
			</method>
			<method name="set_generic_name" symbol="garcon_menu_item_set_generic_name">
				<return-type type="void"/>
				<parameters>
					<parameter name="item" type="GarconMenuItem*"/>
					<parameter name="generic_name" type="gchar*"/>
				</parameters>
			</method>
			<method name="set_hidden" symbol="garcon_menu_item_set_hidden">
				<return-type type="void"/>
				<parameters>
					<parameter name="item" type="GarconMenuItem*"/>
					<parameter name="hidden" type="gboolean"/>
				</parameters>
			</method>
			<method name="set_icon_name" symbol="garcon_menu_item_set_icon_name">
				<return-type type="void"/>
				<parameters>
					<parameter name="item" type="GarconMenuItem*"/>
					<parameter name="icon_name" type="gchar*"/>
				</parameters>
			</method>
			<method name="set_name" symbol="garcon_menu_item_set_name">
				<return-type type="void"/>
				<parameters>
					<parameter name="item" type="GarconMenuItem*"/>
					<parameter name="name" type="gchar*"/>
				</parameters>
			</method>
			<method name="set_no_display" symbol="garcon_menu_item_set_no_display">
				<return-type type="void"/>
				<parameters>
					<parameter name="item" type="GarconMenuItem*"/>
					<parameter name="no_display" type="gboolean"/>
				</parameters>
			</method>
			<method name="set_path" symbol="garcon_menu_item_set_path">
				<return-type type="void"/>
				<parameters>
					<parameter name="item" type="GarconMenuItem*"/>
					<parameter name="path" type="gchar*"/>
				</parameters>
			</method>
			<method name="set_requires_terminal" symbol="garcon_menu_item_set_requires_terminal">
				<return-type type="void"/>
				<parameters>
					<parameter name="item" type="GarconMenuItem*"/>
					<parameter name="requires_terminal" type="gboolean"/>
				</parameters>
			</method>
			<method name="set_supports_startup_notification" symbol="garcon_menu_item_set_supports_startup_notification">
				<return-type type="void"/>
				<parameters>
					<parameter name="item" type="GarconMenuItem*"/>
					<parameter name="supports_startup_notification" type="gboolean"/>
				</parameters>
			</method>
			<method name="set_try_exec" symbol="garcon_menu_item_set_try_exec">
				<return-type type="void"/>
				<parameters>
					<parameter name="item" type="GarconMenuItem*"/>
					<parameter name="try_exec" type="gchar*"/>
				</parameters>
			</method>
			<method name="supports_startup_notification" symbol="garcon_menu_item_supports_startup_notification">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="item" type="GarconMenuItem*"/>
				</parameters>
			</method>
			<method name="unref" symbol="garcon_menu_item_unref">
				<return-type type="void"/>
				<parameters>
					<parameter name="item" type="GarconMenuItem*"/>
				</parameters>
			</method>
			<property name="command" type="char*" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="comment" type="char*" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="desktop-id" type="char*" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="file" type="GFile*" readable="1" writable="1" construct="0" construct-only="1"/>
			<property name="generic-name" type="char*" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="hidden" type="gboolean" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="icon-name" type="char*" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="name" type="char*" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="no-display" type="gboolean" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="path" type="char*" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="requires-terminal" type="gboolean" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="supports-startup-notification" type="gboolean" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="try-exec" type="char*" readable="1" writable="1" construct="0" construct-only="0"/>
			<signal name="changed" when="FIRST">
				<return-type type="void"/>
				<parameters>
					<parameter name="item" type="GarconMenuItem*"/>
				</parameters>
			</signal>
		</object>
		<object name="GarconMenuItemAction" parent="GObject" type-name="GarconMenuItemAction" get-type="garcon_menu_item_action_get_type">
			<method name="get_command" symbol="garcon_menu_item_action_get_command">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="action" type="GarconMenuItemAction*"/>
				</parameters>
			</method>
			<method name="get_icon_name" symbol="garcon_menu_item_action_get_icon_name">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="action" type="GarconMenuItemAction*"/>
				</parameters>
			</method>
			<method name="get_name" symbol="garcon_menu_item_action_get_name">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="action" type="GarconMenuItemAction*"/>
				</parameters>
			</method>
			<constructor name="new" symbol="garcon_menu_item_action_new">
				<return-type type="GarconMenuItemAction*"/>
			</constructor>
			<method name="ref" symbol="garcon_menu_item_action_ref">
				<return-type type="void"/>
				<parameters>
					<parameter name="action" type="GarconMenuItemAction*"/>
				</parameters>
			</method>
			<method name="set_command" symbol="garcon_menu_item_action_set_command">
				<return-type type="void"/>
				<parameters>
					<parameter name="action" type="GarconMenuItemAction*"/>
					<parameter name="command" type="gchar*"/>
				</parameters>
			</method>
			<method name="set_icon_name" symbol="garcon_menu_item_action_set_icon_name">
				<return-type type="void"/>
				<parameters>
					<parameter name="action" type="GarconMenuItemAction*"/>
					<parameter name="icon_name" type="gchar*"/>
				</parameters>
			</method>
			<method name="set_name" symbol="garcon_menu_item_action_set_name">
				<return-type type="void"/>
				<parameters>
					<parameter name="action" type="GarconMenuItemAction*"/>
					<parameter name="name" type="gchar*"/>
				</parameters>
			</method>
			<method name="unref" symbol="garcon_menu_item_action_unref">
				<return-type type="void"/>
				<parameters>
					<parameter name="action" type="GarconMenuItemAction*"/>
				</parameters>
			</method>
			<property name="command" type="char*" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="icon-name" type="char*" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="name" type="char*" readable="1" writable="1" construct="0" construct-only="0"/>
			<vfunc name="changed">
				<return-type type="void"/>
				<parameters>
					<parameter name="action" type="GarconMenuItemAction*"/>
				</parameters>
			</vfunc>
		</object>
		<object name="GarconMenuItemCache" parent="GObject" type-name="GarconMenuItemCache" get-type="garcon_menu_item_cache_get_type">
			<method name="foreach" symbol="garcon_menu_item_cache_foreach">
				<return-type type="void"/>
				<parameters>
					<parameter name="cache" type="GarconMenuItemCache*"/>
					<parameter name="func" type="GHFunc"/>
					<parameter name="user_data" type="gpointer"/>
				</parameters>
			</method>
			<method name="get_default" symbol="garcon_menu_item_cache_get_default">
				<return-type type="GarconMenuItemCache*"/>
			</method>
			<method name="invalidate" symbol="garcon_menu_item_cache_invalidate">
				<return-type type="void"/>
				<parameters>
					<parameter name="cache" type="GarconMenuItemCache*"/>
				</parameters>
			</method>
			<method name="invalidate_file" symbol="garcon_menu_item_cache_invalidate_file">
				<return-type type="void"/>
				<parameters>
					<parameter name="cache" type="GarconMenuItemCache*"/>
					<parameter name="file" type="GFile*"/>
				</parameters>
			</method>
			<method name="lookup" symbol="garcon_menu_item_cache_lookup">
				<return-type type="GarconMenuItem*"/>
				<parameters>
					<parameter name="cache" type="GarconMenuItemCache*"/>
					<parameter name="uri" type="gchar*"/>
					<parameter name="desktop_id" type="gchar*"/>
				</parameters>
			</method>
		</object>
		<object name="GarconMenuItemPool" parent="GObject" type-name="GarconMenuItemPool" get-type="garcon_menu_item_pool_get_type">
			<method name="apply_exclude_rule" symbol="garcon_menu_item_pool_apply_exclude_rule">
				<return-type type="void"/>
				<parameters>
					<parameter name="pool" type="GarconMenuItemPool*"/>
					<parameter name="node" type="GNode*"/>
				</parameters>
			</method>
			<method name="clear" symbol="garcon_menu_item_pool_clear">
				<return-type type="void"/>
				<parameters>
					<parameter name="pool" type="GarconMenuItemPool*"/>
				</parameters>
			</method>
			<method name="foreach" symbol="garcon_menu_item_pool_foreach">
				<return-type type="void"/>
				<parameters>
					<parameter name="pool" type="GarconMenuItemPool*"/>
					<parameter name="func" type="GHFunc"/>
					<parameter name="user_data" type="gpointer"/>
				</parameters>
			</method>
			<method name="get_empty" symbol="garcon_menu_item_pool_get_empty">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="pool" type="GarconMenuItemPool*"/>
				</parameters>
			</method>
			<method name="insert" symbol="garcon_menu_item_pool_insert">
				<return-type type="void"/>
				<parameters>
					<parameter name="pool" type="GarconMenuItemPool*"/>
					<parameter name="item" type="GarconMenuItem*"/>
				</parameters>
			</method>
			<method name="lookup" symbol="garcon_menu_item_pool_lookup">
				<return-type type="GarconMenuItem*"/>
				<parameters>
					<parameter name="pool" type="GarconMenuItemPool*"/>
					<parameter name="desktop_id" type="gchar*"/>
				</parameters>
			</method>
			<method name="lookup_file" symbol="garcon_menu_item_pool_lookup_file">
				<return-type type="GarconMenuItem*"/>
				<parameters>
					<parameter name="pool" type="GarconMenuItemPool*"/>
					<parameter name="file" type="GFile*"/>
				</parameters>
			</method>
			<constructor name="new" symbol="garcon_menu_item_pool_new">
				<return-type type="GarconMenuItemPool*"/>
			</constructor>
		</object>
		<object name="GarconMenuMerger" parent="GObject" type-name="GarconMenuMerger" get-type="garcon_menu_merger_get_type">
			<implements>
				<interface name="GarconMenuTreeProvider"/>
			</implements>
			<constructor name="new" symbol="garcon_menu_merger_new">
				<return-type type="GarconMenuMerger*"/>
				<parameters>
					<parameter name="provider" type="GarconMenuTreeProvider*"/>
				</parameters>
			</constructor>
			<method name="run" symbol="garcon_menu_merger_run">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="merger" type="GarconMenuMerger*"/>
					<parameter name="merge_files" type="GList**"/>
					<parameter name="merge_dirs" type="GList**"/>
					<parameter name="cancellable" type="GCancellable*"/>
					<parameter name="error" type="GError**"/>
				</parameters>
			</method>
			<property name="tree-provider" type="GarconMenuTreeProvider*" readable="1" writable="1" construct="0" construct-only="1"/>
		</object>
		<object name="GarconMenuNode" parent="GObject" type-name="GarconMenuNode" get-type="garcon_menu_node_get_type">
			<method name="copy" symbol="garcon_menu_node_copy">
				<return-type type="GarconMenuNode*"/>
				<parameters>
					<parameter name="node" type="GarconMenuNode*"/>
				</parameters>
			</method>
			<method name="create" symbol="garcon_menu_node_create">
				<return-type type="GarconMenuNode*"/>
				<parameters>
					<parameter name="node_type" type="GarconMenuNodeType"/>
					<parameter name="first_value" type="gpointer"/>
				</parameters>
			</method>
			<method name="get_merge_file_filename" symbol="garcon_menu_node_get_merge_file_filename">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="node" type="GarconMenuNode*"/>
				</parameters>
			</method>
			<method name="get_merge_file_type" symbol="garcon_menu_node_get_merge_file_type">
				<return-type type="GarconMenuMergeFileType"/>
				<parameters>
					<parameter name="node" type="GarconMenuNode*"/>
				</parameters>
			</method>
			<method name="get_node_type" symbol="garcon_menu_node_get_node_type">
				<return-type type="GarconMenuNodeType"/>
				<parameters>
					<parameter name="node" type="GarconMenuNode*"/>
				</parameters>
			</method>
			<method name="get_string" symbol="garcon_menu_node_get_string">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="node" type="GarconMenuNode*"/>
				</parameters>
			</method>
			<constructor name="new" symbol="garcon_menu_node_new">
				<return-type type="GarconMenuNode*"/>
				<parameters>
					<parameter name="node_type" type="GarconMenuNodeType"/>
				</parameters>
			</constructor>
			<method name="set_merge_file_filename" symbol="garcon_menu_node_set_merge_file_filename">
				<return-type type="void"/>
				<parameters>
					<parameter name="node" type="GarconMenuNode*"/>
					<parameter name="filename" type="gchar*"/>
				</parameters>
			</method>
			<method name="set_merge_file_type" symbol="garcon_menu_node_set_merge_file_type">
				<return-type type="void"/>
				<parameters>
					<parameter name="node" type="GarconMenuNode*"/>
					<parameter name="type" type="GarconMenuMergeFileType"/>
				</parameters>
			</method>
			<method name="set_string" symbol="garcon_menu_node_set_string">
				<return-type type="void"/>
				<parameters>
					<parameter name="node" type="GarconMenuNode*"/>
					<parameter name="value" type="gchar*"/>
				</parameters>
			</method>
			<method name="tree_compare" symbol="garcon_menu_node_tree_compare">
				<return-type type="gint"/>
				<parameters>
					<parameter name="tree" type="GNode*"/>
					<parameter name="other_tree" type="GNode*"/>
				</parameters>
			</method>
			<method name="tree_copy" symbol="garcon_menu_node_tree_copy">
				<return-type type="GNode*"/>
				<parameters>
					<parameter name="tree" type="GNode*"/>
				</parameters>
			</method>
			<method name="tree_free" symbol="garcon_menu_node_tree_free">
				<return-type type="void"/>
				<parameters>
					<parameter name="tree" type="GNode*"/>
				</parameters>
			</method>
			<method name="tree_free_data" symbol="garcon_menu_node_tree_free_data">
				<return-type type="void"/>
				<parameters>
					<parameter name="tree" type="GNode*"/>
				</parameters>
			</method>
			<method name="tree_get_boolean_child" symbol="garcon_menu_node_tree_get_boolean_child">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="tree" type="GNode*"/>
					<parameter name="type" type="GarconMenuNodeType"/>
				</parameters>
			</method>
			<method name="tree_get_child_node" symbol="garcon_menu_node_tree_get_child_node">
				<return-type type="GNode*"/>
				<parameters>
					<parameter name="tree" type="GNode*"/>
					<parameter name="type" type="GarconMenuNodeType"/>
					<parameter name="reverse" type="gboolean"/>
				</parameters>
			</method>
			<method name="tree_get_child_nodes" symbol="garcon_menu_node_tree_get_child_nodes">
				<return-type type="GList*"/>
				<parameters>
					<parameter name="tree" type="GNode*"/>
					<parameter name="type" type="GarconMenuNodeType"/>
					<parameter name="reverse" type="gboolean"/>
				</parameters>
			</method>
			<method name="tree_get_layout_merge_type" symbol="garcon_menu_node_tree_get_layout_merge_type">
				<return-type type="GarconMenuLayoutMergeType"/>
				<parameters>
					<parameter name="tree" type="GNode*"/>
				</parameters>
			</method>
			<method name="tree_get_merge_file_filename" symbol="garcon_menu_node_tree_get_merge_file_filename">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="tree" type="GNode*"/>
				</parameters>
			</method>
			<method name="tree_get_merge_file_type" symbol="garcon_menu_node_tree_get_merge_file_type">
				<return-type type="GarconMenuMergeFileType"/>
				<parameters>
					<parameter name="tree" type="GNode*"/>
				</parameters>
			</method>
			<method name="tree_get_node_type" symbol="garcon_menu_node_tree_get_node_type">
				<return-type type="GarconMenuNodeType"/>
				<parameters>
					<parameter name="tree" type="GNode*"/>
				</parameters>
			</method>
			<method name="tree_get_string" symbol="garcon_menu_node_tree_get_string">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="tree" type="GNode*"/>
				</parameters>
			</method>
			<method name="tree_get_string_child" symbol="garcon_menu_node_tree_get_string_child">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="tree" type="GNode*"/>
					<parameter name="type" type="GarconMenuNodeType"/>
				</parameters>
			</method>
			<method name="tree_get_string_children" symbol="garcon_menu_node_tree_get_string_children">
				<return-type type="GList*"/>
				<parameters>
					<parameter name="tree" type="GNode*"/>
					<parameter name="type" type="GarconMenuNodeType"/>
					<parameter name="reverse" type="gboolean"/>
				</parameters>
			</method>
			<method name="tree_rule_matches" symbol="garcon_menu_node_tree_rule_matches">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="tree" type="GNode*"/>
					<parameter name="item" type="GarconMenuItem*"/>
				</parameters>
			</method>
			<method name="tree_set_merge_file_filename" symbol="garcon_menu_node_tree_set_merge_file_filename">
				<return-type type="void"/>
				<parameters>
					<parameter name="tree" type="GNode*"/>
					<parameter name="filename" type="gchar*"/>
				</parameters>
			</method>
			<method name="tree_set_string" symbol="garcon_menu_node_tree_set_string">
				<return-type type="void"/>
				<parameters>
					<parameter name="tree" type="GNode*"/>
					<parameter name="value" type="gchar*"/>
				</parameters>
			</method>
			<property name="node-type" type="GarconMenuNodeType" readable="1" writable="1" construct="0" construct-only="0"/>
		</object>
		<object name="GarconMenuParser" parent="GObject" type-name="GarconMenuParser" get-type="garcon_menu_parser_get_type">
			<implements>
				<interface name="GarconMenuTreeProvider"/>
			</implements>
			<constructor name="new" symbol="garcon_menu_parser_new">
				<return-type type="GarconMenuParser*"/>
				<parameters>
					<parameter name="file" type="GFile*"/>
				</parameters>
			</constructor>
			<method name="run" symbol="garcon_menu_parser_run">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="parser" type="GarconMenuParser*"/>
					<parameter name="cancellable" type="GCancellable*"/>
					<parameter name="error" type="GError**"/>
				</parameters>
			</method>
			<property name="file" type="GFile*" readable="1" writable="1" construct="0" construct-only="1"/>
		</object>
		<object name="GarconMenuSeparator" parent="GObject" type-name="GarconMenuSeparator" get-type="garcon_menu_separator_get_type">
			<implements>
				<interface name="GarconMenuElement"/>
			</implements>
			<method name="get_default" symbol="garcon_menu_separator_get_default">
				<return-type type="GarconMenuSeparator*"/>
			</method>
		</object>
		<interface name="GarconMenuElement" type-name="GarconMenuElement" get-type="garcon_menu_element_get_type">
			<requires>
				<interface name="GObject"/>
			</requires>
			<method name="equal" symbol="garcon_menu_element_equal">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="a" type="GarconMenuElement*"/>
					<parameter name="b" type="GarconMenuElement*"/>
				</parameters>
			</method>
			<method name="get_comment" symbol="garcon_menu_element_get_comment">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="element" type="GarconMenuElement*"/>
				</parameters>
			</method>
			<method name="get_icon_name" symbol="garcon_menu_element_get_icon_name">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="element" type="GarconMenuElement*"/>
				</parameters>
			</method>
			<method name="get_name" symbol="garcon_menu_element_get_name">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="element" type="GarconMenuElement*"/>
				</parameters>
			</method>
			<method name="get_no_display" symbol="garcon_menu_element_get_no_display">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="element" type="GarconMenuElement*"/>
				</parameters>
			</method>
			<method name="get_show_in_environment" symbol="garcon_menu_element_get_show_in_environment">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="element" type="GarconMenuElement*"/>
				</parameters>
			</method>
			<method name="get_visible" symbol="garcon_menu_element_get_visible">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="element" type="GarconMenuElement*"/>
				</parameters>
			</method>
			<vfunc name="equal">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="element" type="GarconMenuElement*"/>
					<parameter name="other" type="GarconMenuElement*"/>
				</parameters>
			</vfunc>
			<vfunc name="get_comment">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="element" type="GarconMenuElement*"/>
				</parameters>
			</vfunc>
			<vfunc name="get_icon_name">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="element" type="GarconMenuElement*"/>
				</parameters>
			</vfunc>
			<vfunc name="get_name">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="element" type="GarconMenuElement*"/>
				</parameters>
			</vfunc>
			<vfunc name="get_no_display">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="element" type="GarconMenuElement*"/>
				</parameters>
			</vfunc>
			<vfunc name="get_show_in_environment">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="element" type="GarconMenuElement*"/>
				</parameters>
			</vfunc>
			<vfunc name="get_visible">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="element" type="GarconMenuElement*"/>
				</parameters>
			</vfunc>
		</interface>
		<interface name="GarconMenuTreeProvider" type-name="GarconMenuTreeProvider" get-type="garcon_menu_tree_provider_get_type">
			<requires>
				<interface name="GObject"/>
			</requires>
			<method name="get_file" symbol="garcon_menu_tree_provider_get_file">
				<return-type type="GFile*"/>
				<parameters>
					<parameter name="provider" type="GarconMenuTreeProvider*"/>
				</parameters>
			</method>
			<method name="get_tree" symbol="garcon_menu_tree_provider_get_tree">
				<return-type type="GNode*"/>
				<parameters>
					<parameter name="provider" type="GarconMenuTreeProvider*"/>
				</parameters>
			</method>
			<vfunc name="get_file">
				<return-type type="GFile*"/>
				<parameters>
					<parameter name="provider" type="GarconMenuTreeProvider*"/>
				</parameters>
			</vfunc>
			<vfunc name="get_tree">
				<return-type type="GNode*"/>
				<parameters>
					<parameter name="provider" type="GarconMenuTreeProvider*"/>
				</parameters>
			</vfunc>
		</interface>
		<constant name="GARCON_ENVIRONMENT_XFCE" type="char*" value="XFCE"/>
		<constant name="GARCON_MAJOR_VERSION" type="int" value="0"/>
		<constant name="GARCON_MICRO_VERSION" type="int" value="0"/>
		<constant name="GARCON_MINOR_VERSION" type="int" value="5"/>
		<union name="GarconMenuNodeData">
		</union>
	</namespace>
</api>
