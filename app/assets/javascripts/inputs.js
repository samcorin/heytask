$('#input-16').on('focusout', function() {
  if ($('#input-16')[0].value != '') {
    $('#input-16').css("background-color", "white");
  } else {
    $('#input-16').css("background-color", "transparent");
  }
})

$('#input-35').on('focusout', function() {
if ($('#input-35')[0].value != '') {
  $('#input-35').css("transform", "translate3d(100%, 0, 0)");
  $('.input__label-content--kaede').css("text-align", "right");
} else {
}
})
