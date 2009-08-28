namespace Xfconf {

	public static bool init () throws Xfconf.Error;

	[Compact]
	public class Property {
		[CCode (cname = "xfconf_g_property_bind")]
		public static ulong bind (Xfconf.Channel channel, string xfconf_property, GLib.Type xfconf_property_type, void* object, string object_property);
		[CCode (cname = "xfconf_g_property_bind_gdkcolor")]
		public static ulong bind_gdkcolor (Xfconf.Channel channel, string xfconf_property, void* object, string object_property);
		[CCode (cname = "xfconf_g_property_unbind")]
		public static void unbind (ulong id);
		[CCode (cname = "xfconf_g_property_unbind_all")]
		public static void unbind_all (void* channel_or_object);
		[CCode (cname = "xfconf_g_property_unbind_by_property")]
		public static void unbind_by_property (Xfconf.Channel channel, string xfconf_property, void* object, string object_property);
	}

	public class Channel {
		public bool set_string_list (string property, [CCode (array_length = false, type = "const gchar* const*")] string[] values);
	}

	/*
	[SimpleType]
	[CCode (cname = "gint16", type_id = "XFCONF_TYPE_INT16", marshaller_type_name = "INT16", get_value_function = "xfconf_g_value_get_int16", set_value_function = "xfconf_g_value_set_int16", default_value = "0", type_signature = "i")]
	[IntegerType (rank = 6)]
	public struct int16 {
		[CCode (cname = "G_MININT")]
		public static int16 MIN;
		[CCode (cname = "G_MAXINT")]
		public static int16 MAX;

		[CCode (cname = "g_strdup_printf", instance_pos = -1)]
		public string to_string (string format = "%i");

		[CCode (cname = "MIN")]
		public static int16 min (int16 a, int16 b);
		[CCode (cname = "MAX")]
		public static int16 max (int16 a, int16 b);
		[CCode (cname = "CLAMP")]
		public int16 clamp (int16 low, int16 high);

		[CCode (cname = "GINT_TO_POINTER")]
		public void* to_pointer ();

		[CCode (cname = "abs")]
		public int16 abs ();

		[CCode (cname = "GINT_TO_BE")]
		public int16 to_big_endian ();
		[CCode (cname = "GINT_TO_LE")]
		public int16 to_little_endian ();

		[CCode (cname = "GINT_FROM_BE")]
		public static int16 from_big_endian (int16 val);
		[CCode (cname = "GINT_FROM_LE")]
		public static int16 from_little_endian (int16 val);
	}

	[SimpleType]
	[CCode (cname = "guint16", type_id = "XFCONF_TYPE_UINT16", marshaller_type_name = "UINT16", get_value_function = "xfconf_g_value_get_uint16", set_value_function = "xfconf_g_value_set_uint16", default_value = "0U", type_signature = "u")]
	[IntegerType (rank = 7)]
	public struct uint16 {
		[CCode (cname = "0")]
		public static uint16 MIN;
		[CCode (cname = "G_MAXUINT")]
		public static uint16 MAX;

		[CCode (cname = "g_strdup_printf", instance_pos = -1)]
		public string to_string (string format = "%u");

		[CCode (cname = "MIN")]
		public static uint16 min (uint16 a, uint16 b);
		[CCode (cname = "MAX")]
		public static uint16 max (uint16 a, uint16 b);
		[CCode (cname = "CLAMP")]
		public uint16 clamp (uint16 low, uint16 high);

		[CCode (cname = "GUINT_TO_POINTER")]
		public void* to_pointer ();

		[CCode (cname = "GUINT_TO_BE")]
		public uint16 to_big_endian ();
		[CCode (cname = "GUINT_TO_LE")]
		public uint16 to_little_endian ();

		[CCode (cname = "GUINT_FROM_BE")]
		public static uint16 from_big_endian (uint16 val);
		[CCode (cname = "GUINT_FROM_LE")]
		public static uint16 from_little_endian (uint16 val);
	}
	*/

}

