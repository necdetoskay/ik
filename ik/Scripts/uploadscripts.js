(function ($) {

    function resimekle( dosya, thumb,targetimgdiv) {
        console.log(targetimgdiv);
        var resim = $('<div class="card" style="">' +
            '<a target="_blank" href="/' + dosya + '" style="float:right">' +
            '<img width="100" src="/' + thumb + '" class="card-img-top" alt="...">' +
            '</a>' +
            '<a  href="javascript:void(0)" class="resimsil" style="position: absolute">' +
            '<img  width="20" src="/Content/delete-png.png" />' +
            '</a></div>');
        targetimgdiv.append(resim);


        //var sil = resim.find('.resimsil');
        //var id = sil.attr('data-id');
        //sil.on('click', function () {
        //    $.ajax({
        //        url: deleteurl,
        //        type: 'GET',
        //        data: {
        //            id: id,
        //            url: dosya
        //        },
        //        success: function (result) {
        //            deleted(result.ID);
        //        }
        //    });
        //});
     

        return targetimgdiv;
    }

    function loadProgressBar(result, dialogref, complete, targetimgdiv){// ,deleted,  deleteurl) {
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
                // $('#UploadBtn').attr('dosya', result.DosyaAdi);
             /// var eklenenresimdiv= resimekle(result.DosyaAdi, result.Thumb, targetimgdiv);//, deleted, deleteurl);
                
                complete(result, targetimgdiv);//, targetimgdiv);
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


    function uploadfile(file, dialogref,uploadurl, complete, kayitklasor, targetimgdiv){//, deleted, deleteurl) {
        var fileUpload = file.get(0);
        var files = fileUpload.files;
        var fileData = new FormData();
        for (var i = 0; i < files.length; i++) {
            fileData.append(files[i].name, files[i]);
        }
        fileData.append("kayitklasor", kayitklasor);

        $.ajax({
            url: uploadurl,
            type: "POST",
            contentType: false, // Not to set any content header
            processData: false, // Not to process data
            data: fileData,
            async: false,
            success: function (result) {
                if (result.DosyaAdi != "") {
                    $('#FileBrowse').find("*").prop("disabled", true);
                    loadProgressBar(result, dialogref, complete, targetimgdiv);//,  targetimgdivdeleted, deleteurl); //calling LoadProgressBar function to load the progress bar.
                }
            },
            error: function (err) {
                alert(err.statusText);
            }
        });
    }

    function recurs(element) {
        if (element.find(".imglist").length === 0) {

            return recurs(element.parent());


        } else {
            return element.find(".imglist");
        }
    }
    var dosyaYukle = function (upload,settings) {
       

        var yukle = upload;
        var html = $('<button title="Dosya Yükle" type="button" class="btn btn-default upload" aria-label="Left Align"><span class="glyphicon glyphicon-upload" aria-hidden="true"></span></button>');

        var imgdiv = recurs(upload);
        settings.targetimgdiv = imgdiv;
        yukle.append(html);
        //settings.targetimgdiv = upload.closest('.imgcontainer');

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
                    'dialogyukle': settings.uploadform,
                    'complete': settings.complete
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
                            uploadfile(file, dialogRef, settings.uploadurl, settings.uploadcomplete, settings.kayitklasor, settings.targetimgdiv);//, settings.deleted, settings.deleteurl);
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

  

    $.fn.TopluDosyaYukle = function (options) {
      
        $(this).each(function () {
            var settings = $.extend({
                uploadurl: '',
                deleteurl: '',
                kayitklasor: '',
                targetimgdiv: '',
                uploadcomplete: function () { console.log('dialog tamamlandı') },
                deleted: function () { console.log('silindi') }
            }, options);
            dosyaYukle($(this),settings);
        });
    }

}(jQuery));