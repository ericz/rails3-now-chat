# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  now.receiveMessage = (name, message) ->
    $("#messages").append("<br>" + name + ": " + message)
  
  $("#send-button").click ->
    now.distributeMessage($("#text-input").val());
    $("#text-input").val("");
  
  now.name = prompt("What's your name?", "");
