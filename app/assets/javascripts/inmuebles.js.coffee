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

$ ->
  $("#tab_datos").click ->
    active = $("#myTabContent").find(".active.in")
    active.removeClass("active in")
    $(".nav-tabs").find(".active").removeClass("active")
    $(this).parent("li").addClass("active")
    $("#datos").addClass("active in")
  $("#tab_propietario").click ->
    active = $("#myTabContent").find(".active.in")
    active.removeClass("active in")
    $(".nav-tabs").find(".active").removeClass("active")
    $(this).parent("li").addClass("active")
    $("#propietario").addClass("active in")
  $("#tab_interesado").click ->
    active = $("#myTabContent").find(".active.in")
    active.removeClass("active in")
    $(".nav-tabs").find(".active").removeClass("active")
    $(this).parent("li").addClass("active")
    $("#interesado").addClass("active in")
    
    