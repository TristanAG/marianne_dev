$( document ).on('turbolinks:load', function() {

  $('#nav-fixed').hide()

  var setState = function() {
    if(width > 1000){
      if(length > yPos && width > xPos){
        //use the fixed sidebar state
        $('#nav-unfixed').hide()
        $('#nav-fixed').show()
      } else {
        //use the fluid sidebar state
        $('#nav-unfixed').show()
        $('#nav-fixed').hide()
      }
    } else {
      $('#nav-unfixed').hide()
      $('#nav-fixed').hide()
    }

  }

  var xPos = 683
  var yPos = 300

  var length = $(window).scrollTop()
  var width = $(window).width()


  $( window ).scroll(function (event) {
    length = $(window).scrollTop()
    setState()
  })

  $( window ).resize(function() {
    width = $(window).width()
    setState()
  })


});
