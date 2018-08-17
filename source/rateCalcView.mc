using Toybox.WatchUi as Ui;
using Toybox.Lang;

class rateCalcView extends Ui.View {



    function initialize() {
    	
        View.initialize();
        
    }

    // Load your resources here
    function onLayout(dc) {
        setLayout(Rez.Layouts.StartScreen(dc));
    }

    // Called when this View is brought to the foreground. Restore
    // the state of this View and prepare it to be shown. This includes
    // loading resources into memory.
    function onShow() {
    }

    // Update the view
    function onUpdate(dc) {
    	
    
        View.onUpdate(dc);
        	 
        // Call the parent onUpdate function to redraw the layout
        
    }

    // Called when this View is removed from the screen. Save the
    // state of this View here. This includes freeing resources from
    // memory.
    function onHide() {
    }
   
    
    function doSelectButton() {
    	var newView = new rateCalcMainView();
    	Ui.pushView(newView, new rateCalcMainViewDelegate(newView), SLIDE_IMMEDIATE);
    }

}
