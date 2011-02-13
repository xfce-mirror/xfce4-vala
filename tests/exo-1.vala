using Gtk;
using Exo;

public class Dummy : GLib.Object {

	public string prop_string { get; set; }

}

public class ExoTests {

	public void test_binding () {
		var dummy1 = new Dummy ();
		var dummy2 = new Dummy ();

		var binding = new Exo.Binding (dummy1, "prop-string", dummy2, "prop-string");
		dummy1.prop_string = "test";
		binding.unbind ();
		print ("Binding: dummy1 bind to dummy2\n");
		print ("Binding: dummy1.prop_string set to \"test\"\n");
		print ("Binding: dummy2.prop_string: %s\n", dummy2.prop_string);
		print ("Binding: unbind()\n");

		new Exo.MutualBinding (dummy1, "prop-string", dummy2, "prop-string");
		dummy2.prop_string = "test mutual bindnig";
		print ("MutualBinding: dummy1 bind to dummy2\n");
		print ("MutualBinding: dummy2.prop_string set to \"test2\"\n");
		print ("MutualBinding: dummy1.prop_string: %s\n", dummy1.prop_string);
	}

	public void test_mount_point () {
	}

	public void test_string () {
	}

	static int main () {
		var tests = new ExoTests ();
		tests.test_binding ();
		tests.test_mount_point ();
		tests.test_string ();
		return 0;
	}

}
