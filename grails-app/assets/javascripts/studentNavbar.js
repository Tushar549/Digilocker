/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$("#coCurriculumCertificate").change(function () {
    readCoCurriculumCertificate(this);
});
function readCoCurriculumCertificate() {
    var fileInput = document.getElementById('coCurriculumCertificate');
    var filePath = fileInput.value;
    var allowedExtensions = /(\.jpg|\.jpeg)$/i;
    if(!allowedExtensions.exec(filePath)){
        alert('Please upload file having extensions .jpg/.jpeg only.');
        fileInput.value = '';
        return false;
    }else{
        //Image preview
        if (fileInput.files && fileInput.files[0]) {
            var reader = new FileReader();
            reader.onload = function(e) {
                $('#coCurriculumCertificatePreview').attr('src', e.target.result).fadeIn('slow');
            },
            reader.readAsDataURL(fileInput.files[0]);
        }
    }
}
$("#trainingInternshipCertificate").change(function () {
    readTrainingInternshipCertificate(this);
});
function readTrainingInternshipCertificate() {
    var fileInput = document.getElementById('trainingInternshipCertificate');
    var filePath = fileInput.value;
    var allowedExtensions = /(\.jpg|\.jpeg)/;
    if(!allowedExtensions.exec(filePath)){
        alert('Please upload file having extensions .jpg/.jpeg only.');
        fileInput.value = '';
        return false;
    }else{
        //Image preview
        if (fileInput.files && fileInput.files[0]) {
            var reader = new FileReader();
            reader.onload = function(e) {
                $('#trainingInternshipCertificatePreview').attr('src', e.target.result).fadeIn('slow');
            },
            reader.readAsDataURL(fileInput.files[0]);
        }
    }
}
$("#semesterMarksheet").change(function () {
    readsemesterMarksheet(this);
});
function readsemesterMarksheet() {
    var fileInput = document.getElementById('semesterMarksheet');
    var filePath = fileInput.value;
    var allowedExtensions = /(\.jpg|\.jpeg)/;
    if(!allowedExtensions.exec(filePath)){
        alert('Please upload file having extensions .jpg/.jpeg only.');
        fileInput.value = '';
        return false;
    }else{
        //Image preview
        if (fileInput.files && fileInput.files[0]) {
            var reader = new FileReader();
            reader.onload = function(e) {
                $('#semesterMarksheetPreview').attr('src', e.target.result).fadeIn('slow');
            },
            reader.readAsDataURL(fileInput.files[0]);
        }
    }
}

jQuery.validator.addMethod("digitsonly", function (value, element) {
        return this.optional(element) || /^[0-9]+$/i.test(value);
    }, "Digits only please");
    
jQuery.validator.addMethod("lettersonly", function (value, element) {
    return this.optional(element) || /^[a-z\s]+$/i.test(value);
}, $.validator.messages.lettersonly = 'only alphabets are allowed');

jQuery.validator.addMethod("filesize", function (value, element, param) {
    return this.optional(element) || (element.files[0].size <= param);
}, 'File size must be less than 1 MB');

jQuery.validator.addMethod("extension", function(value, element, param) {
	param = typeof param === "string" ? param.replace(/,/g, '|') : "jpg";
	return this.optional(element) || value.match(new RegExp(".(" + param + ")$", "i"));
}, 'Please enter a value with a valid extension.');

$('[data-toggle="checkbox"]').click(function () {
    if ($(this).hasClass('active')) {
        $(this).removeClass('active');
        $(this).find('[type="checkbox"]').removeAttr('checked');
    } else {
        $(this).addClass('active');
        $(this).find('[type="checkbox"]').attr('checked', 'true');
    }
});

jQuery(function ($) {
$('#coCurriculumForm').validate({
    rules: {
        status: {
            required: true
        },
        category: {
            required: true
        },
        eventOrganizer: {
            required: true,
            minlength: 2
        },
        coCurriculumCertificate: {
            required: true,
            filesize: 1048576
        },
        position: {
            required: true
        }

    },
    messages: {
        status: {
            required: "This field is Mandatory"
        },
        category: {
            required: "This field is Mandatory"
        },
        eventOrganizer: {
            required: "This field is Mandatory",
            minlength: "Enter a Valid Name"
        },
        coCurriculumCertificate: {
            required: "This field is Mandatory",
            filesize: "Maximum file size is 1 MB"
        },
        position: {
            required: "This field is Mandatory"
        }
    },
    errorPlacement: function (error, element) {
        if (element.attr("name") == "status") {
            error.insertAfter("#statusLabel");
        }
        if (element.attr("name") == "category") {
            error.insertAfter("#categoryLabel");
        }
        if (element.attr("name") == "position") {
            error.insertAfter("#positionLabel");
        }
        if (element.attr("name") == "eventOrganizer") {
            error.insertAfter("#eventOrganizerLabel");
        }
        if (element.attr("name") == "coCurriculumCertificate") {
            error.insertAfter("#certificateLabel");
        }
    },
    highlight: function (element) {
        $(element).parent().addClass('has-error');
    },
    unhighlight: function (element) {
        $(element).parent().removeClass('has-error');
    },
    
    submitHandler: function (form) {
        form.validate();

}
});
});

