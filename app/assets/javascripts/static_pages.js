$(document).ready(function() {
  $(document).on("ajax:success", "#sign_up_user", function(e, data, status, xhr) {
    if (data.success) {
      window.location.href = Routes.orders_path();
    } else {
      var message = Object.keys(data.message);
      for (key in message){
        for (var i = 0; i < data.message[message[key]].length; i++) {
          noty({
            text: message[key] + " " + data.message[message[key]][i],
            animation: {
                open: {height: 'toggle'}, // jQuery animate function property object
                close: {height: 'toggle'}, // jQuery animate function property object
                easing: 'swing', // easing
                speed: 500 // opening & closing animation speed
            }
          });
        }
      }
    }
  });
  $(document).on("ajax:success", "#sign_in_user", function(e, data, status, xhr) {
    console.log(data)
    if (data.success) {
      window.location.href = Routes.user_pages_path();
    } else {
      noty({
        text: "Log in failed. Please try again",
        animation: {
            open: {height: 'toggle'}, // jQuery animate function property object
            close: {height: 'toggle'}, // jQuery animate function property object
            easing: 'swing', // easing
            speed: 500 // opening & closing animation speed
        }
      });
    }
  });
  $(document).on('click', "#pickup-btn", function(){
    $("#pickup-btn").addClass('hide');
    $("#sign-in-form-div").removeClass('hide');
    $("#sign-up-form-div").addClass('hide');
    $("#box-1").addClass("hide");
  });
  $(document).on('click', "#nav-btn-gt", function(){
    $("#pickup-btn").addClass('hide');
    $("#sign-in-form-div").addClass('hide');
    $("#sign-up-form-div").removeClass('hide');
    $('#box-1').addClass('hide');
  });
  $(document).on('click', '#nav-login', function(){
    $("#pickup-btn").addClass('hide');
    $("#sign-in-form-div").removeClass('hide');
    $("#sign-up-form-div").addClass('hide');
    $('#box-1').addClass('hide');
  });
});
