$(function(){

  // alert("executing")

    $('#slider').slider(
    {
    ticks: [0, 100, 200, 300, 400],
     ticks_positions: [0, 20, 40, 60, 80, 100],
    ticks_labels: ['$0', '$100', '$200', '$300', '$400'],
    ticks_snap_bounds: 30
    });

    $("#save-answers").click(function( event ) {


      $('#slider_id').val($('#slider').slider('getValue'))
      // event.preventDefault();
    });
});
