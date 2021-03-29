(function ($) {

    function dosyayukle(islem, url, folder) {
        var fileUpload = islem.find(".Files").get(0);
        var files = fileUpload.files;
        // Create FormData object
        var fileData = new FormData();
        // Looping over all files and add it to FormData object
        for (var i = 0; i < files.length; i++) {
            fileData.append(files[i].name, files[i]);
        }
        var pid = $('#personel option:selected').val();
        fileData.append("url", url);
        fileData.append("folder", folder);
        fileData.append("id", pid);


        //url = url + '/?pid=' + pid + '&kayitid=' + kayitid;
        //console.log(url);

        $.ajax({
            url: url,
            type: "POST",
            contentType: false, // Not to set any content header
            processData: false, // Not to process data
            data: fileData,
            async: false,
            success: function (result) {

                console.table(result);
                if (result.DosyaAdi != "") {
                    $('#FileBrowse').find("*").prop("disabled", true);
                    LoadProgressBar(result, islem); //calling LoadProgressBar function to load the progress bar.
                }
            },
            error: function (err) {
                alert(err.statusText);
            }
        });



    }


    $.fn.MakeUploader = function (options) {
        var settings = $.extend({
            url: '',
            folder: ''

        }, options);

        $(this).each(function () {
            var row = $(this);
            var btn = $('<button title="Dosya Yükle" type="button" class="btn btn-default uploadgoster" aria-label="Left Align"> <span class="glyphicon glyphicon-upload" aria-hidden="true"></span> </button>');
            row.append(btn);
            row.append('<div class=islem></div>');

            btn.on('click', function () {
                var islem = btn.parent().find('.islem');
                // var islem = $(this);
                islem.html(' <div  class="col-sm-8 yukleislem"> <input type="file" class="Files"/> </div> <div class="col-sm-2">   ' +
                    '<input type="button" class="btn btn-danger UploadBtn" value="Yükle"/></div><div class="col-sm-2"> ' +
                    '<button class="iptalislem">İptal</button> </div>' +
                    '<div class="row"> <div class="col-sm-12"><div class="progressbar-5"> <div class="progress-label"> </div> </div> </div> </div>');
                var iptal = islem.find('.iptalislem');
                iptal.on('click', function () {
                    dosyayukleekle(iptal.closest('.islem'));
                });

                islem.find('.UploadBtn').on('click', function () {
                    var kayitid = islem.closest('tr').attr('data-kayit-id');
                    dosyayukle(islem, settings.url, settings.folder);
                });

            });

        });

    }


    $.fn.MakeSelectList = function (options) {
        var settings = $.extend({
            loadimgurl: '',
            listurl: '',
            targetdiv: '',
            change: function () {
                alert("selectlist değişti");
            }
        }, options);


        var select = $(this);
        select.append('<select id="personel"></select>');
        select.append('<img class="hidden" id="loading" src="' + settings.loadimgurl + '" /> <span id="sayi"></span>');
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
                   // alert(settings.callafterchange);
                    if (options.callafterchange === undefined || options.callafterchange === null) {
                        settings.change("changed");
                        load.addClass("hidden");
                    } else {
                     
                        $.ajax({
                            url: options.callafterchange,
                            type: 'GET',
                            data: { id: selected.val() },
                            success: function (result) {
                             
                                settings.change(result);
                            },
                            error: function (xhr, ajaxOptions, thrownError) {
                              
                                alert(xhr.status);
                                alert(thrownError);
                            }
                        });
                        load.addClass("hidden");
                    }
                    
                }));
            }
        });
    }


}(jQuery));