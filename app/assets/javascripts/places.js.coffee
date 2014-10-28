# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $('#places').imagesLoaded ->
    $('#places').masonry
      itemSelector: '.box'
      isFitWidth: true


$ ->
  $("a[data-remote]").on "ajax:success", (e, data, status, xhr) ->
    alert "The place was favorited."