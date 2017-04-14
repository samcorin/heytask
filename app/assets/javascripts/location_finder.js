function getGeoLocation() {
  navigator.geolocation.getCurrentPosition(setGeoCookie);
}

function setGeoCookie(position) {
  // var cookie_val = position.coords.latitude + "|" + position.coords.longitude;
  // var cookie_val = {lat: position.coords.latitude, lng: position.coords.longitude};
  // console.log("lat_lng=" + escape(cookie_val));
  // console.log(cookie_val.split("|"));
  // console.log(cookie_val)
  document.cookie = [position.coords.latitude, position.coords.longitude];
}

// function findme() {
//   if (navigator.geolocation) {
//     console.log("yes geo")
//     function success(position) {
//       console.log("success")
//       var latitude  = position.coords.latitude;
//       var longitude = position.coords.longitude;
//       console.log(latitude, longitude)
//     }

//     function error() {
//       console.log("There was an error.")
//     }

//     navigator.geolocation.getCurrentPosition(success, error);
//   }
// }
// // findme();


