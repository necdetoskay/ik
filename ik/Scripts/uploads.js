﻿var uploadnamespace;

(function($) {


    
    function loadProgressBar(result, dialogref) {

        var progressbar = $(".progress_bar");
        progressbar.css("width", "0");
        progressbar.show();
        $(progressbar).progressbar({
            change: function() {

                var val = progressbar.progressbar("value");
                progressbar.attr("aria_valuenow", val).html("%" + val + " Tamamlandı").css("width", val + "%");
            },
            complete: function() {
                // console.log("loadProgressBar tamamlandı");
                //progressLabel.text("Loading Completed!");
                progressbar.progressbar("value", 0);
                // progressLabel.text("");
                progressbar.hide();
                $('#Files').val('');
                $('#FileBrowse').find("*").prop("disabled", false);
                var uploaddiv = dialogref.getData("uploaddiv");
                dialogref.getData("settings").uploadcomplete(result, uploaddiv);
                dialogref.close();
            }
        });

        function progress() {
            // console.log("progress çağırıldı");
            var val = progressbar.progressbar("value") || 0;
            progressbar.progressbar("value", val + 1);
            if (val < 99) {
                setTimeout(progress, 25);
            }
        }

        setTimeout(progress, 100);
    }


    function uploadfile(file, dialogref) {
        var fileUpload = file.get(0);
        var files = fileUpload.files;
        var fileData = new FormData();
        for (var i = 0; i < files.length; i++) {
            fileData.append(files[i].name, files[i]);
        }

        var settings = dialogref.getData("settings");
        fileData.append("kayitklasor", settings.kayitklasor);
        fileData.append("encrypt", settings.encrypt);
        //console.table("upload file :" + settings.uploadurl);
        $.ajax({
            url: settings.uploadurl,
            type: "POST",
            contentType: false,
            processData: false,
            data: fileData,
            async: false,
            success: function(result) {
                if (result.DosyaAdi != "") {
                    $('#FileBrowse').find("*").prop("disabled", true);
                    loadProgressBar(result, dialogref);
                }
            },
            error: function(xhr, status, error) {
                // var err = eval("(" + xhr.responseText + ")");
                alert(xhr.responseText);
            }
        });
    }

    var dosyaYukle = function(uploaddiv, settings) {
        var html = $(
            '<button title="Dosya Yükle" type="button" class="btn btn-default upload" aria-label="Left Align"><span class="glyphicon glyphicon-upload" aria-hidden="true"></span></button>');
        uploaddiv.html(html);
        html.on('click',
            function() {
                //alert(uploadnamespace.uploadform);
                BootstrapDialog.show({
                    title: 'Dosya Yükle',
                    message: function(dialog) {
                        var $message = $('<div>Bekleyiniz.......</div>');
                        var dialogyukle = dialog.getData('dialogyukle');
                        $message.load(dialogyukle);
                        return $message;
                    },
                    data: {
                        'dialogyukle': settings.uploadform,
                        'uploaddiv': uploaddiv,
                        'settings': settings
                    },
                    closable: true,
                    closeByBackdrop: false,
                    closeByKeyboard: false,
                    buttons: [
                        {
                            label: 'Yükle',
                            //hotkey: 65, // Keycode of keyup event of key 'A' is 65.
                            action: function(dialogRef) {
                                var file = dialogRef.getModalBody().find('#Files');
                                uploadfile(file, dialogRef);
                            }
                        }, {
                            label: 'İptal',
                            action: function(dialogRef) {
                                dialogRef.close();
                            }
                        }
                    ]
                });
            });
    }

    $.fn.DosyaYukle = function(options) {

        $(this).each(function() {
            ///<param name="uploadform"></param>
            ///<param name="uploadurl"></param>
            ///<param name="kayitklasör"></param>
            ///<param name="uploadcomplete"></param>
            var settings = $.extend({
                    targetdiv: '',
                    kayitklasor: '',
                    encrypt: 'true',
                    uploadcomplete: function() { console.log('dialog tamamlandı') },
                    init: function() {}
                },
                options);
            //eğer multi ise ve 1 resim varsa iptal et
            //console.log(options);
            dosyaYukle($(this), settings);
        });
    }
}(jQuery));
