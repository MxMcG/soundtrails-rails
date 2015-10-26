// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).on('page:load', function() {


// login & registration buttons


//   var showLoginForm = function(){
//     $('button:first-child a').on('click', function(e){
//       e.preventDefault();

//       var path = $(this).attr('href');

//       $.ajax({
//         url: path,
//         method: 'get',
//         dataType: 'html'
//       })
//       .done(function(response){
//         console.log(response);
//         $('#register-login-wrapper').children().hide();
//         $('#register-login-wrapper').append(response);
//       })
//     })
//   };

//   var showSignupForm = function(){
//     $('button:nth-child(2) a').on('click', function(e){
//       e.preventDefault();
//       var path = $(this).attr('href');

//       $.ajax({
//         url: path,
//         method: 'get',
//         dataType: 'html'
//       })
//       .done(function(response){
//         $('#register-login-wrapper').children().hide();
//         $('#register-login-wrapper').append(response);
//       })
//     })
//   };

// // create a map form

//   var showMapForm = function(){
//     $('#create-map-btn').on("click", function(e){
//       e.preventDefault();
//       var path = $(this).attr('href');
//       $.ajax({
//         url: path,
//         method: 'get'
//       }).done(function(response){
//         $(".create-map-wrapper form").remove()
//         $(".create-map-wrapper").append(response);
//       })
//     })
//   };

//   showLoginForm();
//   showSignupForm();
//   showMapForm();

// Google maps API

  // types of mapTypeId
  var roadMap = google.maps.MapTypeId.ROADMAP
  var satelliteMap = google.maps.MapTypeId.SATELLITE
  var hybridMap = google.maps.MapTypeId.HYBRID
  var terrainMap = google.maps.MapTypeId.TERRAIN
  //

  var createMap = function(center, zoom, mapTypeId, tour_stop_location, title){
    var map = new google.maps.Map(document.getElementById('map'), {
      center: center,
      zoom: zoom,
      mapTypeId: mapTypeId
    });
    var marker = new google.maps.Marker({
      position: tour_stop_location,
      map: map,
      title: title
    });
  }

  // load map for view page

    var path = $(".view-map-link").attr("href");

    $.ajax({
      url: path,
      method: 'get',
      dataType: 'json'
    }).done(function(data){

      var artistTitle = data.artist
      var mapCenter = {lat: data.center_lat, lng: data.center_lng}
      createMap(mapCenter, 4, roadMap, mapCenter, artistTitle)
    })



  // determining center of map
  $('.create_map_form').on("submit", "form" ,function(e){
      e.preventDefault();

      $(".new_map_wrapper").prepend("<p>creating map...</p>");
      $("#new_map").hide();

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
      data: {map_lat: mapCenterLat, map_lng: mapCenterLong, map_title: mapTitle},
      dataType: "html"
    }).done(function(data){
    // add new band link to profile page
      $('.new_map_wrapper').prepend(data);
    })

      $('.new_map_wrapper p').html("map created. thank you!")

    }) //end getposition

  }) //end get coordinates and artist

});