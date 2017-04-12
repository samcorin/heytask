var autocomplete;
function initAutocomplete() {
  autocomplete = new google.maps.places.Autocomplete(
    (document.getElementById('service_address')), {types: ['geocode']});
}

function geolocate() {
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(function(position) {
      var geolocation = {
        lat: position.coords.latitude,
        lng: position.coords.longitude
      };
      var circle = new google.maps.Circle({
        center: geolocation,
        radius: position.coords.accuracy
      });
      autocomplete.setBounds(circle.getBounds());
    });
  }
}

$('#service_address').on('focusin', function() {
  initAutocomplete();
})

// TODO - form valudation for new service

// disable enter for submit, instead next focus
$(".form-control").on('keydown', function(e) {
  if (e.which == 13 && $(this)[0].id == 'service_price' ) {
    console.log("GOOD")
  } else if (e.which == 13) {
    e.preventDefault();
    var index = $('.form-control').index(document.activeElement) + 1;
    $('.form-control').eq(index).focus();
  }
});



$('#service_address').on('focusout', function() {
  setTimeout(function() {
    console.log($('#service_address').val());
  }, 200);
})
