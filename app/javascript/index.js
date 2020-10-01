$(function() {
 $('#top-image').fadeIn(3000);

 setTimeout(function(){
  $('#sub-text').fadeIn(2000);
},1000);

 $('.top-click').css({display: 'none'});
 setTimeout(function(){
  $('.top-click').fadeIn(1000);
},1000);


  $('a[href^="#"]').on("click", function (event) {
      var speed = 500;
      var href= $(this).attr("href");
      var target = $(href == "#" || href == "" ? 'html' : href);
      var position = target.offset().top;
      $("html, body").animate({scrollTop:position}, speed, 'swing');
      return false;
  });

//   $('#top-image').each(function(){
//     var src_off = $(this).find('image_tag').attr('src');
//     var src_on = src_off.replace('_off','_on');
//     $('<image_tag />').attr('src',src_on);
//     $(this).on("mouseenter",function(event){
//         $(this).find('image_tag').attr('src',src_on);
//     },function(){
//         $(this).find('image_tag').attr('src',src_off);
//     }); 
// });

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