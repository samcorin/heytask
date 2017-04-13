// MAP

// $(document).ready(function() {
//   var doc = document,
//   win = window,
//   body = doc.body;

//   var map = L.map('map').setView([51.505, -0.09], 13);

//   L.tileLayer('https://api.tiles.mapbox.com/v4/{id}/{z}/{x}/{y}.png?access_token=pk.eyJ1IjoibWFwYm94IiwiYSI6ImNpandmbXliNDBjZWd2M2x6bDk3c2ZtOTkifQ._QA7i5Mpkd_m30IGElHziw', {
//     maxZoom: 18,
//     attribution: '',
//     id: 'mapbox.streets'
//   }).addTo(map);

//   var popup = L.popup();

//   var coords = [];
//   var markers = [];

//   var items = doc.getElementsByClassName('items__item');

//   setMap();

//   function setMap(){
//     for (var i = 0; i < items.length; i++) {
//       (function(i){
//         var icon = L.divIcon({className: 'map__icon', html: '<span>'+items[i].getElementsByTagName('h3')[0].textContent+'</span>'});

//         coords[i] = [items[i].getAttribute('data-lat'), items[i].getAttribute('data-lon')];
//         markers[i] = L.marker(coords[i], {icon: icon}).addTo(map);

//         markers[i].on('click', function(e){
//           onMapClick(e, i);
//         });
//         items[i].setAttribute('data-id', i);
//         items[i].addEventListener('click', onItemClick, true);
//       })(i);
//     }

//     map.fitBounds(coords);
//   }

//   function onMapClick(e, i) {
//     var item = items[i];

//     removeSelected();

//     win.scrollTo(0, item.offsetTop);
//     item.classList.add('is-selected');
//     map.panTo(e.latlng);
//     popup.setLatLng(e.latlng);
//     popup.setContent('<div class="popup">'+item.innerHTML+'</div>');
//     popup.openOn(map);
//   }

//   function onItemClick(e) {
//     var el = e.target;
//     while (el && el.tagName !== 'LI') {
//       el = el.parentNode;
//     }
//     removeSelected();
//     el.classList.add('is-selected');
//     map.panTo(coords[el.getAttribute('data-id')]);
//   }

//   function removeSelected(){
//     var selected = doc.getElementsByClassName('is-selected')[0];
//     if (!selected) return false;
//     selected.classList.remove('is-selected');
//   }
// });
