//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require bootstrap-slider
//= require_tree .


$(document).ready(function() {

  var lastentry = "";

  $('#test-text').keyup(function(event) {
     if($('#test-text').val() != lastentry) {
       console.log("last Entry", lastentry)
      //  $.get('/api/me', function getUserData(user) {
            $.ajax({
                method: "GET",
                data: {catString: $('#test-text').val()},
                url: "categories/get_categories",
                success: updateUserSuccess,
                error: updateUserError
            });
        // });

     }
     lastentry = $('#test-text').val()

  });
  function updateUserSuccess(json) {
    // console.log(json)
  }
  function updateUserError(json) {
    // console.log("AJAX request failed")
  }


});
