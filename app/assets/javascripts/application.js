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
//= require bootstrap-slider

//= require_tree .

$(document).ready(function() {
// $(document).on("page:load", function(){

  // alert("executing")
    $('#slider').slider(
    {
    ticks: [0, 100, 200, 300, 400, 500],
     ticks_positions: [0, 20, 40, 60, 80, 100],
    ticks_labels: ['$0', '$100', '$200', '$300', '$400', '$500'],
    ticks_snap_bounds: 30,
    provide: "slider"
    });


    var sliderVal = $('#slider_id').val()
    $('#slider').slider('setValue',parseInt(sliderVal))
    // $('#slider_id').val($('#slider').slider('getValue'));

    $("#save-answers").click(function( event ) {


      $('#slider_id').val($('#slider').slider('getValue'));
      // event.preventDefault();
    });
    $("#update-answers").click(function( event ) {

      console.log($('#slider').slider('getValue'))
      $('#slider_id').val($('#slider').slider('getValue'));
      console.log($('#slider_id').val())
      // event.preventDefault();
    });

    $('.reg-slider-input').each(function() {

      $(this).val($(this).data("slider-answer"))
      $(this).data("value",$(this).data("slider-answer"))
      // console.log($(this).val())
        // console.log($(this).data("value"))
      // this.data-value(data-slider-answer)
      // console.log($(this).data("slider-answer"))

    })


});
