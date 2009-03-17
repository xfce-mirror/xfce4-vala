using Xfce;

public class Libxfce4utilTests {

	public void test_rc (string filename) {
		Xfce.Rc rc;

		rc = new Xfce.Rc (filename, false);
		rc.set_group ("my-group");
		rc.write_entry ("string", "hello-world");
		rc.write_int_entry ("int", 5);
		rc.write_bool_entry ("bool", true);
		print ("resource saved under file %s\n", filename);

		rc = new Xfce.Rc (filename, true);
		rc.set_group ("my-group");
		print ("string = %s\n", rc.read_entry ("string", "default"));
		print ("int = %d\n", rc.read_int_entry ("int", 0));
		print ("bool = %d\n", (int)rc.read_bool_entry ("bool", false));
	}

	public void test_kiosk (string module) {
		Xfce.Kiosk kiosk;
		bool has_cap;

		kiosk = new Xfce.Kiosk (module);
		has_cap = kiosk.query ("mouse-right-click");

		print ("my-module has capability mouse-right-click: %d\n", (int)has_cap);
	}

	public void test_resource () {
		string path;
		string[] paths1;
		string[] paths2;
		string[] paths3;

		path = Xfce.Resource.lookup (Xfce.ResourceType.CONFIG, "xfce4/");
		paths1 = Xfce.Resource.lookup_all (Xfce.ResourceType.CONFIG, "xfce4/");
		paths2 = Xfce.Resource.match (Xfce.ResourceType.CONFIG, "xfce4/*rc", true);
		paths3 = Xfce.Resource.dirs (Xfce.ResourceType.CONFIG);

		print ("resource location: %s\n", path);
		for (int i=0; paths1[i] != null; i++) {
			print ("resource location (all): %s\n", paths1[i]);
		}
		for (int i=0; paths2[i] != null; i++) {
			print ("matched resource location: %s\n", paths2[i]);
		}
		for (int i=0; paths3[i] != null; i++) {
			print ("config dir: %s\n", paths3[i]);
		}
	}

	public void test_signal () {
		try {
			message ("To trigger the signal send: kill -TERM <pid>");
			Xfce.PosixSignalHandler.set_handler (ProcessSignal.TERM,
					(@signal) => { print ("Catched SIGTERM (%d)\n", @signal); });
		} catch (Error ex) {}
	}

	static int main (string[] args) {
		MainLoop mainloop = new MainLoop (null, false);
		Libxfce4utilTests tests = new Libxfce4utilTests ();
		string rcfilename = "rcfile.rc";
		string kiosk_module = "my-module";

		try { Xfce.PosixSignalHandler.init (); } catch (Error ex) {}
		Xfce.textdomain ("test-package", "/usr/share/locale", null);

		tests.test_rc (rcfilename);
		tests.test_kiosk (kiosk_module);
		tests.test_resource ();
		tests.test_signal ();

		mainloop.run ();

		Xfce.PosixSignalHandler.shutdown ();

		return 0;
	}
}

