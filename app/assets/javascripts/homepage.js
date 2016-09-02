// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/
  $(".submit_1").on("click", function(e){
    e.preventDefault();
    $.ajax({
      url: '/',
      method: 'post',
      data: {results: $(".search_1").val()}
      // success: function(){
      //   $(".results").load("/ .results")
      // }
    })
  })
