# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  $(".propietarios_form").hide()
  $(".add_new_propietario").click ->
    $(".propietarios_form").show()
    
$ ->
  $(".cancel_propietario_form").click ->
    $(".propietarios_form").hide()
