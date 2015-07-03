$(document).on('page:change', function(){
  bindListeners();
})

var bindListeners = function(){
  photo_url_listener()
  location_submit_listener()
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
    e.preventDefault()
    console.log('in location submit listener')
    var path = $(this).attr('action')
    var data = $(this).serialize()

    $.ajax ({
      url: path,
      type: 'post',
      data: data,
      success: function(data){
        console.log(data)
      }

    })
  })
}
