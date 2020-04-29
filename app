const Gtk = imports.gi.Gtk;
Gtk.init(null);

let app = new Gtk.Application({application_id: 'org.gtk.ExampleApp' });

app.connect('activate', ()=>{
	let win = new Gtk.ApplicationWindow({application: app, defaultHeight:300, defaultWidth:300});

	let grd = new Gtk.Grid();
	let btn = new Gtk.Button({label: 'Hello World!'});

	var value=0;
	btn.connect('clicked', ()=> {
					value++;
					btn.set_label('The button was clicked ' + value + ' times');
	});

	grd.attach(btn,0,0,1,1);
	win.add(grd);

	win.show_all();

});

app.run([]);
