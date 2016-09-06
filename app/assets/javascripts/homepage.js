// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on("ready", function(e){
  // e.preventDefault();
  $(".submit_1").on("click", function(e){
    e.preventDefault();
    $.ajax({
      url: '/',
      data: {results: $(".search_1").val()},
      method: 'get',
      success: function(data){

        response = $(data).find('#results').html()

        $('#results').html(response)
      }
    })
  })
})
