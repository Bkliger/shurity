// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require bootstrap-slider
//= require_tree .


// turbo_links was removed because of a problem loading the page - it wouldn't load the sliders


$(document).ready(function() {

    $('#slider').slider(
    {
    ticks: [0, 100, 200, 300, 400, 500],
     ticks_positions: [0, 20, 40, 60, 80, 100],
    ticks_labels: ['$0', '$100', '$200', '$300', '$400', '$500'],
    ticks_snap_bounds: 30,
    provide: "slider"
    });

// this sets the value of the budget slider when the app returns for edit
    var sliderVal = $('#slider_id').val();
    $('#slider').slider('setValue',parseInt(sliderVal));

//on the new answer page, we need to get the value of the budget slider and put it into the input element to accumulate it for the fields_for
    $("#save-answers").click(function( event ) {
      $('#slider_id').val($('#slider').slider('getValue'));
    });

//this does the same thing for the edit page
    $("#update-answers").click(function( event ) {
      $('#slider_id').val($('#slider').slider('getValue'));
      // event.preventDefault();
    });

//for a regular slider, this moves the value of each slider into the input element
    $('.reg-slider-input').each(function() {
      $(this).val($(this).data("slider-answer"));
      $(this).data("value",$(this).data("slider-answer"));
    });

    //on the new answer page, we need to get the value of the budget slider and put it into the input element to accumulate it for the fields_for

// on the retailer page, this disables the buy button
        $(".ignore").click(function( event ) {
          alert("Function Not Yet Implementated")
          event.preventDefault();
        });
});
