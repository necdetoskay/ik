//if (typeof jQuery === "undefined") {
//    throw new Error("Bootstrap's JavaScript requires jQuery");
//}
//String.prototype.toDDMMYYY = function () {

   
//    var giris = new Date(parseInt(this.substr(6)));
//    return giris.getDate() + "/" + (giris.getMonth() + 1) + "/" + giris.getFullYear();
//}
//jQuery.fn.ForceNumericOnly =function()
//{
//    return this.each(function()
//    {
//        $(this).keydown(function(e)
//        {
//            var key = e.charCode || e.keyCode || 0;
//            // allow backspace, tab, delete, enter, arrows, numbers and keypad numbers ONLY
//            // home, end, period, and numpad decimal
//            return (
//                key == 8 || 
//                key == 9 ||
//                key == 13 ||
//                key == 46 ||
//                key == 110 ||
//                key == 190 ||
//                (key >= 35 && key <= 40) ||
//                (key >= 48 && key <= 57) ||
//                (key >= 96 && key <= 105));
//        });
//    });
//};

//(function ($) {

//    $.fn.TableEkle = function (options) {

//        // Establish our default settings
//        var settings = $.extend({
//            text: 'liste',
//            Sutunlar:[],
//            Data:''
//        }, options);

//        return this.each(function () {
//            var th = JSON.parse(JSON.stringify(settings.Data[0]));

//            var table = $('<table class="table">');
//            var head = $('<thead>');
//            //for (var key in th) {
//            //    head.append('<th>' + key + '</th>');
              
//            //}

//            jQuery.each(settings.Sutunlar, function(index, item) {
//                head.append('<th>' + item + '</th>');
//            });
//            var body = $('<tbody>');
//            var row;

//            for (var i = 0; i < settings.Data; i++) {
//                row = $('<tr>');
//                jQuery.each(settings.Sutunlar, function(index, item) {
//                    row.append('<td>' + settings.Data[index][item] + '</td>');
//                    //head.append('<th>' + item + '</th>');
//                });

//                //row.append('<td>' + settings.Data[i]. + '</td>');
//                body.append(row);
//            }
          
//            head.append(body);
//            table.append(head);
//            $(this).append(table);
//            //console.log(settings.Sutunlar);
//            //console.log(settings.text);
//            ////$(this).text(settings.text);

//            //if (settings.color) {
//            //    $(this).css('color', settings.color);
//            //}

//            //if (settings.fontStyle) {
//            //    $(this).css('font-style', settings.fontStyle);
//            //}
//        });

//    }

//}(jQuery));