using Toybox.Application as App;


class rateCalcApp extends App.AppBase {
	hidden var tView;

    function initialize() {
        App.AppBase.initialize();
    }

    // onStart() is called on application start up
    function onStart(state) {
    }

    // onStop() is called when your application is exiting
    function onStop(state) {
    }

    // Return the initial view of your application here
    function getInitialView() {
 
    	tView = new rateCalcView();
        return [tView, new rateCalcDelegate(tView)];
        // this registers with getInitialView (Toybox::Application::Appbase) an event handler    
        }

}
