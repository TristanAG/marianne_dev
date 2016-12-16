//$( document ).on('turbolinks:load', function() {
$( document ).ready( function() {
  var xPos = 683
  var yPos = 350

  var length = $(window).scrollTop()
  var width = $(window).width()

  var setState = function() {
    if(width >= 810){
      $('#nav-mobile').hide()
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
      $('#nav-mobile').show()
    }
  }

  //handle browser refresh + initial dom state
  setState()

  $( window ).scroll(function (event) {
    length = $(window).scrollTop()
    setState()
  })

  $( window ).resize(function() {
    width = $(window).width()
    setState()
  })

});
