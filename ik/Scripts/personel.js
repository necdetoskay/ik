
(function ($) {
    
    $.fn.dialogify = function (options) {

        // This is the easiest way to have default options.
        var settings = $.extend({
            // These are the defaults.
            url: "",//ajax sorgusu yapılacak url
            title: "",//dialog title 
            label: "",//alınacak bilginin ne olduğu
            callback:function(result) {//callback çalışacak metod
                alert("callback yazılmamış");
            }
            //se: "white"
        }, options);

        var btn = this;
        btn.on('click', function() {
            BootstrapDialog.show({
                title: options.title,
                message: options.label+' : <input id="dialoginputad" type="text" class="form-control">',
                buttons: [
                    {
                        label: 'İptal',
                        action: function (dialogRef) {
                            dialogRef.close();
                        }
                    },
                    {
                        label: 'Kaydet',
                        action: function (dialogRef) {
                            $.ajax({
                                url: options.url,
                                type: 'POST',
                                data: {
                                    ad: $('#dialoginputad').val()
                                },
                                success: function (result) {
                                    settings.callback(result);
                                    //if (result.Success === false) return;
                                    //var okullar = $('#Gorevi');
                                    //okullar.empty();
                                    //$.each(result.Data, function (i, item) {
                                    //    okullar.append('<option Value="' + item.Value + '" >' + item.Text + '</option>');
                                    //});
                                    //okullar.val(result.Selected);
                                    dialogRef.close();
                                }
                            });
                        }
                    }
                ]
            });
        });


        // Greenify the collection based on the settings variable.
        //return this.css({
        //    url: settings.url,
        //    ad:settings.ad
        //    //,backgroundColor: settings.backgroundColor
        //});

    };

}(jQuery));