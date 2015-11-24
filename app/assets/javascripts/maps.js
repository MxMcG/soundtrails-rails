$(document).ready( function() {

  // Display new map form
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

  // Create a new map
  $('#map_form').on("submit", "#new_map", function(e){
    e.preventDefault();

    navigator.geolocation.getCurrentPosition(function(geo){
      var location = {
        lat: geo.coords.latitude,
        lng: geo.coords.longitude
      }

      var path = $(this).attr('action');
      console.log(path)
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
      // Upon creation of map, display on profile page
        $(".map-view").prepend(data)
      })
    })
  });

  $('')

  $('')


});
