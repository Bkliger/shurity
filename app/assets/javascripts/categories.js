$('#select').on('change', function(e) {
  var new_val = $('#select').val();
  $('a').attr('href', '/categories/' + $('submit').val() + '/users/new/');
console.log(new_val);
});
