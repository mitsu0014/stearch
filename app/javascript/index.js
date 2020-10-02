$(function() {

  $('#login-show').on('click',function() {
    $('#login-modal').fadeIn();
  });

  $('.close-modal').on('click',function(){
    $('#login-modal').fadeOut();
    $('#signup-modal').fadeOut();
  });

 $('#top-image').fadeIn(3000);

 setTimeout(function(){
  $('#sub-text').fadeIn(2000);
},1000);

 $('.top-click').css({display: 'none'});
 setTimeout(function(){
  $('.top-click').fadeIn(1000);
},1000);

setTimeout(function(){
  $('.twitter').fadeIn(3000);
},2500);



  $('a[href^="#"]').on("click", function (event) {
      var speed = 500;
      var href= $(this).attr("href");
      var target = $(href == "#" || href == "" ? 'html' : href);
      var position = target.offset().top;
      $("html, body").animate({scrollTop:position}, speed, 'swing');
      return false;
  });

setTimeout(function(){
  $('#to-pagedown').fadeIn(2000);
},1000);

$(window).on("scroll",function() {
 var pos = $(window).scrollTop();
  if (200 < pos) {
    $('#to-pagedown').fadeOut('slow');
  }
  else {
    $('#to-pagedown').fadeIn('slow');
  }
  });
 
   $('#to-pagedown a').on("click",function(){
   $('html,body').animate({scrollTop:800}, 'fast');
  });
});
