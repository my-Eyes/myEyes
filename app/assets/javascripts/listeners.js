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


    // debugger

    // $.ajax({
    //   url: path,
    //   type: 'post',
    //   data: {},
    //   success: function(){

    //   }

    //   })


  })
}

var location_submit_listener = function(){
  $('body').on('submit', '.location_submit_form', function(e){
    e.preventDefault()
    console.log('in location submit listener')
  })
}
