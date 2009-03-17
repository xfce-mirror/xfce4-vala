<?xml version="1.0"?>
<api version="1.0">
	<namespace name="Xfconf">
		<function name="array_free" symbol="xfconf_array_free">
			<return-type type="void"/>
			<parameters>
				<parameter name="arr" type="GPtrArray*"/>
			</parameters>
		</function>
		<function name="g_property_bind" symbol="xfconf_g_property_bind">
			<return-type type="gulong"/>
			<parameters>
				<parameter name="channel" type="XfconfChannel*"/>
				<parameter name="xfconf_property" type="gchar*"/>
				<parameter name="xfconf_property_type" type="GType"/>
				<parameter name="object" type="gpointer"/>
				<parameter name="object_property" type="gchar*"/>
			</parameters>
		</function>
		<function name="g_property_bind_gdkcolor" symbol="xfconf_g_property_bind_gdkcolor">
			<return-type type="gulong"/>
			<parameters>
				<parameter name="channel" type="XfconfChannel*"/>
				<parameter name="xfconf_property" type="gchar*"/>
				<parameter name="object" type="gpointer"/>
				<parameter name="object_property" type="gchar*"/>
			</parameters>
		</function>
		<function name="g_property_unbind" symbol="xfconf_g_property_unbind">
			<return-type type="void"/>
			<parameters>
				<parameter name="id" type="gulong"/>
			</parameters>
		</function>
		<function name="g_property_unbind_all" symbol="xfconf_g_property_unbind_all">
			<return-type type="void"/>
			<parameters>
				<parameter name="channel_or_object" type="gpointer"/>
			</parameters>
		</function>
		<function name="g_property_unbind_by_property" symbol="xfconf_g_property_unbind_by_property">
			<return-type type="void"/>
			<parameters>
				<parameter name="channel" type="XfconfChannel*"/>
				<parameter name="xfconf_property" type="gchar*"/>
				<parameter name="object" type="gpointer"/>
				<parameter name="object_property" type="gchar*"/>
			</parameters>
		</function>
		<function name="g_value_get_int16" symbol="xfconf_g_value_get_int16">
			<return-type type="gint16"/>
			<parameters>
				<parameter name="value" type="GValue*"/>
			</parameters>
		</function>
		<function name="g_value_get_uint16" symbol="xfconf_g_value_get_uint16">
			<return-type type="guint16"/>
			<parameters>
				<parameter name="value" type="GValue*"/>
			</parameters>
		</function>
		<function name="g_value_set_int16" symbol="xfconf_g_value_set_int16">
			<return-type type="void"/>
			<parameters>
				<parameter name="value" type="GValue*"/>
				<parameter name="v_int16" type="gint16"/>
			</parameters>
		</function>
		<function name="g_value_set_uint16" symbol="xfconf_g_value_set_uint16">
			<return-type type="void"/>
			<parameters>
				<parameter name="value" type="GValue*"/>
				<parameter name="v_uint16" type="guint16"/>
			</parameters>
		</function>
		<function name="get_error_quark" symbol="xfconf_get_error_quark">
			<return-type type="GQuark"/>
		</function>
		<function name="init" symbol="xfconf_init">
			<return-type type="gboolean"/>
			<parameters>
				<parameter name="error" type="GError**"/>
			</parameters>
		</function>
		<function name="int16_get_type" symbol="xfconf_int16_get_type">
			<return-type type="GType"/>
		</function>
		<function name="list_channels" symbol="xfconf_list_channels">
			<return-type type="gchar**"/>
		</function>
		<function name="named_struct_register" symbol="xfconf_named_struct_register">
			<return-type type="void"/>
			<parameters>
				<parameter name="struct_name" type="gchar*"/>
				<parameter name="n_members" type="guint"/>
				<parameter name="member_types" type="GType*"/>
			</parameters>
		</function>
		<function name="shutdown" symbol="xfconf_shutdown">
			<return-type type="void"/>
		</function>
		<function name="uint16_get_type" symbol="xfconf_uint16_get_type">
			<return-type type="GType"/>
		</function>
		<enum name="XfconfError" type-name="XfconfError" get-type="xfconf_error_get_type">
			<member name="XFCONF_ERROR_UNKNOWN" value="0"/>
			<member name="XFCONF_ERROR_CHANNEL_NOT_FOUND" value="1"/>
			<member name="XFCONF_ERROR_PROPERTY_NOT_FOUND" value="2"/>
			<member name="XFCONF_ERROR_READ_FAILURE" value="3"/>
			<member name="XFCONF_ERROR_WRITE_FAILURE" value="4"/>
			<member name="XFCONF_ERROR_PERMISSION_DENIED" value="5"/>
			<member name="XFCONF_ERROR_INTERNAL_ERROR" value="6"/>
			<member name="XFCONF_ERROR_NO_BACKEND" value="7"/>
			<member name="XFCONF_ERROR_INVALID_PROPERTY" value="8"/>
			<member name="XFCONF_ERROR_INVALID_CHANNEL" value="9"/>
		</enum>
		<object name="XfconfChannel" parent="GObject" type-name="XfconfChannel" get-type="xfconf_channel_get_type">
			<method name="get" symbol="xfconf_channel_get">
				<return-type type="XfconfChannel*"/>
				<parameters>
					<parameter name="channel_name" type="gchar*"/>
				</parameters>
			</method>
			<method name="get_array" symbol="xfconf_channel_get_array">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="channel" type="XfconfChannel*"/>
					<parameter name="property" type="gchar*"/>
					<parameter name="first_value_type" type="GType"/>
				</parameters>
			</method>
			<method name="get_array_valist" symbol="xfconf_channel_get_array_valist">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="channel" type="XfconfChannel*"/>
					<parameter name="property" type="gchar*"/>
					<parameter name="first_value_type" type="GType"/>
					<parameter name="var_args" type="va_list"/>
				</parameters>
			</method>
			<method name="get_arrayv" symbol="xfconf_channel_get_arrayv">
				<return-type type="GPtrArray*"/>
				<parameters>
					<parameter name="channel" type="XfconfChannel*"/>
					<parameter name="property" type="gchar*"/>
				</parameters>
			</method>
			<method name="get_bool" symbol="xfconf_channel_get_bool">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="channel" type="XfconfChannel*"/>
					<parameter name="property" type="gchar*"/>
					<parameter name="default_value" type="gboolean"/>
				</parameters>
			</method>
			<method name="get_double" symbol="xfconf_channel_get_double">
				<return-type type="gdouble"/>
				<parameters>
					<parameter name="channel" type="XfconfChannel*"/>
					<parameter name="property" type="gchar*"/>
					<parameter name="default_value" type="gdouble"/>
				</parameters>
			</method>
			<method name="get_int" symbol="xfconf_channel_get_int">
				<return-type type="gint32"/>
				<parameters>
					<parameter name="channel" type="XfconfChannel*"/>
					<parameter name="property" type="gchar*"/>
					<parameter name="default_value" type="gint32"/>
				</parameters>
			</method>
			<method name="get_named_struct" symbol="xfconf_channel_get_named_struct">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="channel" type="XfconfChannel*"/>
					<parameter name="property" type="gchar*"/>
					<parameter name="struct_name" type="gchar*"/>
					<parameter name="value_struct" type="gpointer"/>
				</parameters>
			</method>
			<method name="get_properties" symbol="xfconf_channel_get_properties">
				<return-type type="GHashTable*"/>
				<parameters>
					<parameter name="channel" type="XfconfChannel*"/>
					<parameter name="property_base" type="gchar*"/>
				</parameters>
			</method>
			<method name="get_property" symbol="xfconf_channel_get_property">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="channel" type="XfconfChannel*"/>
					<parameter name="property" type="gchar*"/>
					<parameter name="value" type="GValue*"/>
				</parameters>
			</method>
			<method name="get_string" symbol="xfconf_channel_get_string">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="channel" type="XfconfChannel*"/>
					<parameter name="property" type="gchar*"/>
					<parameter name="default_value" type="gchar*"/>
				</parameters>
			</method>
			<method name="get_string_list" symbol="xfconf_channel_get_string_list">
				<return-type type="gchar**"/>
				<parameters>
					<parameter name="channel" type="XfconfChannel*"/>
					<parameter name="property" type="gchar*"/>
				</parameters>
			</method>
			<method name="get_struct" symbol="xfconf_channel_get_struct">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="channel" type="XfconfChannel*"/>
					<parameter name="property" type="gchar*"/>
					<parameter name="value_struct" type="gpointer"/>
					<parameter name="first_member_type" type="GType"/>
				</parameters>
			</method>
			<method name="get_struct_valist" symbol="xfconf_channel_get_struct_valist">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="channel" type="XfconfChannel*"/>
					<parameter name="property" type="gchar*"/>
					<parameter name="value_struct" type="gpointer"/>
					<parameter name="first_member_type" type="GType"/>
					<parameter name="var_args" type="va_list"/>
				</parameters>
			</method>
			<method name="get_structv" symbol="xfconf_channel_get_structv">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="channel" type="XfconfChannel*"/>
					<parameter name="property" type="gchar*"/>
					<parameter name="value_struct" type="gpointer"/>
					<parameter name="n_members" type="guint"/>
					<parameter name="member_types" type="GType*"/>
				</parameters>
			</method>
			<method name="get_uint" symbol="xfconf_channel_get_uint">
				<return-type type="guint32"/>
				<parameters>
					<parameter name="channel" type="XfconfChannel*"/>
					<parameter name="property" type="gchar*"/>
					<parameter name="default_value" type="guint32"/>
				</parameters>
			</method>
			<method name="get_uint64" symbol="xfconf_channel_get_uint64">
				<return-type type="guint64"/>
				<parameters>
					<parameter name="channel" type="XfconfChannel*"/>
					<parameter name="property" type="gchar*"/>
					<parameter name="default_value" type="guint64"/>
				</parameters>
			</method>
			<method name="has_property" symbol="xfconf_channel_has_property">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="channel" type="XfconfChannel*"/>
					<parameter name="property" type="gchar*"/>
				</parameters>
			</method>
			<method name="is_property_locked" symbol="xfconf_channel_is_property_locked">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="channel" type="XfconfChannel*"/>
					<parameter name="property" type="gchar*"/>
				</parameters>
			</method>
			<constructor name="new" symbol="xfconf_channel_new">
				<return-type type="XfconfChannel*"/>
				<parameters>
					<parameter name="channel_name" type="gchar*"/>
				</parameters>
			</constructor>
			<constructor name="new_with_property_base" symbol="xfconf_channel_new_with_property_base">
				<return-type type="XfconfChannel*"/>
				<parameters>
					<parameter name="channel_name" type="gchar*"/>
					<parameter name="property_base" type="gchar*"/>
				</parameters>
			</constructor>
			<method name="reset_property" symbol="xfconf_channel_reset_property">
				<return-type type="void"/>
				<parameters>
					<parameter name="channel" type="XfconfChannel*"/>
					<parameter name="property_base" type="gchar*"/>
					<parameter name="recursive" type="gboolean"/>
				</parameters>
			</method>
			<method name="set_array" symbol="xfconf_channel_set_array">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="channel" type="XfconfChannel*"/>
					<parameter name="property" type="gchar*"/>
					<parameter name="first_value_type" type="GType"/>
				</parameters>
			</method>
			<method name="set_array_valist" symbol="xfconf_channel_set_array_valist">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="channel" type="XfconfChannel*"/>
					<parameter name="property" type="gchar*"/>
					<parameter name="first_value_type" type="GType"/>
					<parameter name="var_args" type="va_list"/>
				</parameters>
			</method>
			<method name="set_arrayv" symbol="xfconf_channel_set_arrayv">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="channel" type="XfconfChannel*"/>
					<parameter name="property" type="gchar*"/>
					<parameter name="values" type="GPtrArray*"/>
				</parameters>
			</method>
			<method name="set_bool" symbol="xfconf_channel_set_bool">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="channel" type="XfconfChannel*"/>
					<parameter name="property" type="gchar*"/>
					<parameter name="value" type="gboolean"/>
				</parameters>
			</method>
			<method name="set_double" symbol="xfconf_channel_set_double">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="channel" type="XfconfChannel*"/>
					<parameter name="property" type="gchar*"/>
					<parameter name="value" type="gdouble"/>
				</parameters>
			</method>
			<method name="set_int" symbol="xfconf_channel_set_int">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="channel" type="XfconfChannel*"/>
					<parameter name="property" type="gchar*"/>
					<parameter name="value" type="gint32"/>
				</parameters>
			</method>
			<method name="set_named_struct" symbol="xfconf_channel_set_named_struct">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="channel" type="XfconfChannel*"/>
					<parameter name="property" type="gchar*"/>
					<parameter name="struct_name" type="gchar*"/>
					<parameter name="value_struct" type="gpointer"/>
				</parameters>
			</method>
			<method name="set_property" symbol="xfconf_channel_set_property">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="channel" type="XfconfChannel*"/>
					<parameter name="property" type="gchar*"/>
					<parameter name="value" type="GValue*"/>
				</parameters>
			</method>
			<method name="set_string" symbol="xfconf_channel_set_string">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="channel" type="XfconfChannel*"/>
					<parameter name="property" type="gchar*"/>
					<parameter name="value" type="gchar*"/>
				</parameters>
			</method>
			<method name="set_string_list" symbol="xfconf_channel_set_string_list">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="channel" type="XfconfChannel*"/>
					<parameter name="property" type="gchar*"/>
					<parameter name="values" type="gchar**"/>
				</parameters>
			</method>
			<method name="set_struct" symbol="xfconf_channel_set_struct">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="channel" type="XfconfChannel*"/>
					<parameter name="property" type="gchar*"/>
					<parameter name="value_struct" type="gpointer"/>
					<parameter name="first_member_type" type="GType"/>
				</parameters>
			</method>
			<method name="set_struct_valist" symbol="xfconf_channel_set_struct_valist">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="channel" type="XfconfChannel*"/>
					<parameter name="property" type="gchar*"/>
					<parameter name="value_struct" type="gpointer"/>
					<parameter name="first_member_type" type="GType"/>
					<parameter name="var_args" type="va_list"/>
				</parameters>
			</method>
			<method name="set_structv" symbol="xfconf_channel_set_structv">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="channel" type="XfconfChannel*"/>
					<parameter name="property" type="gchar*"/>
					<parameter name="value_struct" type="gpointer"/>
					<parameter name="n_members" type="guint"/>
					<parameter name="member_types" type="GType*"/>
				</parameters>
			</method>
			<method name="set_uint" symbol="xfconf_channel_set_uint">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="channel" type="XfconfChannel*"/>
					<parameter name="property" type="gchar*"/>
					<parameter name="value" type="guint32"/>
				</parameters>
			</method>
			<method name="set_uint64" symbol="xfconf_channel_set_uint64">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="channel" type="XfconfChannel*"/>
					<parameter name="property" type="gchar*"/>
					<parameter name="value" type="guint64"/>
				</parameters>
			</method>
			<property name="channel-name" type="char*" readable="1" writable="1" construct="0" construct-only="1"/>
			<property name="property-base" type="char*" readable="1" writable="1" construct="0" construct-only="1"/>
			<signal name="property-changed" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="object" type="XfconfChannel*"/>
					<parameter name="p0" type="char*"/>
					<parameter name="p1" type="GValue*"/>
				</parameters>
			</signal>
		</object>
	</namespace>
</api>
