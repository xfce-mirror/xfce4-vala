<?xml version="1.0"?>
<api version="1.0">
	<namespace name="Xfce">
		<function name="libxfce4menu_check_version" symbol="libxfce4menu_check_version">
			<return-type type="gchar*"/>
			<parameters>
				<parameter name="required_major" type="guint"/>
				<parameter name="required_minor" type="guint"/>
				<parameter name="required_micro" type="guint"/>
			</parameters>
		</function>
		<struct name="XfceMenuAndRulesClass">
		</struct>
		<struct name="XfceMenuClass">
		</struct>
		<struct name="XfceMenuDirectoryClass">
		</struct>
		<struct name="XfceMenuItemCacheClass">
		</struct>
		<struct name="XfceMenuItemClass">
		</struct>
		<struct name="XfceMenuItemPoolClass">
		</struct>
		<struct name="XfceMenuLayoutClass">
		</struct>
		<struct name="XfceMenuLayoutNode">
			<method name="get_filename" symbol="xfce_menu_layout_node_get_filename">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="node" type="XfceMenuLayoutNode*"/>
				</parameters>
			</method>
			<method name="get_menuname" symbol="xfce_menu_layout_node_get_menuname">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="node" type="XfceMenuLayoutNode*"/>
				</parameters>
			</method>
			<method name="get_merge_type" symbol="xfce_menu_layout_node_get_merge_type">
				<return-type type="XfceMenuLayoutMergeType"/>
				<parameters>
					<parameter name="node" type="XfceMenuLayoutNode*"/>
				</parameters>
			</method>
		</struct>
		<struct name="XfceMenuMonitorVTable">
			<field name="monitor_file" type="GCallback"/>
			<field name="monitor_directory" type="GCallback"/>
			<field name="remove_monitor" type="GCallback"/>
		</struct>
		<struct name="XfceMenuMoveClass">
		</struct>
		<struct name="XfceMenuNotRulesClass">
		</struct>
		<struct name="XfceMenuOrRulesClass">
		</struct>
		<struct name="XfceMenuSeparatorClass">
		</struct>
		<struct name="XfceMenuStandardRulesClass">
		</struct>
		<enum name="XfceMenuLayoutMergeType">
			<member name="XFCE_MENU_LAYOUT_MERGE_MENUS" value="0"/>
			<member name="XFCE_MENU_LAYOUT_MERGE_FILES" value="1"/>
			<member name="XFCE_MENU_LAYOUT_MERGE_ALL" value="2"/>
		</enum>
		<enum name="XfceMenuLayoutNodeType">
			<member name="XFCE_MENU_LAYOUT_NODE_INVALID" value="0"/>
			<member name="XFCE_MENU_LAYOUT_NODE_FILENAME" value="1"/>
			<member name="XFCE_MENU_LAYOUT_NODE_MENUNAME" value="2"/>
			<member name="XFCE_MENU_LAYOUT_NODE_SEPARATOR" value="3"/>
			<member name="XFCE_MENU_LAYOUT_NODE_MERGE" value="4"/>
		</enum>
		<enum name="XfceMenuMonitorFlags">
			<member name="XFCE_MENU_MONITOR_DIRECTORIES" value="1"/>
			<member name="XFCE_MENU_MONITOR_MENU_FILES" value="2"/>
			<member name="XFCE_MENU_MONITOR_DIRECTORY_FILES" value="4"/>
			<member name="XFCE_MENU_MONITOR_DESKTOP_FILES" value="8"/>
		</enum>
		<object name="XfceMenu" parent="GObject" type-name="XfceMenu" get-type="xfce_menu_get_type">
			<implements>
				<interface name="XfceMenuElement"/>
			</implements>
			<method name="add_menu" symbol="xfce_menu_add_menu">
				<return-type type="void"/>
				<parameters>
					<parameter name="menu" type="XfceMenu*"/>
					<parameter name="submenu" type="XfceMenu*"/>
				</parameters>
			</method>
			<method name="get_app_dirs" symbol="xfce_menu_get_app_dirs">
				<return-type type="GSList*"/>
				<parameters>
					<parameter name="menu" type="XfceMenu*"/>
				</parameters>
			</method>
			<method name="get_deleted" symbol="xfce_menu_get_deleted">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="menu" type="XfceMenu*"/>
				</parameters>
			</method>
			<method name="get_directory" symbol="xfce_menu_get_directory">
				<return-type type="XfceMenuDirectory*"/>
				<parameters>
					<parameter name="menu" type="XfceMenu*"/>
				</parameters>
			</method>
			<method name="get_directory_dirs" symbol="xfce_menu_get_directory_dirs">
				<return-type type="GSList*"/>
				<parameters>
					<parameter name="menu" type="XfceMenu*"/>
				</parameters>
			</method>
			<method name="get_environment" symbol="xfce_menu_get_environment">
				<return-type type="gchar*"/>
			</method>
			<method name="get_filename" symbol="xfce_menu_get_filename">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="menu" type="XfceMenu*"/>
				</parameters>
			</method>
			<method name="get_item_pool" symbol="xfce_menu_get_item_pool">
				<return-type type="XfceMenuItemPool*"/>
				<parameters>
					<parameter name="menu" type="XfceMenu*"/>
				</parameters>
			</method>
			<method name="get_items" symbol="xfce_menu_get_items">
				<return-type type="GSList*"/>
				<parameters>
					<parameter name="menu" type="XfceMenu*"/>
				</parameters>
			</method>
			<method name="get_layout_elements" symbol="xfce_menu_get_layout_elements">
				<return-type type="GSList*"/>
				<parameters>
					<parameter name="menu" type="XfceMenu*"/>
				</parameters>
			</method>
			<method name="get_legacy_dirs" symbol="xfce_menu_get_legacy_dirs">
				<return-type type="GSList*"/>
				<parameters>
					<parameter name="menu" type="XfceMenu*"/>
				</parameters>
			</method>
			<method name="get_menu_with_name" symbol="xfce_menu_get_menu_with_name">
				<return-type type="XfceMenu*"/>
				<parameters>
					<parameter name="menu" type="XfceMenu*"/>
					<parameter name="name" type="gchar*"/>
				</parameters>
			</method>
			<method name="get_menus" symbol="xfce_menu_get_menus">
				<return-type type="GSList*"/>
				<parameters>
					<parameter name="menu" type="XfceMenu*"/>
				</parameters>
			</method>
			<method name="get_name" symbol="xfce_menu_get_name">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="menu" type="XfceMenu*"/>
				</parameters>
			</method>
			<method name="get_only_unallocated" symbol="xfce_menu_get_only_unallocated">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="menu" type="XfceMenu*"/>
				</parameters>
			</method>
			<method name="get_parent" symbol="xfce_menu_get_parent">
				<return-type type="XfceMenu*"/>
				<parameters>
					<parameter name="menu" type="XfceMenu*"/>
				</parameters>
			</method>
			<method name="get_root" symbol="xfce_menu_get_root">
				<return-type type="XfceMenu*"/>
				<parameters>
					<parameter name="error" type="GError**"/>
				</parameters>
			</method>
			<method name="has_layout" symbol="xfce_menu_has_layout">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="menu" type="XfceMenu*"/>
				</parameters>
			</method>
			<method name="init" symbol="xfce_menu_init">
				<return-type type="void"/>
				<parameters>
					<parameter name="env" type="gchar*"/>
				</parameters>
			</method>
			<method name="monitor_add_directory" symbol="xfce_menu_monitor_add_directory">
				<return-type type="gpointer"/>
				<parameters>
					<parameter name="menu" type="XfceMenu*"/>
					<parameter name="directory" type="gchar*"/>
				</parameters>
			</method>
			<method name="monitor_add_file" symbol="xfce_menu_monitor_add_file">
				<return-type type="gpointer"/>
				<parameters>
					<parameter name="menu" type="XfceMenu*"/>
					<parameter name="filename" type="gchar*"/>
				</parameters>
			</method>
			<method name="monitor_add_item" symbol="xfce_menu_monitor_add_item">
				<return-type type="gpointer"/>
				<parameters>
					<parameter name="menu" type="XfceMenu*"/>
					<parameter name="item" type="XfceMenuItem*"/>
				</parameters>
			</method>
			<method name="monitor_get_flags" symbol="xfce_menu_monitor_get_flags">
				<return-type type="XfceMenuMonitorFlags"/>
			</method>
			<method name="monitor_has_flags" symbol="xfce_menu_monitor_has_flags">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="flags" type="XfceMenuMonitorFlags"/>
				</parameters>
			</method>
			<method name="monitor_remove_directory" symbol="xfce_menu_monitor_remove_directory">
				<return-type type="void"/>
				<parameters>
					<parameter name="menu" type="XfceMenu*"/>
					<parameter name="directory" type="gchar*"/>
				</parameters>
			</method>
			<method name="monitor_remove_file" symbol="xfce_menu_monitor_remove_file">
				<return-type type="void"/>
				<parameters>
					<parameter name="menu" type="XfceMenu*"/>
					<parameter name="filename" type="gchar*"/>
				</parameters>
			</method>
			<method name="monitor_remove_item" symbol="xfce_menu_monitor_remove_item">
				<return-type type="void"/>
				<parameters>
					<parameter name="menu" type="XfceMenu*"/>
					<parameter name="item" type="XfceMenuItem*"/>
				</parameters>
			</method>
			<method name="monitor_set_flags" symbol="xfce_menu_monitor_set_flags">
				<return-type type="void"/>
				<parameters>
					<parameter name="flags" type="XfceMenuMonitorFlags"/>
				</parameters>
			</method>
			<method name="monitor_set_vtable" symbol="xfce_menu_monitor_set_vtable">
				<return-type type="void"/>
				<parameters>
					<parameter name="vtable" type="XfceMenuMonitorVTable*"/>
					<parameter name="user_data" type="gpointer"/>
				</parameters>
			</method>
			<constructor name="new" symbol="xfce_menu_new">
				<return-type type="XfceMenu*"/>
				<parameters>
					<parameter name="filename" type="gchar*"/>
					<parameter name="error" type="GError**"/>
				</parameters>
			</constructor>
			<method name="set_deleted" symbol="xfce_menu_set_deleted">
				<return-type type="void"/>
				<parameters>
					<parameter name="menu" type="XfceMenu*"/>
					<parameter name="deleted" type="gboolean"/>
				</parameters>
			</method>
			<method name="set_directory" symbol="xfce_menu_set_directory">
				<return-type type="void"/>
				<parameters>
					<parameter name="menu" type="XfceMenu*"/>
					<parameter name="directory" type="XfceMenuDirectory*"/>
				</parameters>
			</method>
			<method name="set_environment" symbol="xfce_menu_set_environment">
				<return-type type="void"/>
				<parameters>
					<parameter name="env" type="gchar*"/>
				</parameters>
			</method>
			<method name="set_filename" symbol="xfce_menu_set_filename">
				<return-type type="void"/>
				<parameters>
					<parameter name="menu" type="XfceMenu*"/>
					<parameter name="filename" type="gchar*"/>
				</parameters>
			</method>
			<method name="set_name" symbol="xfce_menu_set_name">
				<return-type type="void"/>
				<parameters>
					<parameter name="menu" type="XfceMenu*"/>
					<parameter name="name" type="gchar*"/>
				</parameters>
			</method>
			<method name="set_only_unallocated" symbol="xfce_menu_set_only_unallocated">
				<return-type type="void"/>
				<parameters>
					<parameter name="menu" type="XfceMenu*"/>
					<parameter name="only_unallocated" type="gboolean"/>
				</parameters>
			</method>
			<method name="shutdown" symbol="xfce_menu_shutdown">
				<return-type type="void"/>
			</method>
			<property name="deleted" type="gboolean" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="directory" type="XfceMenuDirectory*" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="filename" type="char*" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="name" type="char*" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="only-unallocated" type="gboolean" readable="1" writable="1" construct="0" construct-only="0"/>
		</object>
		<object name="XfceMenuAndRules" parent="XfceMenuStandardRules" type-name="XfceMenuAndRules" get-type="xfce_menu_and_rules_get_type">
			<implements>
				<interface name="XfceMenuRules"/>
			</implements>
			<constructor name="new" symbol="xfce_menu_and_rules_new">
				<return-type type="XfceMenuAndRules*"/>
			</constructor>
		</object>
		<object name="XfceMenuDirectory" parent="GObject" type-name="XfceMenuDirectory" get-type="xfce_menu_directory_get_type">
			<method name="get_comment" symbol="xfce_menu_directory_get_comment">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="directory" type="XfceMenuDirectory*"/>
				</parameters>
			</method>
			<method name="get_filename" symbol="xfce_menu_directory_get_filename">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="directory" type="XfceMenuDirectory*"/>
				</parameters>
			</method>
			<method name="get_hidden" symbol="xfce_menu_directory_get_hidden">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="directory" type="XfceMenuDirectory*"/>
				</parameters>
			</method>
			<method name="get_icon" symbol="xfce_menu_directory_get_icon">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="directory" type="XfceMenuDirectory*"/>
				</parameters>
			</method>
			<method name="get_name" symbol="xfce_menu_directory_get_name">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="directory" type="XfceMenuDirectory*"/>
				</parameters>
			</method>
			<method name="get_no_display" symbol="xfce_menu_directory_get_no_display">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="directory" type="XfceMenuDirectory*"/>
				</parameters>
			</method>
			<method name="set_comment" symbol="xfce_menu_directory_set_comment">
				<return-type type="void"/>
				<parameters>
					<parameter name="directory" type="XfceMenuDirectory*"/>
					<parameter name="comment" type="gchar*"/>
				</parameters>
			</method>
			<method name="set_filename" symbol="xfce_menu_directory_set_filename">
				<return-type type="void"/>
				<parameters>
					<parameter name="directory" type="XfceMenuDirectory*"/>
					<parameter name="name" type="gchar*"/>
				</parameters>
			</method>
			<method name="set_icon" symbol="xfce_menu_directory_set_icon">
				<return-type type="void"/>
				<parameters>
					<parameter name="directory" type="XfceMenuDirectory*"/>
					<parameter name="icon" type="gchar*"/>
				</parameters>
			</method>
			<method name="set_name" symbol="xfce_menu_directory_set_name">
				<return-type type="void"/>
				<parameters>
					<parameter name="directory" type="XfceMenuDirectory*"/>
					<parameter name="name" type="gchar*"/>
				</parameters>
			</method>
			<method name="set_no_display" symbol="xfce_menu_directory_set_no_display">
				<return-type type="void"/>
				<parameters>
					<parameter name="directory" type="XfceMenuDirectory*"/>
					<parameter name="no_display" type="gboolean"/>
				</parameters>
			</method>
			<method name="show_in_environment" symbol="xfce_menu_directory_show_in_environment">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="directory" type="XfceMenuDirectory*"/>
				</parameters>
			</method>
			<property name="comment" type="char*" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="filename" type="char*" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="icon" type="char*" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="name" type="char*" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="no-display" type="gboolean" readable="1" writable="1" construct="0" construct-only="0"/>
		</object>
		<object name="XfceMenuItem" parent="GObject" type-name="XfceMenuItem" get-type="xfce_menu_item_get_type">
			<implements>
				<interface name="XfceMenuElement"/>
			</implements>
			<method name="decrement_allocated" symbol="xfce_menu_item_decrement_allocated">
				<return-type type="void"/>
				<parameters>
					<parameter name="item" type="XfceMenuItem*"/>
				</parameters>
			</method>
			<method name="get_allocated" symbol="xfce_menu_item_get_allocated">
				<return-type type="gint"/>
				<parameters>
					<parameter name="item" type="XfceMenuItem*"/>
				</parameters>
			</method>
			<method name="get_categories" symbol="xfce_menu_item_get_categories">
				<return-type type="GList*"/>
				<parameters>
					<parameter name="item" type="XfceMenuItem*"/>
				</parameters>
			</method>
			<method name="get_command" symbol="xfce_menu_item_get_command">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="item" type="XfceMenuItem*"/>
				</parameters>
			</method>
			<method name="get_comment" symbol="xfce_menu_item_get_comment">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="item" type="XfceMenuItem*"/>
				</parameters>
			</method>
			<method name="get_desktop_id" symbol="xfce_menu_item_get_desktop_id">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="item" type="XfceMenuItem*"/>
				</parameters>
			</method>
			<method name="get_filename" symbol="xfce_menu_item_get_filename">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="item" type="XfceMenuItem*"/>
				</parameters>
			</method>
			<method name="get_generic_name" symbol="xfce_menu_item_get_generic_name">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="item" type="XfceMenuItem*"/>
				</parameters>
			</method>
			<method name="get_icon_name" symbol="xfce_menu_item_get_icon_name">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="item" type="XfceMenuItem*"/>
				</parameters>
			</method>
			<method name="get_name" symbol="xfce_menu_item_get_name">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="item" type="XfceMenuItem*"/>
				</parameters>
			</method>
			<method name="get_no_display" symbol="xfce_menu_item_get_no_display">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="item" type="XfceMenuItem*"/>
				</parameters>
			</method>
			<method name="get_path" symbol="xfce_menu_item_get_path">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="item" type="XfceMenuItem*"/>
				</parameters>
			</method>
			<method name="get_try_exec" symbol="xfce_menu_item_get_try_exec">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="item" type="XfceMenuItem*"/>
				</parameters>
			</method>
			<method name="has_category" symbol="xfce_menu_item_has_category">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="item" type="XfceMenuItem*"/>
					<parameter name="category" type="gchar*"/>
				</parameters>
			</method>
			<method name="increment_allocated" symbol="xfce_menu_item_increment_allocated">
				<return-type type="void"/>
				<parameters>
					<parameter name="item" type="XfceMenuItem*"/>
				</parameters>
			</method>
			<constructor name="new" symbol="xfce_menu_item_new">
				<return-type type="XfceMenuItem*"/>
				<parameters>
					<parameter name="filename" type="gchar*"/>
				</parameters>
			</constructor>
			<method name="only_show_in_environment" symbol="xfce_menu_item_only_show_in_environment">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="item" type="XfceMenuItem*"/>
				</parameters>
			</method>
			<method name="ref" symbol="xfce_menu_item_ref">
				<return-type type="void"/>
				<parameters>
					<parameter name="item" type="XfceMenuItem*"/>
				</parameters>
			</method>
			<method name="requires_terminal" symbol="xfce_menu_item_requires_terminal">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="item" type="XfceMenuItem*"/>
				</parameters>
			</method>
			<method name="set_categories" symbol="xfce_menu_item_set_categories">
				<return-type type="void"/>
				<parameters>
					<parameter name="item" type="XfceMenuItem*"/>
					<parameter name="categories" type="GList*"/>
				</parameters>
			</method>
			<method name="set_command" symbol="xfce_menu_item_set_command">
				<return-type type="void"/>
				<parameters>
					<parameter name="item" type="XfceMenuItem*"/>
					<parameter name="command" type="gchar*"/>
				</parameters>
			</method>
			<method name="set_comment" symbol="xfce_menu_item_set_comment">
				<return-type type="void"/>
				<parameters>
					<parameter name="item" type="XfceMenuItem*"/>
					<parameter name="comment" type="gchar*"/>
				</parameters>
			</method>
			<method name="set_desktop_id" symbol="xfce_menu_item_set_desktop_id">
				<return-type type="void"/>
				<parameters>
					<parameter name="item" type="XfceMenuItem*"/>
					<parameter name="desktop_id" type="gchar*"/>
				</parameters>
			</method>
			<method name="set_filename" symbol="xfce_menu_item_set_filename">
				<return-type type="void"/>
				<parameters>
					<parameter name="item" type="XfceMenuItem*"/>
					<parameter name="filename" type="gchar*"/>
				</parameters>
			</method>
			<method name="set_generic_name" symbol="xfce_menu_item_set_generic_name">
				<return-type type="void"/>
				<parameters>
					<parameter name="item" type="XfceMenuItem*"/>
					<parameter name="generic_name" type="gchar*"/>
				</parameters>
			</method>
			<method name="set_icon_name" symbol="xfce_menu_item_set_icon_name">
				<return-type type="void"/>
				<parameters>
					<parameter name="item" type="XfceMenuItem*"/>
					<parameter name="icon_name" type="gchar*"/>
				</parameters>
			</method>
			<method name="set_name" symbol="xfce_menu_item_set_name">
				<return-type type="void"/>
				<parameters>
					<parameter name="item" type="XfceMenuItem*"/>
					<parameter name="name" type="gchar*"/>
				</parameters>
			</method>
			<method name="set_no_display" symbol="xfce_menu_item_set_no_display">
				<return-type type="void"/>
				<parameters>
					<parameter name="item" type="XfceMenuItem*"/>
					<parameter name="no_display" type="gboolean"/>
				</parameters>
			</method>
			<method name="set_path" symbol="xfce_menu_item_set_path">
				<return-type type="void"/>
				<parameters>
					<parameter name="item" type="XfceMenuItem*"/>
					<parameter name="path" type="gchar*"/>
				</parameters>
			</method>
			<method name="set_requires_terminal" symbol="xfce_menu_item_set_requires_terminal">
				<return-type type="void"/>
				<parameters>
					<parameter name="item" type="XfceMenuItem*"/>
					<parameter name="requires_terminal" type="gboolean"/>
				</parameters>
			</method>
			<method name="set_supports_startup_notification" symbol="xfce_menu_item_set_supports_startup_notification">
				<return-type type="void"/>
				<parameters>
					<parameter name="item" type="XfceMenuItem*"/>
					<parameter name="supports_startup_notification" type="gboolean"/>
				</parameters>
			</method>
			<method name="set_try_exec" symbol="xfce_menu_item_set_try_exec">
				<return-type type="void"/>
				<parameters>
					<parameter name="item" type="XfceMenuItem*"/>
					<parameter name="try_exec" type="gchar*"/>
				</parameters>
			</method>
			<method name="show_in_environment" symbol="xfce_menu_item_show_in_environment">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="item" type="XfceMenuItem*"/>
				</parameters>
			</method>
			<method name="supports_startup_notification" symbol="xfce_menu_item_supports_startup_notification">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="item" type="XfceMenuItem*"/>
				</parameters>
			</method>
			<method name="unref" symbol="xfce_menu_item_unref">
				<return-type type="void"/>
				<parameters>
					<parameter name="item" type="XfceMenuItem*"/>
				</parameters>
			</method>
			<property name="command" type="char*" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="comment" type="char*" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="desktop-id" type="char*" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="filename" type="char*" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="generic-name" type="char*" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="icon-name" type="char*" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="name" type="char*" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="no-display" type="gboolean" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="path" type="char*" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="requires-terminal" type="gboolean" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="supports-startup-notification" type="gboolean" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="try-exec" type="char*" readable="1" writable="1" construct="0" construct-only="0"/>
		</object>
		<object name="XfceMenuItemCache" parent="GObject" type-name="XfceMenuItemCache" get-type="xfce_menu_item_cache_get_type">
			<method name="foreach" symbol="xfce_menu_item_cache_foreach">
				<return-type type="void"/>
				<parameters>
					<parameter name="cache" type="XfceMenuItemCache*"/>
					<parameter name="func" type="GHFunc"/>
					<parameter name="user_data" type="gpointer"/>
				</parameters>
			</method>
			<method name="get_default" symbol="xfce_menu_item_cache_get_default">
				<return-type type="XfceMenuItemCache*"/>
			</method>
			<method name="invalidate" symbol="xfce_menu_item_cache_invalidate">
				<return-type type="void"/>
				<parameters>
					<parameter name="cache" type="XfceMenuItemCache*"/>
				</parameters>
			</method>
		</object>
		<object name="XfceMenuItemPool" parent="GObject" type-name="XfceMenuItemPool" get-type="xfce_menu_item_pool_get_type">
			<method name="apply_exclude_rule" symbol="xfce_menu_item_pool_apply_exclude_rule">
				<return-type type="void"/>
				<parameters>
					<parameter name="pool" type="XfceMenuItemPool*"/>
					<parameter name="rule" type="XfceMenuStandardRules*"/>
				</parameters>
			</method>
			<method name="foreach" symbol="xfce_menu_item_pool_foreach">
				<return-type type="void"/>
				<parameters>
					<parameter name="pool" type="XfceMenuItemPool*"/>
					<parameter name="func" type="GHFunc"/>
					<parameter name="user_data" type="gpointer"/>
				</parameters>
			</method>
			<method name="get_empty" symbol="xfce_menu_item_pool_get_empty">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="pool" type="XfceMenuItemPool*"/>
				</parameters>
			</method>
			<method name="insert" symbol="xfce_menu_item_pool_insert">
				<return-type type="void"/>
				<parameters>
					<parameter name="pool" type="XfceMenuItemPool*"/>
					<parameter name="item" type="XfceMenuItem*"/>
				</parameters>
			</method>
			<method name="lookup" symbol="xfce_menu_item_pool_lookup">
				<return-type type="XfceMenuItem*"/>
				<parameters>
					<parameter name="pool" type="XfceMenuItemPool*"/>
					<parameter name="desktop_id" type="gchar*"/>
				</parameters>
			</method>
			<constructor name="new" symbol="xfce_menu_item_pool_new">
				<return-type type="XfceMenuItemPool*"/>
			</constructor>
		</object>
		<object name="XfceMenuLayout" parent="GObject" type-name="XfceMenuLayout" get-type="xfce_menu_layout_get_type">
			<method name="add_filename" symbol="xfce_menu_layout_add_filename">
				<return-type type="void"/>
				<parameters>
					<parameter name="layout" type="XfceMenuLayout*"/>
					<parameter name="filename" type="gchar*"/>
				</parameters>
			</method>
			<method name="add_menuname" symbol="xfce_menu_layout_add_menuname">
				<return-type type="void"/>
				<parameters>
					<parameter name="layout" type="XfceMenuLayout*"/>
					<parameter name="menuname" type="gchar*"/>
				</parameters>
			</method>
			<method name="add_merge" symbol="xfce_menu_layout_add_merge">
				<return-type type="void"/>
				<parameters>
					<parameter name="layout" type="XfceMenuLayout*"/>
					<parameter name="type" type="XfceMenuLayoutMergeType"/>
				</parameters>
			</method>
			<method name="add_separator" symbol="xfce_menu_layout_add_separator">
				<return-type type="void"/>
				<parameters>
					<parameter name="layout" type="XfceMenuLayout*"/>
				</parameters>
			</method>
			<method name="get_filename_used" symbol="xfce_menu_layout_get_filename_used">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="layout" type="XfceMenuLayout*"/>
					<parameter name="filename" type="gchar*"/>
				</parameters>
			</method>
			<method name="get_menuname_used" symbol="xfce_menu_layout_get_menuname_used">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="layout" type="XfceMenuLayout*"/>
					<parameter name="menuname" type="gchar*"/>
				</parameters>
			</method>
			<method name="get_nodes" symbol="xfce_menu_layout_get_nodes">
				<return-type type="GSList*"/>
				<parameters>
					<parameter name="layout" type="XfceMenuLayout*"/>
				</parameters>
			</method>
			<constructor name="new" symbol="xfce_menu_layout_new">
				<return-type type="XfceMenuLayout*"/>
			</constructor>
		</object>
		<object name="XfceMenuMove" parent="GObject" type-name="XfceMenuMove" get-type="xfce_menu_move_get_type">
			<method name="get_new" symbol="xfce_menu_move_get_new">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="move" type="XfceMenuMove*"/>
				</parameters>
			</method>
			<method name="get_old" symbol="xfce_menu_move_get_old">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="move" type="XfceMenuMove*"/>
				</parameters>
			</method>
			<constructor name="new" symbol="xfce_menu_move_new">
				<return-type type="XfceMenuMove*"/>
			</constructor>
			<method name="set_new" symbol="xfce_menu_move_set_new">
				<return-type type="void"/>
				<parameters>
					<parameter name="move" type="XfceMenuMove*"/>
					<parameter name="new" type="gchar*"/>
				</parameters>
			</method>
			<method name="set_old" symbol="xfce_menu_move_set_old">
				<return-type type="void"/>
				<parameters>
					<parameter name="move" type="XfceMenuMove*"/>
					<parameter name="old" type="gchar*"/>
				</parameters>
			</method>
			<property name="new" type="char*" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="old" type="char*" readable="1" writable="1" construct="0" construct-only="0"/>
		</object>
		<object name="XfceMenuNotRules" parent="XfceMenuStandardRules" type-name="XfceMenuNotRules" get-type="xfce_menu_not_rules_get_type">
			<implements>
				<interface name="XfceMenuRules"/>
			</implements>
			<constructor name="new" symbol="xfce_menu_not_rules_new">
				<return-type type="XfceMenuNotRules*"/>
			</constructor>
		</object>
		<object name="XfceMenuOrRules" parent="XfceMenuStandardRules" type-name="XfceMenuOrRules" get-type="xfce_menu_or_rules_get_type">
			<implements>
				<interface name="XfceMenuRules"/>
			</implements>
			<constructor name="new" symbol="xfce_menu_or_rules_new">
				<return-type type="XfceMenuOrRules*"/>
			</constructor>
		</object>
		<object name="XfceMenuSeparator" parent="GObject" type-name="XfceMenuSeparator" get-type="xfce_menu_separator_get_type">
			<implements>
				<interface name="XfceMenuElement"/>
			</implements>
			<method name="get_default" symbol="xfce_menu_separator_get_default">
				<return-type type="XfceMenuSeparator*"/>
			</method>
		</object>
		<object name="XfceMenuStandardRules" parent="GObject" type-name="XfceMenuStandardRules" get-type="xfce_menu_standard_rules_get_type">
			<implements>
				<interface name="XfceMenuRules"/>
			</implements>
			<method name="get_include" symbol="xfce_menu_standard_rules_get_include">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="rules" type="XfceMenuStandardRules*"/>
				</parameters>
			</method>
			<method name="set_include" symbol="xfce_menu_standard_rules_set_include">
				<return-type type="void"/>
				<parameters>
					<parameter name="rules" type="XfceMenuStandardRules*"/>
					<parameter name="include" type="gboolean"/>
				</parameters>
			</method>
			<property name="include" type="gboolean" readable="1" writable="1" construct="0" construct-only="0"/>
			<field name="rules" type="GList*"/>
			<field name="filenames" type="GList*"/>
			<field name="categories" type="GList*"/>
			<field name="all" type="guint"/>
			<field name="include" type="gboolean"/>
		</object>
		<interface name="XfceMenuElement" type-name="XfceMenuElement" get-type="xfce_menu_element_get_type">
			<requires>
				<interface name="GObject"/>
			</requires>
			<method name="get_icon_name" symbol="xfce_menu_element_get_icon_name">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="element" type="XfceMenuElement*"/>
				</parameters>
			</method>
			<method name="get_name" symbol="xfce_menu_element_get_name">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="element" type="XfceMenuElement*"/>
				</parameters>
			</method>
			<vfunc name="get_icon_name">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="element" type="XfceMenuElement*"/>
				</parameters>
			</vfunc>
			<vfunc name="get_name">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="element" type="XfceMenuElement*"/>
				</parameters>
			</vfunc>
		</interface>
		<interface name="XfceMenuRules" type-name="XfceMenuRules" get-type="xfce_menu_rules_get_type">
			<requires>
				<interface name="GObject"/>
			</requires>
			<method name="add_all" symbol="xfce_menu_rules_add_all">
				<return-type type="void"/>
				<parameters>
					<parameter name="rules" type="XfceMenuRules*"/>
				</parameters>
			</method>
			<method name="add_category" symbol="xfce_menu_rules_add_category">
				<return-type type="void"/>
				<parameters>
					<parameter name="rules" type="XfceMenuRules*"/>
					<parameter name="category" type="gchar*"/>
				</parameters>
			</method>
			<method name="add_filename" symbol="xfce_menu_rules_add_filename">
				<return-type type="void"/>
				<parameters>
					<parameter name="rules" type="XfceMenuRules*"/>
					<parameter name="filename" type="gchar*"/>
				</parameters>
			</method>
			<method name="add_rules" symbol="xfce_menu_rules_add_rules">
				<return-type type="void"/>
				<parameters>
					<parameter name="rules" type="XfceMenuRules*"/>
					<parameter name="additional_rules" type="XfceMenuRules*"/>
				</parameters>
			</method>
			<method name="match" symbol="xfce_menu_rules_match">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="rules" type="XfceMenuRules*"/>
					<parameter name="item" type="XfceMenuItem*"/>
				</parameters>
			</method>
			<vfunc name="add_all">
				<return-type type="void"/>
				<parameters>
					<parameter name="rules" type="XfceMenuRules*"/>
				</parameters>
			</vfunc>
			<vfunc name="add_category">
				<return-type type="void"/>
				<parameters>
					<parameter name="rules" type="XfceMenuRules*"/>
					<parameter name="category" type="gchar*"/>
				</parameters>
			</vfunc>
			<vfunc name="add_filename">
				<return-type type="void"/>
				<parameters>
					<parameter name="rules" type="XfceMenuRules*"/>
					<parameter name="filename" type="gchar*"/>
				</parameters>
			</vfunc>
			<vfunc name="add_rules">
				<return-type type="void"/>
				<parameters>
					<parameter name="rules" type="XfceMenuRules*"/>
					<parameter name="additional_rules" type="XfceMenuRules*"/>
				</parameters>
			</vfunc>
			<vfunc name="match">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="rules" type="XfceMenuRules*"/>
					<parameter name="item" type="XfceMenuItem*"/>
				</parameters>
			</vfunc>
		</interface>
		<constant name="LIBXFCE4MENU_MAJOR_VERSION" type="int" value="4"/>
		<constant name="LIBXFCE4MENU_MICRO_VERSION" type="int" value="0"/>
		<constant name="LIBXFCE4MENU_MINOR_VERSION" type="int" value="6"/>
	</namespace>
</api>
