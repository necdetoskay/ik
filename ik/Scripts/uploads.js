var uploadnamespace;

(function ($) {




    uploadnamespace = {
        uploadurl: window.location.origin + '/Upload/Yukle',
        uploadform: window.location.origin + '/Upload/DosyaYukleDialog',
        deleteurl: window.location.origin + '/Upload/Sil',



        sil: function (sildiv, silid, dosya, deleteurl, deleted) {

            var del = sildiv.find('.dosyasil');
            //*  var id = sildiv.attr('data-id');
            del.on('click', function () {
                //soru sor
                BootstrapDialog.show({
                    title: 'Kayıt Sil',
                    message: 'Kayıt Silinsin mi?',
                    buttons: [{
                        label: 'İptal',
                        action: function (dialogRef) {
                            dialogRef.close();
                        }
                    }, {
                        label: 'Sil',
                        action: function (dialogRef) {
                            $.ajax({
                                url: deleteurl,
                                type: 'GET',
                                data: {
                                    url: dosya
                                },
                                success: function (result) {
                                    //  if (result.Success === true)
                                    deleted(sildiv);
                                }
                            });
                            dialogRef.close();
                        }
                    }]
                });
            });
        }
    }
    function loadProgressBar(result, dialogref) {
        var progressbar = $(".progressbar-5");
        var progressLabel = $(".progress-label");
        progressbar.show();
        $(progressbar).progressbar({
            change: function () {
                progressLabel.text(
                    progressbar.progressbar("value") + "%");
            },
            complete: function () {
                progressLabel.text("Loading Completed!");
                progressbar.progressbar("value", 0);
                progressLabel.text("");
                progressbar.hide();
                $('#Files').val('');
                $('#FileBrowse').find("*").prop("disabled", false);
                var uploaddiv = dialogref.getData("uploaddiv");
                dialogref.getData("settings").uploadcomplete(result, uploaddiv);
                dialogref.close();
            }
        });

        function progress() {
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
        fileData.append("kayitklasor", dialogref.getData("kayitklasor"));

        $.ajax({
            url: uploadnamespace.uploadurl,
            type: "POST",
            contentType: false,
            processData: false,
            data: fileData,
            async: false,
            success: function (result) {
                if (result.DosyaAdi != "") {
                    $('#FileBrowse').find("*").prop("disabled", true);
                    loadProgressBar(result, dialogref);
                }
            },
            error: function (err) {
                alert(err.statusText);
            }
        });
    }
    var dosyaYukle = function (uploaddiv, settings) {
        var html = $('<button title="Dosya Yükle" type="button" class="btn btn-default upload" aria-label="Left Align"><span class="glyphicon glyphicon-upload" aria-hidden="true"></span></button>');
        uploaddiv.html(html);
        html.on('click', function () {

            BootstrapDialog.show({
                title: 'Dosya Yükle',
                message: function (dialog) {
                    var $message = $('<div>Bekleyiniz.......</div>');
                    var dialogyukle = dialog.getData('dialogyukle');
                    $message.load(dialogyukle);
                    return $message;
                },
                data: {
                    'dialogyukle': uploadnamespace.uploadform,
                    'uploaddiv':uploaddiv,
                    'settings': settings,
                    'kayitklasor':settings.kayitklasor
                },
                closable: true,
                closeByBackdrop: false,
                closeByKeyboard: false,
                buttons: [
                    {
                        label: 'Yükle',
                        //hotkey: 65, // Keycode of keyup event of key 'A' is 65.
                        action: function (dialogRef) {
                            var file = dialogRef.getModalBody().find('#Files');
                            uploadfile(file, dialogRef);
                        }
                    }, {
                        label: 'İptal',
                        action: function (dialogRef) {
                            dialogRef.close();
                        }
                    }
                ]
            });
        });
    }

    $.fn.DosyaYukle = function (options) {
        $(this).each(function () {
            var settings = $.extend({
                multi: 'false',
                kayitklasor: '',
                uploadcomplete: function () { console.log('dialog tamamlandı') }
            }, options);
            dosyaYukle($(this), settings);
        });
    }

}(jQuery));
