$(document).on('turbolinks:load', function() {
    $('form').on('click', '.remove_fields', function(event){
        $(this).prev('input[type=hidden]').val('1');
        $(this).closest('div.translation').fadeOut();
        event.preventDefault();

    });
    $('form').on('click', '.add_fields', function(event){
        let time = new Date().getTime();
        let regexp = new RegExp($(this).data('id'), 'g');
        $(this).before($(this).data('fields').replace(regexp, time));
        event.preventDefault();
    });
    $('div.categories a').on('contextmenu', function(event){
        event.preventDefault();
        $(this).next('.categoryDelete')[0].click();
    });
    $('div.phrases a').on('contextmenu', function(event){
        event.preventDefault();
        $(this).next('.phraseDelete')[0].click();
    });
    $('#datepicker').datepicker({
        uiLibrary: 'bootstrap4',
        format: 'yyyy-mm-dd'
    });
    $('#customFile').on('change',function(){
        var fileName = $(this).val().split("\\");
        $(this).next('.custom-file-label').html(fileName[fileName.length-1]);
    });
});
