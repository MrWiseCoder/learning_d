import std.stdio;
import nice.curses;

void main()
{
	writeln("\t\t => Edit source/app.d to start your project.");
	writeln("\t\t --> Attr: ", Attr.normal);
	// Starting here
	Curses.Config cfg = { useColors:true, disableEcho: true };
	auto curses = new Curses(cfg);
	// ---------------------------
	// auto fg = curses.colors.addColor(122, 50, 200);
	// auto bg = curses.colors.addColor(22, 150, 20);
	// curses.colors.addPair(fg, bg);
	// ---------------------------
	// auto color = curses.colors.addPair(0, 1);
	auto w = curses.newWindow(40, 80, 5, 5);
	w.insert(10, 10, "deneme", 3);
	w.addstr(12, 12, "deneme2", Attr.bold);
	w.getch();
}
