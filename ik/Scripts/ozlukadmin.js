(function ($) {
    $.fn.MakeSelectList = function (options) {

        // Establish our default settings
        var settings = $.extend({
            loadimgurl: '',
            listurl: '',
            targetdiv: '',
            loadimgurl:'',
            change: function () {
                alert("selectlist değişti");
            }
            //data: {},
            //id: '',
            //text: '',
            //url: '',
            //title: null,
            //updateurl: null,
            //targetid: '',
            //bclass: 'btn btn-primary',
            //height: '',
            //width: '',
            //complete: function() { console.log('dialog tamamlandı') }
        }, options);


        var select = $(this);
        select.append('<select id="personel"></select>');
        select.append('<img class="hidden" id="loading" src="'+settings.loadimgurl+'" /> <span id="sayi"></span>');
        var load = $('#loading');
        var pers = $('#personel');
        var targetdiv = pers.attr("data-target");
        pers.empty();
        pers.append('<option>Personel Seçiniz.....</option>');
        // $('#sayi').html('<img src="@Url.Content("~/Content/Loading_icon.gif")"/>');
        load.removeClass("hidden");
        $.ajax({
            url: settings.listurl,
            type: 'GET',
            success: function (result) {
                var say = 0;
                $.each(result, function (i, item) {
                    pers.append('<option value="' + item.Value + '">' + item.Text + '</option>');
                    say = i;
                });
                $('#sayi').html(say + 1 + ' kişi bulundu');

                load.addClass("hidden");


                pers.on('change', (function () {
                    $('#' + options.targetdiv).html("");
                    var selected = $("#personel option:selected");
                    load.removeClass("hidden");
                    if (selected.index() === 0) {
                       
                        load.addClass("hidden");
                        return;
                    }
                    $.ajax({
                        url: options.callafterchange,
                        type: 'GET',
                        data: { id: selected.val() },
                        success: function (result) {
                          
                            load.addClass("hidden");
                            settings.change(result);
                         

                        }
                    });
                }));
            }
        });
    }

    
}(jQuery));