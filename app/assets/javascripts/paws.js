 jQuery.ajaxSetup({ 
  'beforeSend': function(xhr) {xhr.setRequestHeader("Accept", "text/javascript")}
})

 $('document').ready(function(){
 	$('#love-me').load();
 });

