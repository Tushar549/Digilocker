/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



var searchVisible = 0;
var transparent = true;
var mobile_device = false;
$(document).ready(function () {

    $.material.init();
    /*  Activate the tooltips      */
    $('[rel="tooltip"]').tooltip();
    // Code for the Validator
    var $validator = $('.wizard-card form').validate({
        rules: {
            firstName: {
                required: true,
                minlength: 3,
                lettersonly: true
            },
            lastName: {
                required: true,
                minlength: 3,
                lettersonly: true
            },
            studentEmail: {
                required: true,
                minlength: 3,
                email: true
            },
            studentGender: {
                required: true
            },
            dateOfBirth: {
                required: true
            },
            fatherName: {
                required: true,
                lettersonly: true
            },
            motherName: {
                required: true,
                lettersonly: true
            },
            parentsContact: {
                required: true,
                minlength: 10,
                maxlength: 10,
                digitssonly: true
            },
            studentContact: {
                required: true,
                minlength: 10,
                maxlength: 10,
                digitssonly: true
            },
            correspondenceAddress: {
                required: true
            },
            correspondenceCity: {
                required: true,
                lettersonly: true
            },
            correspondenceDistrict: {
                required: true,
                lettersonly: true
            },
            correspondenceState: {
                required: true
            },
            correspondencePinCode: {
                required: true,
                minlength: 6,
                maxlength: 6,
                digitssonly: true
            },
            permanentAddress: {
                required: true
            },
            permanentCity: {
                required: true,
                lettersonly: true
            },
            permanentDistrict: {
                required: true,
                lettersonly: true
            },
            permanentState: {
                required: true
            },
            permanentPinCode: {
                required: true,
                minlength: 6,
                maxlength: 6,
                digitssonly: true
            },
            xMarksheet: {
                required: true,
                filesize: 1048576
            },
            xiiMarksheet: {
                filesize: 1048576
            },
            diplomaMarksheet: {
                filesize: 1048576
            },
            xPercent: {
                required: true,
                maxlength: 2,
                digitssonly: true
            },
            xBoard: {
                required: true
            },
            xSchool: {
                required: true
            },
            xPassYear: {
                required: true,
                maxlength: 4,
                minlength: 4,
                digitssonly: true
            },
            xState: {
                required: true
            },
            xiiPercent: {
                required: false,
                maxlength: 2,
                digitssonly: true
            },
            xiiEnglish: {
                required: false,
                maxlength: 3,
                digitssonly: true
            },
            xiiBoard: {
                required: false
            },
            xiiSchool: {
                required: false
            },
            xiiPassYear: {
                required: false,
                maxlength: 4,
                minlength: 4,
                digitssonly: true
            },
            xiiState: {
                required: false
            },
            diplomaPercent: {
                maxlength: 2,
                digitssonly: true
            },
            diplomaPassYear: {
                digitssonly: true,
                maxlength: 4,
                minlength: 4
            }

        },
        messages: {

            firstName: {
                required: "This field is mandatory",
                minlength: "Please enter a valid name",
                lettersonly: "Only alphabets allowed"
            },
            lastName: {
                required: "This field is mandatory",
                minlength: "Please enter a valid name",
                lettersonly: "Only alphabets allowed"
            },
            email: {
                required: "This field is mandatory",
                minlength: "Please enter a valid email",
                email: "Please enter a valid email"
            },
            fatherName: {
                required: "This field is mandatory",
                lettersonly: "Only alphabets allowed"
            },
            motherName: {
                required: "This field is mandatory",
                lettersonly: "Only alphabets allowed"
            },
            parentsContact: {
                required: "This field is mandatory",
                minlength: "Please enter a valid phone",
                maxlength: "Please enter a valid phone",
                digitssonly: "Only digits allowed"
            },
            studentContact: {
                required: "This field is mandatory",
                minlength: "Please enter a valid phone",
                maxlength: "Please enter a valid phone",
                digitssonly: "Only digits allowed"
            },
            correspondenceAddress: {
                required: "This field is mandatory"
            },
            correspondenceCity: {
                required: "This field is mandatory",
                lettersonly: "Only alphabets allowed"
            },
            correspondenceDistrict: {
                required: "This field is mandatory",
                lettersonly: "Only alphabets allowed"
            },
            correspondenceState: {
                required: "This field is mandatory"
            },
            correspondencePinCode: {
                required: "This field is mandatory",
                minlength: "Please enter a valid pin",
                maxlength: "Please enter a valid pin",
                digitssonly: "Only digits allowed"
            },
            permanentAddress: {
                required: "This field is mandatory"
            },
            permanentCity: {
                required: "This field is mandatory",
                lettersonly: "Only alphabets allowed"
            },
            permanentDistrict: {
                required: "This field is mandatory",
                lettersonly: "Only alphabets allowed"
            },
            permanentState: {
                required: "This field is mandatory"
            },
            permanentPinCode: {
                required: "This field is mandatory",
                minlength: "Please enter a valid pin",
                maxlength: "Please enter a valid pin",
                digitssonly: "Only digits allowed"
            },
            xMarksheet: {
                required: "This field is mandatory",
                filesize: "Maximum file size is 1 MB"
            },
            xiiMarksheet: {
                filesize: "Maximum file size is 1 MB"
            },
            diplomaMarksheet: {
                filesize: "Maximum file size is 1 MB"
            },
            xPercent: {
                required: "This field is mandatory",
                maxlength: "Please enter valid percentage",
                digitssonly: "Only digits allowed"
            },
            xBoard: {
                required: "This field is mandatory"
            },
            xSchool: {
                required: "This field is mandatory"
            },
            xPassYear: {
                required: "This field is mandatory",
                maxlength: "Enter a valid year ",
                minlength: "Enter a valid year",
                digitssonly: "Only digits allowed"
            },
            xState: {
                required: "This field is mandatory"
            },
            xiiEnglish: {
                maxlength: "Please enter valid Marks",
                digitssonly: "Only digits allowed"
            },
            xiiPercent: {
                maxlength: "Please enter valid percentage",
                digitssonly: "Only digits allowed"
            },
            xiiPassYear: {
                maxlength: "Enter a valid year",
                minlength: "Enter a valid year",
                digitssonly: "Only digits allowed"
            },
            diplomaPercent: {
                maxlength: "Please enter valid percentage",
                digitssonly: "Only digits allowed"
            },
            diplomaPassYear: {
                digitssonly: "Only digits allowed",
                maxlength: "Enter a valid year",
                minlength: "Enter a valid year"
            },
            diplomaState: {
                lettersonly: "Only alphabets allowed"
            }

        },
        highlight: function (element) {
            $(element).parent().addClass('has-error');
        },
        unhighlight: function (element) {
            $(element).parent().removeClass('has-error');
        }
    });
    jQuery.validator.addMethod("lettersonly", function (value, element) {
        return this.optional(element) || /^[a-z\s]+$/i.test(value);
    }, $.validator.messages.lettersonly = 'only alphabets are allowed');
    
    jQuery.validator.addMethod("digitssonly", function (value, element) {
        return this.optional(element) || /^[0-9]+$/i.test(value);
    }, "Digits only please");
    
    jQuery.validator.addMethod("filesize", function (value, element, param) {
        return this.optional(element) ||(element.files[0].size <= param);
    }, 'File size must be less than 1 MB');


    
    $().ready(function () {
        $("input#addressCheckbox").bind("click", function () {
            if ($("input#addressCheckbox:checked").length) {
                $("#correspondenceAddress").val($("#permanentAddress").val());
                $("#correspondenceCity").val($("#permanentCity").val());
                $("#correspondenceDistrict").val($("#permanentDistrict").val());
                $("#correspondenceState").val($("#permanentState").val());
                $("#correspondencePinCode").val($("#permanentPinCode").val());
            } else {
                $("#correspondenceAddress").val("");
                $("#correspondenceCity").val("");
                $("#correspondenceDistrict").val("");
                $("#correspondenceState").val("");
                $("#correspondencePinCode").val("");
            }
        });
    });
    
    // Wizard Initialization
    $('.wizard-card').bootstrapWizard({
        'tabClass': 'nav nav-pills',
        'nextSelector': '.btn-next',
        'previousSelector': '.btn-previous',
        onNext: function (tab, navigation, index) {
            var $valid = $('.wizard-card form').valid();
            if (!$valid) {
                $validator.focusInvalid();
                return false;
            }
        },
        onInit: function (tab, navigation, index) {
            //check number of tabs and fill the entire row
            var $total = navigation.find('li').length;
            var $wizard = navigation.closest('.wizard-card');
            $first_li = navigation.find('li:first-child a').html();
            $moving_div = $('<div class="moving-tab">' + $first_li + '</div>');
            $('.wizard-card .wizard-navigation').append($moving_div);
            refreshAnimation($wizard, index);
            $('.moving-tab').css('transition', 'transform 0s');
        },
        onTabClick: function (tab, navigation, index) {
            var $valid = $('.wizard-card form').valid();
            if (!$valid) {
                return false;
            } else {
                return true;
            }
        },
        onTabShow: function (tab, navigation, index) {
            var $total = navigation.find('li').length;
            var $current = index + 1;
            var $wizard = navigation.closest('.wizard-card');
            // If it's the last tab then hide the last button and show the finish instead
            if ($current >= $total) {
                $($wizard).find('.btn-next').hide();
                $($wizard).find('.btn-finish').show();
            } else {
                $($wizard).find('.btn-next').show();
                $($wizard).find('.btn-finish').hide();
            }

            button_text = navigation.find('li:nth-child(' + $current + ') a').html();
            setTimeout(function () {
                $('.moving-tab').text(button_text);
            }, 150);
                    $('html,body').animate({
                    scrollTop: $(".wizard-header").offset().top},
                    'medium');
            
            refreshAnimation($wizard, index);
            
        }
    });
   
    // Prepare the preview for profile picture
    $("#xMarksheet").change(function () {
        readX(this);
    });
    $("#xiiMarksheet").change(function () {
        readXii(this);
    });
    $("#diplomaMarksheet").change(function () {
        readDiploma(this);
    });
    $('[data-toggle="wizard-radio"]').click(function () {
        wizard = $(this).closest('.wizard-card');
        wizard.find('[data-toggle="wizard-radio"]').removeClass('active');
        $(this).addClass('active');
        $(wizard).find('[type="radio"]').removeAttr('checked');
        $(this).find('[type="radio"]').attr('checked', 'true');
    });
    $('[data-toggle="wizard-checkbox"]').click(function () {
        if ($(this).hasClass('active')) {
            $(this).removeClass('active');
            $(this).find('[type="checkbox"]').removeAttr('checked');
        } else {
            $(this).addClass('active');
            $(this).find('[type="checkbox"]').attr('checked', 'true');
        }
    });
    $('.set-full-height').css('height', 'auto');
});
//Function to show image before upload

