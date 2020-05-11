 function showDiscussion(category_id){
	 
	 var html_id = "#category_discussion_" + category_id;
	 if($(html_id).css("display") == 'block'){
		 
		 $(html_id).css("display", 'none')
		 
	 }
	 else{
		 
		 $(html_id).css("display", 'block')
	 }
	 
}
 
 function startJamming(category_id){
	 var html_id = "#category_new_discussion_" + category_id;
	 var button_id = "#startJammingButton_" + category_id;
     if($(html_id).css("display") == 'block'){
		 
		 $(html_id).css("display", 'none')
		 $(button_id).text("Start Jamming")
		 
	 }
	 else{
		 
		 $(html_id).css("display", 'block')
		 $(button_id).text("Back")
	 }
 }
 

 

 
