$(document).ready(function() {
  $('.party-reviews-wrapper').hide()
  $(".fa-caret-down").on('click', function(){
    $(this).siblings('.party-reviews-wrapper').toggle('slow');
  });
});
