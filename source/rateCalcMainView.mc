using Toybox.WatchUi as Ui;
using Toybox.Lang;

class rateCalcMainView extends Ui.View {
	var myShapes;
	var count;
	var counter;
	var text;
	var info_text = "Press to start timing";
	var rate_text = "";
	var t;

    function initialize() {
    	counter = 0;
        View.initialize();
        t = new rateTimer();
    }

    // Load your resources here
    function onLayout(dc) {
        setLayout(Rez.Layouts.MainLayout(dc));
    }

    // Called when this View is brought to the foreground. Restore
    // the state of this View and prepare it to be shown. This includes
    // loading resources into memory.
    function onShow() {
    }

    // Update the view
    function onUpdate(dc) {
    	
    
    	var count_field = View.findDrawableById("rate"); 
    	var info_field = View.findDrawableById("text"); 
    	count_field.setText(rate_text);
    	info_field.setText(info_text);

        
        View.onUpdate(dc);
   		//This redraws the layout 
        	 
		// if doing any dc drawing would need to do now after View.onUpdate
        
    }

    // Called when this View is removed from the screen. Save the
    // state of this View here. This includes freeing resources from
    // memory.
    function onHide() {
    }
    
    function doLapButton() {
    	if (t.getStatus() == false) { 
    		return false;// not running, go back
    	}
    	
    	else {	
    		t.resetTimer();
    	
    	        System.println("Reset timer detected");
    	        info_text = "Press to start";
    	        rate_text = "-";
    	        WatchUi.requestUpdate();
    	    	return true;
    	    	}
    }
    
    function doSelectButton() {
    if (t.getStatus() == false) { 
    		t.startTimer();
    		info_text = "Press again";
    		WatchUi.requestUpdate();
    		
    	}
    	
    	else {	
    			var return_text = t.updateRate();
    			rate_text = return_text.toString(); 
    			info_text = "Average rate";   			

    	        WatchUi.requestUpdate();
    	    	}
    	
    }

}
