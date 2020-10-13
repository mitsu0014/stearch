$(function() {
  $('#destroy-btn').on('click',function() {
    $('#login-modal').fadeIn();
  });

  $('.close-btn').on('click',function(){
    $('#login-modal').fadeOut();
    $('#signup-modal').fadeOut();
  });
});