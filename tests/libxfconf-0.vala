using Xfconf;

public class LibxfconfTests : Object {

	private Xfconf.Channel channel;
	private MainLoop mainloop;
	public int prop_int {
		get; set;
	}

	public LibxfconfTests () {
		channel = new Xfconf.Channel ("test-vala-bindings");
	}

	public void test_list_channels () {
		string[] channels = Xfconf.list_channels ();
		for (int i=0; channels[i] != null; i++) {
			print ("channel: %s\n", channels[i]);
		}
	}

	public void test_simple_types () {
		/* Set/get common data types */
		channel.set_bool ("/bool", true);
		channel.set_int ("/int", 1);
		channel.set_string ("/string", "value");
		print ("bool: %d\n", (int)channel.get_bool ("/bool", false));
		print ("int: %d\n", channel.get_int ("/int", 0));
		print ("string: %s\n", channel.get_string ("/string", "no-value"));

		/* Set/get a string list */
		string[] string_list = {"1", "2", "3", "quatre"};
		channel.set_string_list ("/string-list", string_list);
		string_list = channel.get_string_list ("/string-list");
		for (int i=0; string_list[i] != null; i++) {
			print ("string-list: %s\n", string_list[i]);
		}

		/* Set/get a Value */
		Value prop_val = 5;
		channel.set_property ("/property", prop_val);
		prop_val.reset ();
		channel.get_property ("/property", prop_val);
		print ("property: %d\n", (int)prop_val);
	}

	public void test_arrays () {
		/* Set an array */
		int val_int = 5;
		string val_string = "cinq";
		channel.set_array ("/array", typeof(int), &val_int, typeof(string), val_string);

		/* Get an array */
// FIXME
		int val2_int;
		string val2_string;
		channel.get_array ("/array", typeof(int), out val2_int, typeof(string), out val2_string);
		print ("array val_int: %d\n", val2_int);
		print ("array val_string: %s\n", val2_string);
	}

	private struct MyStruct {
		public int val_int;
		public string val_string;
	}

	private struct MyNamedStruct {
		public int val_int;
		public string val_string;
	}

	public void test_structs () {
		/* Set/get a struct */
		MyStruct my_struct = { 5, "cinq" };
		channel.set_struct ("/struct", & my_struct, typeof(int), typeof(string));

		my_struct.val_int = 0;
		my_struct.val_string = null;
		channel.get_struct ("/struct", & my_struct, typeof(int), typeof(string));
		print ("struct val_int: %d\n", my_struct.val_int);
		print ("struct val_string: %s\n", my_struct.val_string);

		/* Type array for structv and named_struct_register */
		Type[] type_array = { typeof(int), typeof(string) };

		/* Set/get a structv */
		my_struct.val_int = 6;
		my_struct.val_string = "six";
		channel.set_structv ("/structv", & my_struct, type_array);

		my_struct.val_int = 0;
		my_struct.val_string = "six";
		channel.get_structv ("/structv", & my_struct, type_array);
		print ("structv val_int: %d\n", my_struct.val_int);
		print ("structv val_string: %s\n", my_struct.val_string);

		/* Register a named struct */
		Xfconf.named_struct_register ("my-named-struct", type_array);

		/* Set/get a named struct */
		MyNamedStruct my_named_struct = { 5, "cinq" };
		channel.set_named_struct ("/named-struct", "my-named-struct", & my_named_struct);

		my_named_struct.val_int = 0;
		my_named_struct.val_string = null;
		channel.get_named_struct ("/named-struct", "my-named-struct", & my_named_struct);
		print ("named-struct val_int: %d\n", my_named_struct.val_int);
		print ("named-struct val_string: %s\n", my_named_struct.val_string);
	}

	/* TODO yet to be implemented */
	public void test_int16 () {
	}

	public void test_error () {
		try {
			if (!channel.set_int ("error-on-property-name", 0))
				throw new Xfconf.Error.INVALID_PROPERTY("Property name is wrong\n");
		} catch (Xfconf.Error ex) {
			print ("Error (%d): %s", ex.code, ex.message);
		}
	}

	public void test_property_binding () {
		Xfconf.Property.bind (channel, "/int", typeof(int), this, "prop-int");

		this.notify.connect ((s, p) => { print ("notify::%s\n", p.name); });
		channel.property_changed.connect ((channel, prop, val) => {
			print ("property changed: %s\n", prop);
			if (val.type () == typeof(int)) {
				print ("value: %d\n", val.get_int ());
			} else if (val.type () == typeof(string)) {
				print ("value: %s\n", val.get_string ());
			}
		});

		message ("binded property /int");
		message ("example: xfconf-query -c test-vala-bindings -p /int -s 2\n");
		mainloop = new MainLoop (null, false);
		mainloop.run ();
	}
}

static int main (string[] args) {
	try { Xfconf.init (); } catch (Xfconf.Error ex) {}
	var tests = new LibxfconfTests ();
	tests.test_list_channels ();
	tests.test_simple_types ();
	tests.test_arrays ();
	tests.test_structs ();
	tests.test_int16 ();
	tests.test_error ();
	tests.test_property_binding ();
	tests.unref ();
	Xfconf.shutdown ();
	return 0;
}
