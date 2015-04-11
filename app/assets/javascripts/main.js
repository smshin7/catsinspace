$(function(){
  $('.postbutton').click(function(){
    $('.post').removeClass('hidden')
    $('.navigation').addClass('hidden')
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