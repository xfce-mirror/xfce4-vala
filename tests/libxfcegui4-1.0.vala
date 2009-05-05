using Xfce;

public class Libxfce4guiTests : Object {

	public void test_dialogs () {
		bool res = Xfce.Dialog.confirm ("To be or not to be?", Gtk.STOCK_YES, null);
		message ("confirm: %d", (int)res);
		Xfce.Dialog.info ("Info");
		Xfce.Dialog.warning ("Warning");
		Xfce.Dialog.error ("Error");

		var dialog = new Xfce.TitledDialog.with_buttons ("Libxfce4guiTests", null, 0, "gtk-ok", 0);
		dialog.subtitle = "Test XfceTitledDialog";
		dialog.run ();
	}

}

static int main (string[] args) {
	Gtk.init (ref args);

	var tests = new Libxfce4guiTests ();
	tests.test_dialogs ();

	return 0;
}

