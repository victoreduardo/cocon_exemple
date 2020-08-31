
function getAjax(url, data, success, error) {
    $.ajax({
        type: 'GET',
        url: url,
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        data: data,
        success: success,
        before: null,
        error: error
    });
}

$('.data-format').mask('00/00/0000', {reverse: false});

$('.date-picker').datepicker({
    autoclose: true,
    clearBtn: true,
    language: 'pt-BR',
    format: 'dd/mm/yyyy',
    todayBtn: 'linked'
});