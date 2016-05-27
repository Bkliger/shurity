$(function(){
  $("#save_answers").click(function( event ) {
    alert($('#Stereo > input:radio[name=options]:checked').val());
    // alert($("#testRadio input[name=options]:checked").val());

    // if ($("#option2").is(":checked")) {
    //       alert("option2 checked");
    //    }
    //  else {
    //       alert("option2 not checked");
    //    }
    event.preventDefault();
  });
});
