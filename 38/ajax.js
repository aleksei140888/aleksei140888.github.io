$( document ).ready(function() {
	$.getJSON('https://api.ipdata.co/?api-key=826edc251fa55f09053927490cdc7b1c081d545f0cac340e882f1ba2', function(data) {
            var str = JSON.stringify(data);
			sendAjaxForm('result_form', str, 'http://127.0.0.1:5000/get_some_info/geo/');
			
    });
    
});
 
function sendAjaxForm(result_form, str, url) {
    $.ajax({
        url:     url, //url страницы
        type:     "POST", //метод отправки
        dataType: 'json', // тип обьекта
        data: 'jsonData=' + str,  // Присваиваем объект
 	});
}