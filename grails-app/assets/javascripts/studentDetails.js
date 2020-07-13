
$('#basicInformationButton').click(function(){
  
  $("#basicInformationDiv").show();
  $("#additionalInformationDiv").hide();
  $("#academicsInformationDiv").hide();  
});

$('#additionalInformationButton').click(function(){
  
  $("#additionalInformationDiv").show();
  $("#basicInformationDiv").hide();
  $("#academicsInformationDiv").hide();
    
});

$('#academicsInformationButton').click(function(){
  
  $("#academicsInformationDiv").show();
  $("#basicInformationDiv").hide();
  $("#additionalInformationDiv").hide();
});
