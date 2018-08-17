using Toybox.System as Sys;

class rateTimer {
	var status = false;
    var initial_timer;
    var timer;
    var rD;
    var updater;
    
function getStatus() {
	System.println("getStatus. status = "+status);
	return status;
}

function resetTimer() {
	rD = null;
	status = false;
}

function updateRate() {
		updater = rD.rD_add(Sys.getTimer());
		
		if (updater == 0) {
			return "Press again"; }
		else {
			return updater; }
	// add link 
	
}

function startTimer() {
        
        rD = new rateData(Sys.getTimer());
        status = true;
}



}