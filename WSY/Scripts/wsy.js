$.validator.methods["date"] = function (value, element) { return true; };

$.fn.extend({
    ToDropDown: function (targetdivid, targetaction, targettext) {
        var source = $(this);
        if (source.is("select")) {
            source.on("change", function () {
                var sourceID = source.val();
                if (sourceID != null && sourceID != '') {
                    var procemessage = "<option value='0'> Bekleyiniz...</option>";
                    $('#' + targetdivid).html(procemessage).show();
                    var url = targetaction;
                    $.ajax({
                        url: url,
                        data: { id: sourceID },
                        cache: false,
                        type: "POST",
                        success: function (data) {

                            var markup = "<option value=''>" + targettext + "</option>";
                            for (var x = 0; x < data.length; x++) {
                                markup += "<option value=" + data[x].Value + ">" + data[x].Text + "</option>";
                            }
                            $('#' + targetdivid).html(markup).show();
                        },
                        error: function (reponse) {
                            alert("error : " + reponse);
                        }
                    });
                }
            });

        }
    },
    ToMWSTable: function () {
        var $this = $(this);
        if ($this.is("table")) {
            $this.addClass("mws-table");
            $this.before("<div class=\"mws-panel-header\">" +
                    	"<span class=\"mws-i-24 i-table-1\">Simple Table</span>" +
                    "</div>");
            $('.mws-panel-header').each(function () {
                $(this).next().andSelf().wrapAll("<div class=\"mws-panel grid_8\">");
            });
        }
    },
    ToUploadify: function (params) {
        var i=0;
        var $this = $(this);
        var $uploaddiv = $("<div id=\"uploadifydiv\"></div><div id=\"thumbdiv\"></div>");
        $this.before($uploaddiv);
        var ext = "";
        var filelist = params.files.split(',');
        for (var j = 0; j < filelist.length; j++) {
            ext = ext + "*." + filelist[j] + ";";
        }
       // alert(params.files);
        $('#uploadifydiv').uploadify({
            'uploader': params.uploader,
            'script': params.script,
            'cancelImg': params.cancelImg,
            'fileDesc': 'Sadece  uzantılar ve enfazla 1 GB',
            'fileExt': ext,
            'buttonImg': params.buttonImg,
            'multi': true,
            'auto': true,
            'width': 100,
            'height': 25,
            'sizeLimit': 1024 * 1024 * 1024 * 1024 * 1024,
            'onSelect': function (e, q, f) {
                var fileName = f.name;
                var invalidExtensions = filelist;
                var fileNameExt = fileName.substr(fileName.lastIndexOf('.') + 1);
                var isvalid = false;
                for (var j = 0; j < invalidExtensions.length; j++) {
                    if (invalidExtensions[j] == fileNameExt) {
                        isvalid = true;
                    }
                    if (isvalid) {
                      
                        break;
                    }
                }
                if (!isvalid) {
                    this.append('<div>Geçersiz Dosya Türü</div>');
                    $('#uploadifydiv').Cancel();
                }
            },
            onError: function (a, b, c, d) {
                if (d.status == 404)
                    alert('Could not find upload script.');
                else if (d.type === "HTTP")
                    alert('error '+d.type+": "+d.status);
                else if (d.type ==="File Size")
                    alert(c.name+' '+d.type+' Limit: '+Math.round(d.sizeLimit/1024)+'KB');
                else
                    alert('error '+d.type+": "+d.text);
            },
            'onComplete': function (event, queueID, fileObj, response, data) {
                $this.val(response).css("display", "none");
                $('#thumbdiv').append('<div class="control-group"><input name=\"resim' + i + 'url\" id=\"resim' + i + 'url\" type="hidden" value=\"' + response + '\"/><a class="html5lightbox" href=\"' + response.replace("thumb-", "") + '\"><img name=\"resim' + i + 'img\" id=\"resim' + i + 'img\" class="form-control pull-left" src=\"' + response + '\" style=\"width: 20%; height: 50px;\" /></a><textarea name=\"resim' + i + 'alt\" id=\"resim' + i + 'alt\" type="text" name="" style="width:75%;resize:none;"/></div><div class="clearfix"></div>');
                $("#" + 'resim'+ i + 'alt').val(fileObj.name.slice(0, fileObj.name.lastIndexOf('.'))).parent().css("display", "block");
                i++;
            }
        });
    }
});



