$(document).on('ready', function() {

  $('.button_to').on("submit", function(e){
    e.preventDefault();
    $.ajax({
      url: $(this).attr('action'),
      method: 'get',
    }).done(function(data){
      $('.button_to').hide();
      $('#map_form').prepend(data);
    })
  })

  $('#map_form').on("submit", "#new_map", function(e){
    e.preventDefault();

    navigator.geolocation.getCurrentPosition(function(geo){
      var location = {
        lat: geo.coords.latitude,
        lng: geo.coords.longitude
      }

      var path = $(this).attr('action');
      var mapTitle = $("#map_artist").val();
      var mapCenterLat = location.lat
      var mapCenterLong = location.lng

      // send user location and artist name to route to create new map, new markers
      $.ajax({
        url: path,
        method: "post",
        data: {map: {center_lat: mapCenterLat, center_lng: mapCenterLong, artist: mapTitle}},
        dataType: "html"
      }).done(function(data){
      // add new band link to profile page
      $(".maps-list").prepend(data)
      })
    }) //end get position
  });

// Google maps API

  // types of mapTypeId
  var roadMap = google.maps.MapTypeId.ROADMAP;
  var satelliteMap = google.maps.MapTypeId.SATELLITE;
  var hybridMap = google.maps.MapTypeId.HYBRID;
  var terrainMap = google.maps.MapTypeId.TERRAIN;

  var path = $(".view-map-link").attr("href");
  $.ajax({
    url: path,
    method: 'get',
    dataType: 'json'
  }).done(function(data){
    var artistTitle = data.artist
    var mapCenter = {lat: data.center_lat, lng: data.center_lng}
    var locations = data.locations

    var map = new google.maps.Map(document.getElementById('map'), {
      center: mapCenter,
      zoom: 5,
      mapTypeId: roadMap
    });

    for (var i = 0; i < locations.length; i++) {
      var lat = locations[i][0];
      var lng = locations[i][1];

      var marker = new google.maps.Marker({
        position: {lat: lat, lng: lng},
        map: map,
        title: 'Hello World!'
      });
    }
  });

});