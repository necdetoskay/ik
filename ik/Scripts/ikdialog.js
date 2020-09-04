(function ($) {
    var ID = function () {
        return '_' + Math.random().toString(36).substr(2, 12);
    };

    function formvalidation(form, dialogRef, complete) {
        $(form).submit(function () {
            if (!$(this).valid())
                return false;
            $.ajax({
                url: this.action,
                type: this.method,
                data: $(this).serialize(),
                success: function (result) {
                    // console.log("post başarılı");
                    if (result.Success === true) {
                        console.log("Dialog Form return true");
                        complete(result);
                        dialogRef.close();

                    } else {
                        // alert("hata");
                        console.log("Dialog Form Post hatası");
                        //$(dialog).html(result);
                        $.validator.unobtrusive.parse(form);
                        formvalidation(form, dialogRef);
                    }
                }, error: function (data) {
                    console.log(data);
                }
            });
            return false;

        });
    }

    function formyukle(dialogdiv, settings) {
       
        var id = ID();
        $('<button id="' + id + '" class="' + settings.buttonClass + '">' + settings.buttonText+'</button>').appendTo(dialogdiv);

        $('#' + id).on('click', function () {

            //console.table(settings);
           // console.table(settings.data);


            BootstrapDialog.show({
                draggable: true,
                title: settings.title,
                message: function (dialog) {
                    var $message = $('<div>Bekleyiniz.......</div>');
                    var dialogyukle = dialog.getData('dialogyukle');
                    var param = dialog.getData('data');
                    dialogyukle += "?";
                    var par = "";
                    $.each(param,
                        function (key, value) {
                            par = par + key + "=" + value+"&";
                        });
                    dialogyukle += par;
                    $message.load(dialogyukle);
                    return $message;
                },
                onshown: function (dialogRef) {
                    var form = dialogRef.getModalBody().find('form');
                    //console.log(settings.data);
                    //form.append("data", settings.data);
                    $.validator.unobtrusive.parse(form);

                    formvalidation(form, dialogRef, settings.complete);

                },
                data: {
                    'dialogyukle': settings.formurl,
                    'data': settings.data
                    //,'complete': settings.complete
                },
                closable: true,
                closeByBackdrop: false,
                closeByKeyboard: false,
                buttons: [
                    {
                        label: 'Kaydet',
                        //hotkey: 65, // Keycode of keyup event of key 'A' is 65.
                        action: function (dialogRef) {
                            var form = dialogRef.getModalBody().find('form');
                            //console.log(dialogRef.getData('data'));
                            $(form).submit();
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
    $.fn.ikDialog2 = function (options) {
        var settings = $.extend({
            formurl: '',
            complete: function (result) { },
            beforeshown: function (settings) { },
            clicked: function (settings) {
                return true;
            }
        }, options);
        //if ($.isFunction(settings.beforeshown))
        //    settings.beforeshown(settings);
        var avans = $(this);
        var id = ID();
        avans.attr("id", id);
        alert("");
        BootstrapDialog.show({
                type: BootstrapDialog.TYPE_WARNING,
                draggable: true,
                title: settings.title,
                message: function (dialog) {
                    var $message = $('<div>Bekleyiniz.......</div>');
                    var dialogyukle = dialog.getData('dialogyukle');
                    $message.load(dialogyukle);
                    return $message;
                },
                onshown: function (dialogRef) {
                    var form = dialogRef.getModalBody().find('form');
                    $.validator.unobtrusive.parse(form);
                    formvalidation(form, dialogRef, settings.complete);
                },
                data: {
                    'dialogyukle': settings.formurl
                 
                    //,'complete': settings.complete
                },
                closable: true,
                closeByBackdrop: false,
                closeByKeyboard: false,
                buttons: [
                    {
                        label: 'Kaydet',
                        //hotkey: 65, // Keycode of keyup event of key 'A' is 65.
                        action: function (dialogRef) {
                            var form = dialogRef.getModalBody().find('form');
                         
                            $(form).submit();
                        }
                    }, {
                        label: 'İptal',
                        action: function (dialogRef) {
                            dialogRef.close();
                        }
                    }
                ]
            });
        e.stopPropagation();
        

    }

    $.fn.ikDialog = function (options) {
      
        $(this).each(function () {
            var settings = $.extend({
                formurl: '',
                title: '',
                data: {},
                buttonClass: 'btn btn-primary',
                buttonText: 'Yeni Ekle',
                complete: function (result) { },
                beforeshown: function (settings) { }
                //deleteurl: '',
                //kayitklasor: '',
                //targetimgdiv: '',
                //uploadcomplete: function () { console.log('dialog tamamlandı') },
                //deleted: function () { console.log('silindi') }
            }, options);
            if ($.isFunction(settings.beforeshown))
                settings.beforeshown(settings);
            //console.log(settings);
           
            formyukle($(this), settings);

        });
    }


}(jQuery));