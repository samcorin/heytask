var URL = "https://maps.googleapis.com/maps/api/geocode/json?address="
var searchType = "restaurant";

// Adds updated marker to map
function addLocation(location){
  var myLatlng = new google.maps.LatLng(location.lat, location.lng);
  var mapOptions = {
    zoom: 18,
    center: myLatlng
  }
  // Not sure this is the best way, creating a new map every time, instead of just re-positioning the marker
  var map = new google.maps.Map(document.getElementById("map"), mapOptions);

  var marker = new google.maps.Marker({
      position: myLatlng,
      title:"Hello World!"
  });
  marker.setMap(map);

  // Click events
  map.addListener('center_changed', function() {
    // 3 seconds after the center of the map has changed, pan back to the
    // marker.
    window.setTimeout(function() {
      map.panTo(marker.getPosition());
    }, 3000);
  });

  marker.addListener('click', function() {
    map.setZoom(8);
    map.setCenter(marker.getPosition());
  });

  // var request = {
  //   location: myLatlng,
  //   radius: '100',
  //   types: ['store']
  // };

  // service = new google.maps.places.PlacesService(map);
  // service.nearbySearch(request, callback);
 var service = new google.maps.places.PlacesService(map);
  service.nearbySearch({
    location: myLatlng,
    radius: 200,
    type: [searchType]
  }, processResults);

}

function processResults(results, status, pagination) {
  if (status !== google.maps.places.PlacesServiceStatus.OK) {
    return;
  } else {
    createMarkers(results);

    if (pagination.hasNextPage) {
      var moreButton = document.getElementById('more');

      moreButton.disabled = false;

      moreButton.addEventListener('click', function() {
        moreButton.disabled = true;
        pagination.nextPage();
      });
    }
  }
}





// CreateMarker

function createMarkers(places) {
  var bounds = new google.maps.LatLngBounds();
  var placesList = document.getElementById('places');

  var myLatlng = new google.maps.LatLng(location.lat, location.lng);
  var mapOptions = {
    zoom: 16,
    center: myLatlng
  }

  var map = new google.maps.Map(document.getElementById("map"), mapOptions);

  for (var i = 0, place; place = places[i]; i++) {
    var image = {
      url: place.icon,
      size: new google.maps.Size(71, 71),
      origin: new google.maps.Point(0, 0),
      anchor: new google.maps.Point(17, 34),
      scaledSize: new google.maps.Size(25, 25)
    };

    var marker = new google.maps.Marker({
      map: map,
      icon: image,
      title: place.name,
      position: place.geometry.location
    });

    // Makes a list in HTML
    // placesList.innerHTML += '<li>' + place.name + '</li>';

    bounds.extend(place.geometry.location);
  }
  map.fitBounds(bounds);
}

// Callback
function callback(results, status) {
  if (status == google.maps.places.PlacesServiceStatus.OK) {
    for (var i = 0; i < results.length; i++) {
      var place = results[i];
      createMarkers(results[i]);
    }
  }
}


$(document).ready(function() {
  // restaurants
  //
  //cafe
  $('#place-type').change(function() {
    searchType = $('#place-type').val();
  })
  $('#fetch, #address').on('click keypress', function(e) {
    var address = $('#address').val();

    if(e.type == "click" || e.charCode == 13) {
      $.ajax({
        type: "GET",
        url: URL + address,
        success: function(data) {
          var lat = data.results[0].geometry.location.lat;
          var lng = data.results[0].geometry.location.lng;

          // console.log("Latitude: " + lat);
          // console.log("Longitude: " + lng);

          var location = {lat: lat, lng: lng };
          addLocation(location);
        },
        error: function(jqXHR) {
          console.log(jqXHR.responseText)
        }
      });
    }
  });
})
