<?xml version="1.0"?>
<api version="1.0">
	<namespace name="Xfce">
		<struct name="XfceKiosk">
			<method name="free" symbol="xfce_kiosk_free">
				<return-type type="void"/>
				<parameters>
					<parameter name="kiosk" type="XfceKiosk*"/>
				</parameters>
			</method>
			<method name="new" symbol="xfce_kiosk_new">
				<return-type type="XfceKiosk*"/>
				<parameters>
					<parameter name="module" type="gchar*"/>
				</parameters>
			</method>
			<method name="query" symbol="xfce_kiosk_query">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="kiosk" type="XfceKiosk*"/>
					<parameter name="capability" type="gchar*"/>
				</parameters>
			</method>
		</struct>
		<struct name="XfceRc">
			<method name="close" symbol="xfce_rc_close">
				<return-type type="void"/>
				<parameters>
					<parameter name="rc" type="XfceRc*"/>
				</parameters>
			</method>
			<method name="config_open" symbol="xfce_rc_config_open">
				<return-type type="XfceRc*"/>
				<parameters>
					<parameter name="type" type="XfceResourceType"/>
					<parameter name="resource" type="gchar*"/>
					<parameter name="readonly" type="gboolean"/>
				</parameters>
			</method>
			<method name="delete_entry" symbol="xfce_rc_delete_entry">
				<return-type type="void"/>
				<parameters>
					<parameter name="rc" type="XfceRc*"/>
					<parameter name="key" type="gchar*"/>
					<parameter name="global" type="gboolean"/>
				</parameters>
			</method>
			<method name="delete_group" symbol="xfce_rc_delete_group">
				<return-type type="void"/>
				<parameters>
					<parameter name="rc" type="XfceRc*"/>
					<parameter name="group" type="gchar*"/>
					<parameter name="global" type="gboolean"/>
				</parameters>
			</method>
			<method name="flush" symbol="xfce_rc_flush">
				<return-type type="void"/>
				<parameters>
					<parameter name="rc" type="XfceRc*"/>
				</parameters>
			</method>
			<method name="get_entries" symbol="xfce_rc_get_entries">
				<return-type type="gchar**"/>
				<parameters>
					<parameter name="rc" type="XfceRc*"/>
					<parameter name="group" type="gchar*"/>
				</parameters>
			</method>
			<method name="get_group" symbol="xfce_rc_get_group">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="rc" type="XfceRc*"/>
				</parameters>
			</method>
			<method name="get_groups" symbol="xfce_rc_get_groups">
				<return-type type="gchar**"/>
				<parameters>
					<parameter name="rc" type="XfceRc*"/>
				</parameters>
			</method>
			<method name="get_locale" symbol="xfce_rc_get_locale">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="rc" type="XfceRc*"/>
				</parameters>
			</method>
			<method name="has_entry" symbol="xfce_rc_has_entry">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="rc" type="XfceRc*"/>
					<parameter name="key" type="gchar*"/>
				</parameters>
			</method>
			<method name="has_group" symbol="xfce_rc_has_group">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="rc" type="XfceRc*"/>
					<parameter name="group" type="gchar*"/>
				</parameters>
			</method>
			<method name="is_dirty" symbol="xfce_rc_is_dirty">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="rc" type="XfceRc*"/>
				</parameters>
			</method>
			<method name="is_readonly" symbol="xfce_rc_is_readonly">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="rc" type="XfceRc*"/>
				</parameters>
			</method>
			<method name="read_bool_entry" symbol="xfce_rc_read_bool_entry">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="rc" type="XfceRc*"/>
					<parameter name="key" type="gchar*"/>
					<parameter name="fallback" type="gboolean"/>
				</parameters>
			</method>
			<method name="read_entry" symbol="xfce_rc_read_entry">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="rc" type="XfceRc*"/>
					<parameter name="key" type="gchar*"/>
					<parameter name="fallback" type="gchar*"/>
				</parameters>
			</method>
			<method name="read_entry_untranslated" symbol="xfce_rc_read_entry_untranslated">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="rc" type="XfceRc*"/>
					<parameter name="key" type="gchar*"/>
					<parameter name="fallback" type="gchar*"/>
				</parameters>
			</method>
			<method name="read_int_entry" symbol="xfce_rc_read_int_entry">
				<return-type type="gint"/>
				<parameters>
					<parameter name="rc" type="XfceRc*"/>
					<parameter name="key" type="gchar*"/>
					<parameter name="fallback" type="gint"/>
				</parameters>
			</method>
			<method name="read_list_entry" symbol="xfce_rc_read_list_entry">
				<return-type type="gchar**"/>
				<parameters>
					<parameter name="rc" type="XfceRc*"/>
					<parameter name="key" type="gchar*"/>
					<parameter name="delimiter" type="gchar*"/>
				</parameters>
			</method>
			<method name="rollback" symbol="xfce_rc_rollback">
				<return-type type="void"/>
				<parameters>
					<parameter name="rc" type="XfceRc*"/>
				</parameters>
			</method>
			<method name="set_group" symbol="xfce_rc_set_group">
				<return-type type="void"/>
				<parameters>
					<parameter name="rc" type="XfceRc*"/>
					<parameter name="group" type="gchar*"/>
				</parameters>
			</method>
			<method name="simple_open" symbol="xfce_rc_simple_open">
				<return-type type="XfceRc*"/>
				<parameters>
					<parameter name="filename" type="gchar*"/>
					<parameter name="readonly" type="gboolean"/>
				</parameters>
			</method>
			<method name="write_bool_entry" symbol="xfce_rc_write_bool_entry">
				<return-type type="void"/>
				<parameters>
					<parameter name="rc" type="XfceRc*"/>
					<parameter name="key" type="gchar*"/>
					<parameter name="value" type="gboolean"/>
				</parameters>
			</method>
			<method name="write_entry" symbol="xfce_rc_write_entry">
				<return-type type="void"/>
				<parameters>
					<parameter name="rc" type="XfceRc*"/>
					<parameter name="key" type="gchar*"/>
					<parameter name="value" type="gchar*"/>
				</parameters>
			</method>
			<method name="write_int_entry" symbol="xfce_rc_write_int_entry">
				<return-type type="void"/>
				<parameters>
					<parameter name="rc" type="XfceRc*"/>
					<parameter name="key" type="gchar*"/>
					<parameter name="value" type="gint"/>
				</parameters>
			</method>
			<method name="write_list_entry" symbol="xfce_rc_write_list_entry">
				<return-type type="void"/>
				<parameters>
					<parameter name="rc" type="XfceRc*"/>
					<parameter name="key" type="gchar*"/>
					<parameter name="value" type="gchar**"/>
					<parameter name="separator" type="gchar*"/>
				</parameters>
			</method>
		</struct>
		<enum name="XfceLicenseTextType" type-name="XfceLicenseTextType" get-type="xfce_license_text_type_get_type">
			<member name="XFCE_LICENSE_TEXT_BSD" value="0"/>
			<member name="XFCE_LICENSE_TEXT_GPL" value="1"/>
			<member name="XFCE_LICENSE_TEXT_LGPL" value="2"/>
		</enum>
		<enum name="XfceResourceType" type-name="XfceResourceType" get-type="xfce_resource_type_get_type">
			<member name="XFCE_RESOURCE_DATA" value="0"/>
			<member name="XFCE_RESOURCE_CONFIG" value="1"/>
			<member name="XFCE_RESOURCE_CACHE" value="2"/>
			<member name="XFCE_RESOURCE_ICONS" value="3"/>
			<member name="XFCE_RESOURCE_THEMES" value="4"/>
		</enum>
		<constant name="LIBXFCE4UTIL_MAJOR_VERSION" type="int" value="4"/>
		<constant name="LIBXFCE4UTIL_MICRO_VERSION" type="int" value="0"/>
		<constant name="LIBXFCE4UTIL_MINOR_VERSION" type="int" value="6"/>
	</namespace>
</api>
