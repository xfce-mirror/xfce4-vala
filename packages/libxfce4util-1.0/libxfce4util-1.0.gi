<?xml version="1.0"?>
<api version="1.0">
	<namespace name="Xfce">
		<function name="expand_variables" symbol="xfce_expand_variables">
			<return-type type="gchar*"/>
			<parameters>
				<parameter name="command" type="gchar*"/>
				<parameter name="envp" type="gchar**"/>
			</parameters>
		</function>
		<function name="get_homedir" symbol="xfce_get_homedir">
			<return-type type="gchar*"/>
		</function>
		<function name="get_homefile_r" symbol="xfce_get_homefile_r">
			<return-type type="gchar*"/>
			<parameters>
				<parameter name="buffer" type="gchar*"/>
				<parameter name="length" type="size_t"/>
				<parameter name="format" type="gchar*"/>
			</parameters>
		</function>
		<function name="get_license_text" symbol="xfce_get_license_text">
			<return-type type="gchar*"/>
			<parameters>
				<parameter name="license_type" type="XfceLicenseTextType"/>
			</parameters>
		</function>
		<function name="get_userdir" symbol="xfce_get_userdir">
			<return-type type="gchar*"/>
		</function>
		<function name="get_userfile_r" symbol="xfce_get_userfile_r">
			<return-type type="gchar*"/>
			<parameters>
				<parameter name="buffer" type="gchar*"/>
				<parameter name="length" type="size_t"/>
				<parameter name="format" type="gchar*"/>
			</parameters>
		</function>
		<function name="gethostname" symbol="xfce_gethostname">
			<return-type type="gchar*"/>
		</function>
		<function name="putenv" symbol="xfce_putenv">
			<return-type type="gint"/>
			<parameters>
				<parameter name="string" type="gchar*"/>
			</parameters>
		</function>
		<function name="setenv" symbol="xfce_setenv">
			<return-type type="gint"/>
			<parameters>
				<parameter name="name" type="gchar*"/>
				<parameter name="value" type="gchar*"/>
				<parameter name="overwrite" type="gboolean"/>
			</parameters>
		</function>
		<function name="strjoin" symbol="xfce_strjoin">
			<return-type type="gchar*"/>
			<parameters>
				<parameter name="separator" type="gchar*"/>
				<parameter name="strings" type="gchar**"/>
				<parameter name="count" type="gint"/>
			</parameters>
		</function>
		<function name="unsetenv" symbol="xfce_unsetenv">
			<return-type type="void"/>
			<parameters>
				<parameter name="name" type="gchar*"/>
			</parameters>
		</function>
		<function name="utf8_remove_controls" symbol="xfce_utf8_remove_controls">
			<return-type type="gchar*"/>
			<parameters>
				<parameter name="str" type="gchar*"/>
				<parameter name="max_len" type="gssize"/>
				<parameter name="end" type="gchar*"/>
			</parameters>
		</function>
		<function name="utf8_strndup" symbol="xfce_utf8_strndup">
			<return-type type="gchar*"/>
			<parameters>
				<parameter name="src" type="gchar*"/>
				<parameter name="max_len" type="gssize"/>
			</parameters>
		</function>
		<function name="version_string" symbol="xfce_version_string">
			<return-type type="gchar*"/>
		</function>
		<struct name="Stack">
			<field name="elements" type="gpointer"/>
			<field name="nelements" type="gint"/>
			<field name="top" type="gint"/>
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
		<enum name="XfceLicenseTextType">
			<member name="XFCE_LICENSE_TEXT_BSD" value="0"/>
			<member name="XFCE_LICENSE_TEXT_GPL" value="1"/>
			<member name="XFCE_LICENSE_TEXT_LGPL" value="2"/>
		</enum>
		<constant name="LIBXFCE4UTIL_MAJOR_VERSION" type="int" value="4"/>
		<constant name="LIBXFCE4UTIL_MICRO_VERSION" type="int" value="0"/>
		<constant name="LIBXFCE4UTIL_MINOR_VERSION" type="int" value="10"/>
	</namespace>
</api>
