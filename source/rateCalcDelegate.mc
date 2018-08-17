
using Toybox.System;
using Toybox.WatchUi as Ui;

class rateCalcDelegate extends Ui.BehaviorDelegate {
	var mainView;

    // Detect Menu behavior
    function onSelect(){
                        System.println("IV select...");
                        mainView.doSelectButton();
                        return true;
                        }

    function initialize(v) {
    
        Ui.BehaviorDelegate.initialize();
        mainView = v;
        
    }
}