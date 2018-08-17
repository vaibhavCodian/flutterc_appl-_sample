/**
 * Particleground demo
 * @author Jonathan Nicol - @mrjnicol
 */

document.addEventListener('DOMContentLoaded', function () {
  particleground(document.getElementById('particles'), {
    dotColor: '#f1f2f6',
    lineColor: '#dfe4ea',
    particleRadius: 7,
    lineWidth: 3,
    proximity: 60,
    minSpeedX: 0.7,
    minSpeedY: 0.8,
    directionX: 'center',
    directionY: 'center',
    density: 10000
  });
  var intro = document.getElementById('intro');
  intro.style.marginTop = - intro.offsetHeight / 2 + 'px';
}, false);


/*
// jQuery plugin example:
$(document).ready(function() {
  $('#particles').particleground({
    dotColor: '#5cbdaa',
    lineColor: '#5cbdaa'
  });
  $('.intro').css({
    'margin-top': -($('.intro').height() / 2)
  });
});
*/