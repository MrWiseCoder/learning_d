import std.stdio;
import std.random;
import std.conv;
import std.string;


void main() {
    const TRIAL_COUNT = 3;
    int v;
    string s;
    auto rnd = Random(unpredictableSeed);
    auto n = rnd.front % 10;

    for (size_t i = 0; i < TRIAL_COUNT; ++i)
    {
        write("Please enter a no -> ");
        s = readln();
        v = to!int(s.strip);
        if(v == n)
        {
           writeln("\t *** U win ***"); 
           break;
        } else {
           writeln("\t --- not true ---");
        }
    }
    writeln("The number was => ", n);
}
