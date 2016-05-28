$(function(){
  $("#save_answers").click(function( event ) {
      var category = $("#cat_questions").data("category");
    $( ".question" ).each(function() {
      if (this.id === "radio"){
        alert($('#radio > input:radio[name=options]:checked').val());
        alert($(this).data("text"));
        alert($(this).data("id"));
      }
      else {
        alert($('#slider').slider('getValue'));
      }
});
    $('#Stereo > input:radio[name=options]:checked').val();
    $('#slider').slider('getValue');
// $('input[id="sliderDivId"]').slider('getValue')
    // .slider('getValue')
    event.preventDefault();
  });

  $("#slider").slider(
    {
    ticks: [0, 100, 200, 300, 400],
    ticks_labels: ['$0', '$100', '$200', '$300', '$400'],
    ticks_snap_bounds: 30
  });


});
