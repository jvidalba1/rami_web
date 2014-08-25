# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  $("#inmueble_propietario_id").change ->
    if $(".propietarios_form").is(":visible")
      $(".propietarios_form").hide()

$ ->
  $(".propietarios_form").hide()
  $(".add_new_propietario").click ->
    $("#inmueble_propietario_id").val("")
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
  $("#tab_documentos").click ->
    active = $("#myTabContent").find(".active.in")
    active.removeClass("active in")
    $(".nav-tabs").find(".active").removeClass("active")
    $(this).parent("li").addClass("active")
    $("#documentos").addClass("active in")
  $("#tab_intermediario").click ->
    active = $("#myTabContent").find(".active.in")
    active.removeClass("active in")
    $(".nav-tabs").find(".active").removeClass("active")
    $(this).parent("li").addClass("active")
    $("#intermediario").addClass("active in")

