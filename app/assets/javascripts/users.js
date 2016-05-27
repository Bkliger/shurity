$(function(){
  $("#save_answers").click(function( event ) {
    alert($('#Stereo > input:radio[name=options]:checked').val());
    event.preventDefault();
  });

  $('#slider').slider({
  animate: "fast"});

});
