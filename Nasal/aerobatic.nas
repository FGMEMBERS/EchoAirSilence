#Aerobatic mode
setlistener("/sim/signals/fdm-initialized", func {
     settimer(update_aerobatic, 2);
    });


var update_aerobatic = func{
var elevator = getprop("controls/flight/elevator");
var aileron = getprop("controls/flight/aileron");
var rudder = getprop("controls/flight/rudder");
var aerobatic = getprop("controls/flight/aerobatic-switch");
if (aerobatic){
setprop("/controls/flight/elevator_out", elevator * 0.7);
setprop("/controls/flight/aileron_out", aileron * 0.7);
setprop("/controls/flight/rudder_out", rudder * 0.7);
}else{
setprop("/controls/flight/elevator_out", elevator * 0.2);
setprop("/controls/flight/aileron_out", aileron * 0.2);
setprop("/controls/flight/rudder_out", rudder * 0.4);
}
     settimer(update_aerobatic, 0);
}


