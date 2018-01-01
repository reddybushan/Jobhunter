//date sorting script
jQuery.fn.dataTableExt.oSort['title-numeric-asc']  = function(a,b) {
	
    var x = a.match(/title="*(-?[0-9\.]+)/)[1];
    var y = b.match(/title="*(-?[0-9\.]+)/)[1];
    x = parseFloat( x );
    y = parseFloat( y );
    return ((x < y) ? -1 : ((x > y) ?  1 : 0));
};
 
jQuery.fn.dataTableExt.oSort['title-numeric-desc'] = function(a,b) {
	
    var x = a.match(/title="*(-?[0-9\.]+)/)[1];
    var y = b.match(/title="*(-?[0-9\.]+)/)[1];
    x = parseFloat( x );
    y = parseFloat( y );
    return ((x < y) ?  1 : ((x > y) ? -1 : 0));
};

jQuery.fn.dataTableExt.oSort['str-string-asc']  = function(x,y) {
	
	return ((x < y) ? -1 : ((x > y) ?  1 : 0));
};

jQuery.fn.dataTableExt.oSort['str-string-desc'] = function(x,y) {
	
	return ((x < y) ?  1 : ((x > y) ? -1 : 0));
};

jQuery.fn.dataTableExt.aTypes.unshift(
		
	    function ( sData ) {
	    	var patt1=/span title/gi;
	    	var patt2=/span str/gi;
	    	var str = new String(sData);	    	
			if(str.match(patt1) != "null" && str.match(patt1) != null) {
	        	return 'title-numeric';
			} else if(str.match(patt2) != "null" && str.match(patt2) != null) {
				return 'str-string';
			} else {
				return "html";
			}
	    }
);


//end of date sorting