jQuery.fn.Numeric =
function () {
    return this.each(function () {
        $(this).keydown(function (e) {
            var key = e.charCode || e.keyCode || 0;
            // allow backspace, tab, delete, arrows, numbers and keypad numbers ONLY
            // home, end, period, and numpad decimal
            return (
                key == 8 ||
                key == 9 ||
                key == 46 ||
                key == 110 ||
                key == 190 ||
                (key >= 35 && key <= 40) ||
                (key >= 48 && key <= 57) ||
                (key >= 96 && key <= 105));
        });
    });
};



(function () {
    $.datepicker.regional['tr'] = {
        closeText: "Kapat",
        currentText: "Bugün",
        nextText: "Sonraki",
        prevText: "Önceki",
        monthNames: ["Ocak", "Şubat", "Mart", "Nisan", "Mayıs", "Haziran", "Temmuz", "Ağustos", "Eylül", "Ekim", "Kasım", "Aralık"],
        monthNamesShort: ["Ocak", "Şubat", "Mart", "Nisan", "Mayıs", "Haziran", "Temmuz", "Ağustos", "Eylül", "Ekim", "Kasım", "Aralık"],
        dayNames: ["Pazar", "Pazartesi", "Salı", "Çarşamba", "Perşembe", "Cuma", "Cumartesi"],
        dayNamesShort: ["Pzr", "Pzt", "Sal", "Çrş", "Prş", "Cum", "Cmt"],
        dayNamesMin: ["Pzr", "Pzt", "Sal", "Çrş", "Prş", "Cum", "Cmt"],
        showOn: 'button',
        dateFormat: 'dd.mm.yy',
        beforeShow: function () {
            $("#ui-datepicker-div").css("width", "auto");
        },
        onSelect: function (dateText, inst) {
            $(".datepicker").text(dateText);
        }
    };
    $(".datepicker").datepicker($.datepicker.regional["tr"]).attr('readonly', 'readonly');

})($);



$.fn.extend({
    ToDatePicker: function () {
        $(this).datepicker($.datepicker.regional["tr"]).attr('readonly', 'readonly');
        //$('.ui-datepicker-trigger > img').attr("src", img);
    }
});

/***
 * Pacth for dialog-fix ckeditor problem [ by ticket #4727 ]
 * 	http://dev.jqueryui.com/ticket/4727
 */
//jQuery.validator.addMethod(
//        'date',
//        function (value, element, params) {
//            if (this.optional(element)) {
//                return true;
//            }
//            ;
//            var result = false;
//            try {
//                $.datepicker.parseDate('dd.mm.yy', value);
//                result = true;
//            } catch (err) {
//                result = false;
//            }
//            return result;
//        },
//        ''
//    );

//jQuery.extend(jQuery.validator.methods, {
//    date: function (value, element) {
//        var isChrome = window.chrome;
//        // make correction for chrome
//        if (isChrome) {
//            var d = new Date();
//            return this.optional(element) ||
//            !/Invalid|NaN/.test(new Date(d.toLocaleDateString(value)));
//        }
//            // leave default behavior
//        else {
//            return this.optional(element) ||
//            !/Invalid|NaN/.test(new Date(value));
//        }
//    }
//});




$(function () {

    var submitAutocompleteForm = function (event, ui) {
        var $input = $(this);
        $input.val(ui.item.label);

        var $form = $input.parents("form:first");
        $form.submit();

    };
    
    var createAutocomplete = function () {
        var $input = $(this);
        var options = {
            source: $input.attr("data-autocomplete"),
            minLength: 1,
            select: submitAutocompleteForm
        };
        $input.autocomplete(options);

    };

    var filterWithGrup = function () {
        var $select = $(this);
        $select.on("change", function () {
            var ID = $select.val();
            var options = {
                url: $select.attr("data-source"),
                type: "get",
                data: { grupKod: ID }
            };
            $.ajax(options).done(function (data) {
                var target = $select.attr("target-id");
                $(target).replaceWith(data);
            });
        });
        return false;
    };


    var getPage = function () {

        var $a = $(this);
        var options = {
            url: $a.attr("href"),
            type: "get"
        };
        $.ajax(options).done(function (data) {
            var target = $a.parents("div.pagedList").attr("data-target");
            $(target).replaceWith(data);
        });
        return false;
    };

    $('#Info').on('click', ".pagedList a", getPage);

    $("input[data-autocomplete]").each(createAutocomplete);
    
    $("select[data-source]").each(filterWithGrup);



    function prepareDialog() {
    }
    window.prepareDialog = prepareDialog;


});



