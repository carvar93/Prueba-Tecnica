$(document).ready(function() {
  $("input").focusout(function() {
    var value = $(this).val();
    if (value.length == 0) {
      $(this).addClass("is-invalid");
    } else {
      $(this).removeClass("is-invalid");
    }
    /*
           
    */
    console.log('lost focus');
  });
});