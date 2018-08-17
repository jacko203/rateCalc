
using Toybox.System;
using Toybox.WatchUi as Ui;

class rateCalcMainViewDelegate extends Ui.BehaviorDelegate {
	var tmainView;

    // Detect Menu behavior

    function onSelect(){
                        System.println("MVD select...");
                        tmainView.doSelectButton();
                        return true;
                        }
    
    
    function onBack() {
        return tmainView.doLapButton();
        
    
    // do something else
    }
    
    
    function initialize(v) {
    
        Ui.BehaviorDelegate.initialize();
        tmainView = v;
                System.println("MVD iniaitlise position...");
        
        
        //v is passed from app initialise
    }
}