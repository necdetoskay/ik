$(function () {
    jQuery.validator.methods.date = function (value, element) {
        var isChrome = /Chrome/.test(navigator.userAgent) && /Google Inc/.test(navigator.vendor);
        if (isChrome) {
            var d = new Date();
            return this.optional(element) || !/Invalid|NaN/.test(new Date(d.toLocaleDateString(value)));
        } else {
            return this.optional(element) || !/Invalid|NaN/.test(new Date(value));
        }
    };


    $('#okuleklebtn').on('click', function () {
        var target = $('#okuleklebtn').attr('target');

        BootstrapDialog.show({
            title: 'Okul Ekle',
            message: 'Okul Adı Giriniz: <input id="okulad" type="text" class="form-control">',
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
                            url: target,
                            type: 'POST',
                            data: {
                                ad: $('#okulad').val()
                            },
                            success: function (result) {
                                if (result.Success === false) return;
                                var okullar = $('#okulid');
                                okullar.empty();
                                $.each(result.Data, function (i, item) {
                                    okullar.append('<option Value="' + item.Value + '" >' + item.Text + '</option>');
                                });
                                dialogRef.close();
                            }
                        });
                    }
                }
            ]
        });
    });

    $('#bolumeklebtn').on('click', function () {
        var okul = $('#okulid').val();
        if (okul < 1) return;
        var target = $('#bolumeklebtn').attr('target');

        BootstrapDialog.show({
            title: 'Bölüm Ekle',
            message: 'Bölüm Adı Giriniz: <input id="ad" type="text" class="form-control">',
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
                            url: target,
                            type: 'POST',
                            data: {
                                okul: okul,
                                ad: $('#ad').val()
                            },
                            success: function (result) {
                                if (result.Success === false) return;
                                var bolumler = $('#bolumid');
                                bolumler.empty();
                                $.each(result.Data, function (i, item) {
                                    bolumler.append('<option Value="' + item.Value + '" >' + item.Text + '</option>');
                                });
                                dialogRef.close();
                            }
                        });

                    }
                }
            ]
        });


    });

    $('#okulid').change(function () {
        var okul = $(this);
        var okulid = okul.val();
        var target = okul.attr('target');
        $.ajax({
            url: target,
            type: 'POST',
            data: {
                okulid: okulid
            },
            success: function (result) {
                console.log(result);
                if (result.Success === true) {
                    var bolum = $('#bolumid');
                    bolum.empty();
                    $.each(result.Data, function (i, item) {
                        bolum.append('<option value="' + item.Value + '">' + item.Text + '</option>');
                    });

                }
            }
        });
    });
})