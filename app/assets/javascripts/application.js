// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require jquery
//= require popper.js/dist/umd/popper
//= require bootstrap/dist/js/bootstrap
//= require leaflet.js
//= require leaflet_awesome_number_markers.js
//= require leaflet.markercluster/dist/leaflet.markercluster
//= require_tree .
// Icons
var materialIcons = {
    SONSTIGES: "add",
    NORMALSTATION: "add_circle_outline",
    INTENSIVSTATION: "hotel",
    NOTAUFNAHME: "add_location",
    EGAL: "check_circle_outline",
    ALLE: "check_circle_outline",
    '5-6': "filter_5",
    '3-4': "filter_3",
    '1-2': 'filter_1',
    KRANKENHAUS: "apartment",
    PFLEGER: "home_work",
    MAXIMALVERSORGER: "apartment",
    PFLEGE_AMB: "home"
};

var fontawesomeIcons = {
    PFLEGEHILFSKRAFT: "fas fa-user-plus",
    ARZT: "fas fa-user-md",
    PFLEGER_AUSBILDUNG: "fas fa-user-edit",
    STUDENT: "fas fa-user-graduate",
    FRÜH: "fas fa-sun",
    SPÄT: "fas fa-cloud-sun",
    NACHT: "fas fa-cloud-moon",
    UNBEGRENZT: "fas fa-calendar-check",
    PAAR_WOCHEN: "fas fa-calendar-week",
    EINIGE_MONATE: "fas fa-calendar-alt",
    FACHPFLEGEKRAFT: "fas fa-syringe",
    NICHT_BESCHÄFTIGT: "fas fa-user-plus",
    AUßERHALB: "fas fa-user",
    PERIPHERES_KRANKENHAUS: "fas fa-hospital",
    PRAXIS: "far fa-hospital",
    PFLEGE_STAT: "fas fa-hotel",
};

function nextStep() {
    setStep(window.currentStep + 1);
}

function prevStep() {
    setStep(window.currentStep - 1);
}

function addRadioCards() {
    $('.form-group.radio-cards label:not(:has(>div.radio-card))').each(function() {
        $(this).wrapInner("<div class='radio-card'></div>");
        var value = $(this).prev().val();
        if (Object.keys(materialIcons).includes(value)) {
            $(this).find('.radio-card').prepend(`<i class="material-icons">${materialIcons[value]}</i>`);
        }
        if (Object.keys(fontawesomeIcons).includes(value)) {
            $(this).find('.radio-card').prepend(`<i class="${fontawesomeIcons[value]}"></i>`);
        }
    })
}

function setStep(step) {
    window.currentStep = step;
    const stepName = window.steps[window.currentStep];
    $(".form-group.step").css('display', 'none');
    $(`.form-group.step.helper_${stepName}, .form-group.step.hospital_${stepName}`).css('display', 'block');
    validateForm();
}

// Prevents form submission on enter
$(document).ready(function() {
    $(window).keydown(function(event){
      if(event.keyCode == 13) {
        event.preventDefault();
        return false;
      }
    });
  });

function contactFormValid() {
    const contact = $('.helper_contact');
    var valid = true;
    contact.find('input[type=text], input[type=email], input[type=tel]').each(function() {
        if (!$(this).val()) {
            valid = false;
            return false; // break
        }
    });
    return valid;
}

function validateForm() {
    const stepName = window.steps[window.currentStep];
    const forms = $('.new_helper, .new_hospital');

    // Buttons, default show all except submit
    forms.find('.btn').css('display', 'inline-block');
    forms.find('.new-helper-submit').css('display', 'none');

    // First step
    if (window.currentStep == 0) {
        forms.find('.new-helper-prev').css('display', 'none');
    }

    // Last step
    if (window.currentStep == window.steps.length - 1) {
        forms.find('.new-helper-next').css('display', 'none');
        forms.find('.new-helper-submit').css('display', 'inline-block');
        forms.find('.new-helper-submit').prop('disabled', !contactFormValid());
    }

    // Disable "next" based on form
    let formValid = $(`.helper_${stepName} input, .hospital_${stepName} input`).is(':checked');

    if (stepName == "start_date") {
        formValid = true;
    } else if (stepName == "city") {
        formValid = !!$("#helper_city, #hospital_city").val();
    } else if (stepName == "helper_amount") {
        formValid = $("#hospital_helper_amount").val() > 0;
    }

    forms.find('.new-helper-next').prop('disabled', !formValid);
}