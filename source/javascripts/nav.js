function showMenu(whichMenu){
  $(whichMenu).toggleClass('show');
}

function findIcon(){
  var $icon = $('.icon');
  return $icon;
}

$(function(){
  'use strict';
  var $icon = findIcon();
  $icon.on('click', function(e){
    showMenu('.nav .visually-hidden');
  });
});