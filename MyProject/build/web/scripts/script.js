$(function(){
    $( "#submit" ).click(function(event)
    {
        event.preventDefault();

        $('#datepicker').pickadate();
        $('#datepicker2').pickadate();

    }
)});

