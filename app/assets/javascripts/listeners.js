$(document).on('page:change', function(){
  bindListeners();
})

var bindListeners = function(){
  photo_url_listener()
  location_submit_listener()
  markers_listener()
}

var photo_url_listener = function(){
  $('body').on('submit', '.photo_url', function(e){
    e.preventDefault();
    console.log('in submit new photo listener')
    var path = $(this).attr('action')
    var photoURL = $(this).children('.photo_url_input_field').val()
    var that = this


    //debugger

    $.ajax({
      url: path,
      type: 'post',
      data: { photoAddress:photoURL},
      success: function(data){
        console.log(data)

        if (!data.saved){
          // append to DOM some sort of message that the photo params didn't validate
        }
        else {
          $('body .displayed_photo').attr("src", data.address)



        }
      }
      })
  })
}

var location_submit_listener = function(){
  $('body').on('submit', '.location_submit_form', function(e){
    e.preventDefault();
    console.log('in location submit listener');
    var path = $(this).attr('action');
    var data = $(this).serialize();

    $.ajax ({
      url: path,
      type: 'post',
      data: data,
      success: function(data){
        console.log(data);
      }
    })
  })
}

var markers_listener = function(){
  var geocoder;
  geocoder = new google.maps.Geocoder();
  $('body').on('submit', '.location_submit_form', function(e){
    e.preventDefault();
    var name = document.getElementById('name').value;
    var waypoints = $("#waypoints");
    var address = document.getElementById('address').value + ' ' + document.getElementById('city').value + ' ' + document.getElementById('state').value;
    console.log(address);
    add_step(address, name, waypoints);
    geocoder.geocode( { 'address': address}, function(results, status) {
      if (status == google.maps.GeocoderStatus.OK) {
        map.setCenter(results[0].geometry.location);
        var marker = new google.maps.Marker({
            map: map,
            position: results[0].geometry.location
        });
      } else {
        alert('Geocode was not successful for the following reason: ' + status);
      }
    });
  })
}

var add_step = function(address, name, waypoints){
  var option = '<option value="' + address +'">' + name + '</option>';
  console.log(waypoints);
  waypoints.append(option);

}