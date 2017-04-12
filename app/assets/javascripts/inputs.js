$('#input-16').on('focusout', function() {
  if ($('#input-16')[0].value != '') {
    $('#input-16').css("background-color", "white");
  } else {
    $('#input-16').css("background-color", "transparent");
  }
})
