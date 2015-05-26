// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
//= require jquery-ui

$(function() {
    $(".datepicker").datepicker({
        changeMonth: true,
        changeYear: true,
        // yearRange: '-100:+0',
        //minDate: '-100y',
        // maxDate: '0',
        dateFormat: 'dd/mm/yy',
        showOtherMonths: false,
        dayNamesMin: ['Dom', 'Lun', 'Mar', 'Mie', 'Jue', 'Vie', 'Sab'],
        monthNamesShort: ["Ene", "Feb", "Mar", "Abr", "May", "Jun", "Jul", "Ago", "Sep", "Oct", "Nov", "Dic"]
    });
});

$(function() {
    $( ".datepicker_fut" ).datepicker({
        changeMonth: true,
        changeYear: true,
        yearRange: '-0:+20',
        minDate: 0,
        maxDate: "+1Y",
        dateFormat: 'yy-mm-dd',
        showOtherMonths: true,
        dayNamesMin: ['Dom', 'Lun', 'Mar', 'Mie', 'Jue', 'Vie', 'Sab'],
        monthNamesShort: ["Ene", "Feb", "Mar", "Abr", "May", "Jun", "Jul", "Ago", "Sep", "Oct", "Nov", "Dic"]
    });
    $(".datepicker_fut").attr("readonly", "true");
});
