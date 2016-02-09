#Nasal code for TCAS system
#by D-ECHO
setlistener("/sim/signals/fdm-initialized", func {
	settimer(update_tcas, 2);
print("TCAS intialized");
});

var update_tcas = func{
if(getprop("/ai/models/multiplayer/bearing-to")){
	var alpha1=getprop("/ai/models/multiplayer/bearing-to");
	var r1=getprop("/ai/models/multiplayer/distance-to-nm");
var cosalpha1 = math.cos(alpha1);
var sinalpha1 = math.sin(alpha1);
	var y1=r1*cosalpha1;
	var z1=r1*sinalpha1;
print(y1);
print(z1);
	setprop("/instrumentation/tcas/mp/y", y1);
	setprop("/instrumentation/tcas/mp/z", z1);
}


settimer(update_tcas, 0);	
}
