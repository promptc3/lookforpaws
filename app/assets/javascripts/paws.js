 	
 jQuery.ajaxSetup({ 
  'beforeSend': function(xhr) {xhr.setRequestHeader("Accept", "text/javascript")}
})
   $('document').ready(function(){
   	$('#click-show').click(function(){
	  $('story-section').fadeToggle()
	});

   });
 	

