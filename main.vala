using Gtk;

public class Myapp : Gtk.Application {
    public Myapp() {
        Object (application_id: "org.gnome.MyApp", 
        flags: ApplicationFlags.FLAGS_NONE);
    }

    protected override void activate() {
        var builder = new Builder (); 
        builder.add_from_file ("project.ui");
        
        var window = (Gtk.Window) builder.get_object ("main_window"); 
        window.application = this;
        
        window.title = "Hello, World!";
        window.set_default_size(200, 200);
        window.activate();
    }

    public static int main(string[] args) {
        var app = new Myapp();
        return app.run(args);
    }
}