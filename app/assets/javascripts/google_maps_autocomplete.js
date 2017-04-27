$(document).ready(function() {
  var bartender_address = $('#bartender_address').get(0);

  if (bartender_address) {
    var autocomplete = new google.maps.places.Autocomplete(bartender_address, { types: ['geocode'] });
    google.maps.event.addListener(autocomplete, 'place_changed', onPlaceChanged);
    google.maps.event.addDomListener(bartender_address, 'keydown', function(e) {
      if (e.keyCode == 13) {
        e.preventDefault(); // Do not submit the form on Enter.
      }
    });
  }
});

