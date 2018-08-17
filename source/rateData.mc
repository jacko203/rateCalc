class rateData {
	private var mean = 0;
	private var n;
	private var last_t;
	
	function initialize(t) {
		System.println("Initialising rateData: "+t);
		last_t = t;
		n = 0;	
	}
	
	function rD_add(t) {
		var sum;
		var newmean;
		var relative_t;
		System.println("Adding rateData: "+t);
		
		relative_t = t - last_t;
		System.println("relative rateData: "+relative_t);
		sum = mean * n;
		sum = sum + relative_t;
		newmean = sum / (n + 1);
		
		System.println("Mean:"+mean+" n:"+n+" sum:"+sum+" newmean:"+newmean);
		
		mean = newmean;
		n++;
		last_t = t;
		
		return 60000 / mean;
	}
}