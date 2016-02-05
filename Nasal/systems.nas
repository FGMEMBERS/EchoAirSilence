##########################################################
#######Electrical system for Xray#########
#basic setup
setlistener("/sim/signals/fdm-initialized", func {
    settimer(update_prop,5);
    print("Retractable Propeller System ... ok");
});

update_prop = func {
if(getprop("/instrumentation/eng-out") == 0){
setprop("/controls/engines/engine/magnetos", 0);
 }
settimer(update_prop, 0);
}
