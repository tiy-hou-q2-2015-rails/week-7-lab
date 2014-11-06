$(window).ready(function(){


  $("#new-form").on("click", function(event){
    event.preventDefault();
    event.stopPropagation();

    $("#new-quote-form").show("fast");

  });


});
