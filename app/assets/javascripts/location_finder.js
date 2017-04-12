function findme() {
  if (navigator.geolocation) {
    console.log("yes geo")
    function success(position) {
      console.log("success")
      var latitude  = position.coords.latitude;
      var longitude = position.coords.longitude;
      console.log(latitude, longitude)
    }

    function error() {
      console.log("There was an error.")
    }

    navigator.geolocation.getCurrentPosition(success, error);
  }
}
// findme();
