$( document ).on('turbolinks:load', function() {
  //init state
      var visible = false
            $( '#mobile-menu' ).hide();
  //menu button triggers visibility state
    $( '#menu-button' ).click(function () {
      if( !visible){
          visible = true
            $( '#mobile-menu' ).slideDown( 'slow' );
      } else {
          visible = false
            $( '#mobile-menu' ).slideUp( 'slow' );
      }
    })

})
