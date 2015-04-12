$(function(){
  $('.postbutton').click(function(){
    $('.post').removeClass('hidden')
    $('.navigation').addClass('hidden')
  })
  $('.loginbutton').click(function(){
    $('.login').removeClass('hidden')
    $('.navigation').addClass('hidden')
  })
   $('.cancel').click(function(){
    $('.post').addClass('hidden')
    $('.navigation').removeClass('hidden')
  })
   $('.cancellogin').click(function(){
    $('.login').addClass('hidden')
    $('.navigation').removeClass('hidden')
  })

  $('.menu').click(function(){
    $('.menu').css('visibility','hidden');
    $('.navigation').toggleClass('opennav');
    
  })
  $('.close').click(function(){
    $('.navigation').toggleClass('opennav');
    $('.menu').css('visibility','visible');
  })

})