jQuery(function ($) {
$('#bTechMarkSheetForm').validate({
    rules: {
        semester: {
            required: true
        },
        semesterPercentage: {
            required: true,
            maxlength: 3,
            minlength: 1,
            digitsonly: true
        },
        semesterMarksheet: {
            required: true,
            filesize: 1048576
        },
        bTechPercentage: {
            minlength: 1,
            maxlength: 3,
            digitsonly: true
        }
    },
    messages: {

        semester: {
            required: "This field is Mandatory"
        },
        semesterPercentage: {
            required: "This field is Mandatory",
            maxlength: "Enter a valid Percentage",
            minlength: "This field is Mandatory",
            digitsonly: "Enter a valid Percentage"
        },
        semesterMarksheet: {
            required: "This field is Mandatory",
            filesize: "Maximum file size is 1 MB"
        },
        bTechPercentage: {
            minlength: "This field is Mandatory",
            maxlength: "Enter a valid Percentage",
            digitsonly: "Enter a valid Percentage"
        }
    },
    highlight: function (element) {
        $(element).parent().addClass('has-error');
    },
    unhighlight: function (element) {
        $(element).parent().removeClass('has-error');
    },
                submitHandler: function (form) {
                form.validate();
                        }
        });
});
         jQuery(function ($) {
 $('#trainingAndInternshipForm').validate({
    rules: {
        rollNo: {
            required: true,
            minlength: 9,
            digitsonly: true
        },
        studentName: {
            required: true,
            minlength: 2,
            lettersonly: true
        },
        branch: {
            required: true
        },
        year: {
            required: true
        },
        projectTitle: {
            required: true,
            minlength: 3,
            lettersonly: true
        },
        areaOfProject: {
            required: true,
            minlength: 3},
        session: {
            required: true,
            digitsonly: true
        },
        companyName: {
            required: true,
            minlength: 3,
            lettersonly: true
        },
        mentorName: {
            required: true,
            minlength: 3,
            lettersonly: true
        },
        city: {
            required: true,
            minlength: 3,
            lettersonly: true
        },
        trainingInternshipCertificate: {
            required: true,
            filesize: 1048576
        }

    },
    messages: {

        rollNo: {
            required: "This field is Mandatory",
            minlength: "Please enter a valid value",
            digitsonly: "Only Numbers Allowed"
        },
        studentName: {
            required: "This field is Mandatory",
            minlength: "Please enter a valid value",
            lettersonly: "Only Alphabets Allowed"
        },
        branch: {
            required: "This field is Mandatory"
        },
        year: {
            required: "This field is Mandatory"
        },
        projectTitle: {
            required: "This field is Mandatory",
            minlength: "Please enter a valid value",
            lettersonly: "Only Alphabets Allowed"
        },
        areaOfProject: {
            required: "This field is Mandatory",
            minlength: "Please enter a valid value"
        },
        session: {
            required: "This field is Mandatory"
        },
        companyName: {
            required: "This field is Mandatory",
            minlength: 3,
            lettersonly: "Only Alphabets Allowed"
        },
        mentorName: {
            required: "This field is Mandatory",
            minlength: "Please enter a valid value",
            lettersonly: "Only Alphabets Allowed"
        },
        city: {
            required: "This field is Mandatory",
            minlength: "Please enter a valid value",
            lettersonly: "Only Alphabets Allowed"
        },
        trainingInternshipCertificate: {
            required: "This field is Mandatory",
            filesize: "Maximum file size is 1 MB"
        }
    },
    highlight: function (element) {
        $(element).parent().addClass('has-error');
    },
    unhighlight: function (element) {
        $(element).parent().removeClass('has-error');
    },
 submitHandler: function (form) {
        form.validate();

}
});
});

jQuery(function ($) {
$('#changePasswordForm').validate({
    rules: {
        currentPassword: {
            required: true
        },
        newPassword: {
            required: true
        },
        reNewPassword: {
            required: true,
            equalTo: "#newPassword"
        }
        
    },
    messages: {

        currentPassword: {
            required: "This field is Mandatory"
        },
        newPassword: {
            required: "This field is Mandatory"
        },
        reNewPassword: {
            required: "This field is Mandatory",
            equalTo: "Password do not match!"
        }
    },
    highlight: function (element) {
        $(element).parent().addClass('has-error');
    },
    unhighlight: function (element) {
        $(element).parent().removeClass('has-error');
    },
                submitHandler: function (form) {
                form.validate();
                        }
        });
});