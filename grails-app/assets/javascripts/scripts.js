
$("#showStudentMessage").click(function(){
  $("#studentMessage").show();
  $("#refreshForm").show();
  $("#showStudentMessage").hide();
});

$('#myModal').on('hidden.bs.modal', function () {
     location.reload();
});


function showStudentInformation(param_div_id) {
    document.getElementById('studentInformationDisplay').innerHTML = document.getElementById(param_div_id).innerHTML;
    }
function showPersonalInformation(param_div_id) {
    document.getElementById('studentInformationDisplay').innerHTML = document.getElementById(param_div_id).innerHTML;
    }
function showAcademicInformation(param_div_id) {
    document.getElementById('studentInformationDisplay').innerHTML = document.getElementById(param_div_id).innerHTML;
    }


$(document).ready(function(){
  $("#showPersonalInfo").click(function(){
    $("#personalInfoTab").show();
    $("#addressInfoTab").hide();
    $("#academicInfoTab").hide();
  });
});

$(document).ready(function(){
  $("#showAddressInfo").click(function(){
    $("#addressInfoTab").show();
    $("#personalInfoTab").hide();
    $("#academicInfoTab").hide();
  });
});

$(document).ready(function(){
  $("#showAcademicInfo").click(function(){
    $("#academicInfoTab").show();
    $("#personalInfoTab").hide();
    $("#addressInfoTab").hide();
  });
});