function readX() {
   var fileInput = document.getElementById('xMarksheet');
    var filePath = fileInput.value;
    var allowedExtensions = /(\.jpg|\.jpeg)$/i;
    if(!allowedExtensions.exec(filePath)){
        alert('Please upload file having extensions .jpeg only.');
        fileInput.value = '';
        return false;
    }else{
        //Image preview
        if (fileInput.files && fileInput.files[0]) {
            var reader = new FileReader();
            reader.onload = function(e) {
                $('#xMarksheetPreview').attr('src', e.target.result).fadeIn('slow');
            },
            reader.readAsDataURL(fileInput.files[0]);
        }
    }

}
function readXii() {
var fileInput = document.getElementById('xiiMarksheet');
    var filePath = fileInput.value;
    var allowedExtensions = /(\.jpg|\.jpeg)$/i;
    if(!allowedExtensions.exec(filePath)){
        alert('Please upload file having extensions .jpeg only.');
        fileInput.value = '';
        return false;
    }else{
        //Image preview
        if (fileInput.files && fileInput.files[0]) {
            var reader = new FileReader();
            reader.onload = function(e) {
                $('#xiiMarksheetPreview').attr('src', e.target.result).fadeIn('slow');
            },
            reader.readAsDataURL(fileInput.files[0]);
        }
    }
}
function readDiploma() {
var fileInput = document.getElementById('diplomaMarksheet');
    var filePath = fileInput.value;
    var allowedExtensions = /(\.jpg|\.jpeg)$/i;
    if(!allowedExtensions.exec(filePath)){
        alert('Please upload file having extensions .jpeg only.');
        fileInput.value = '';
        return false;
    }else{
        //Image preview
        if (fileInput.files && fileInput.files[0]) {
            var reader = new FileReader();
            reader.onload = function(e) {
                $('#diplomaMarksheetPreview').attr('src', e.target.result).fadeIn('slow');
            },
            reader.readAsDataURL(fileInput.files[0]);
        }
    }
}

