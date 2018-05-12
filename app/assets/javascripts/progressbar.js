$(document).on('ready turbolinks:load', function(){
    $('#progressbar').LineProgressbar({
        percentage: $('#progressbar').data('progress')
    });
});




