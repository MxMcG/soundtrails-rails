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
  });
    // send user location and artist name to route to create new map, new markers
  //   $.ajax({
  //     url: path,
  //     method: "post",
  //     data: {map: {center_lat: mapCenterLat, center_lng: mapCenterLong, artist: mapTitle}},
  //     dataType: "html"
  //   }).done(function(data){
  //   // Upon creation of map, display on profile page
  //     console.log(data)
  //     $(".map-view").prepend(data)
  //   })
  // })

// Generate default map background

  navigator.geolocation.getCurrentPosition(function(geo){

    var location = {
      lat: geo.coords.latitude,
      lng: geo.coords.longitude
    }
    var path = $(this).attr('action');
    var mapTitle = $("#map_artist").val();
    var mapCenterLat = location.lat
    var mapCenterLong = location.lng

    var map = new google.maps.Map(document.getElementById('map'), {
      center: {lat: location.lat, lng: location.lng },
      zoom: 5
    });

// Add markers to map upon creation

    $(".create-map-form").on("submit", function (event) {
      event.preventDefault();
      var artistName = $("input#map_artist").val(),
          path = $(this).attr('action')

      $.ajax({
        url: path,
        method: "post",
        dataType: "json",
        data: {artist: artistName, center_lat: location.lat, center_lng: location.lng}
      }).done(function(data){
        console.log(data);
      });

    });
  });

});