$(window).resize(function () {
    $('.wizard-card').each(function () {
        $wizard = $(this);
        index = $wizard.bootstrapWizard('currentIndex');
        refreshAnimation($wizard, index);
        $('.moving-tab').css({
            'transition': 'transform 0s'
        });
    });
});
function refreshAnimation($wizard, index) {
    $total = $wizard.find('.nav li').length;
    $li_width = 100 / $total;
    total_steps = $wizard.find('.nav li').length;
    move_distance = $wizard.width() / total_steps;
    index_temp = index;
    vertical_level = 0;
    mobile_device = $(document).width() < 600 && $total > 3;
    if (mobile_device) {
        move_distance = $wizard.width() / 2;
        index_temp = index % 2;
        $li_width = 50;
    }

    $wizard.find('.nav li').css('width', $li_width + '%');
    step_width = move_distance;
    move_distance = move_distance * index_temp;
    $current = index + 1;
    if ($current == 1 || (mobile_device == true && (index % 2 == 0))) {
        move_distance -= 8;
    } else if ($current == total_steps || (mobile_device == true && (index % 2 == 1))) {
        move_distance += 8;
    }

    if (mobile_device) {
        vertical_level = parseInt(index / 2);
        vertical_level = vertical_level * 38;
    }

    $wizard.find('.moving-tab').css('width', step_width);
    $('.moving-tab').css({
        'transform': 'translate3d(' + move_distance + 'px, ' + vertical_level + 'px, 0)',
        'transition': 'all 0.6s cubic-bezier(0.29, 1.42, 0.79, 1)'

    });
}

materialDesign = {

    checkScrollForTransparentNavbar: debounce(function () {
        if ($(document).scrollTop() > 260) {
            if (transparent) {
                transparent = false;
                $('.navbar-color-on-scroll').removeClass('navbar-transparent');
            }
        } else {
            if (!transparent) {
                transparent = true;
                $('.navbar-color-on-scroll').addClass('navbar-transparent');
            }
        }
    }, 17)

};
function debounce(func, wait, immediate) {
    var timeout;
    return function () {
        var context = this, args = arguments;
        clearTimeout(timeout);
        timeout = setTimeout(function () {
            timeout = null;
            if (!immediate)
                func.apply(context, args);
        }, wait);
        if (immediate && !timeout)
            func.apply(context, args);
    };
}
;

