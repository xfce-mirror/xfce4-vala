<?xml version="1.0"?>
<api version="1.0">
	<namespace name="Garcon">
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
		<constant name="GARCON_ENVIRONMENT_XFCE" type="char*" value="XFCE"/>
		<constant name="GARCON_MAJOR_VERSION" type="int" value="0"/>
		<constant name="GARCON_MICRO_VERSION" type="int" value="0"/>
		<constant name="GARCON_MINOR_VERSION" type="int" value="5"/>
	</namespace>
</api>
