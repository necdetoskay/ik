//http://https://javascript-minifier.com/


if (typeof jQuery === 'undefined') {
    throw new Error('jQuery yüklenmemiş');
}
//if (typeof BootstrapDialog === 'undefined') {
//    throw new Error('BootstrapDialog yüklenmemiş');
//}
//+function ($) {

//}(jQuery);

//$('#gorevtip').MakeEditable({
//    add: {//yeni ekleme butonu parametreleri
//        url: '@Url.Action("_GorevTipEkle")',//yeni kaydı database e ekleme url si
//        data_id: -1,
//        label: 'Ekle',//buton üzerinde yazan yazı
//        title: 'Görev Tipi' //dialog title
//    }
//});




(function ($) {
    // ReSharper disable once InconsistentNaming
    function Generator() { };
    Generator.prototype.rand = Math.floor(Math.random() * 26) + Date.now();
    Generator.prototype.getId = function () {
        return this.rand++;
    };
    var idgen = new Generator();

    ///////////////////
    //ÖRNEK
    //$('#kurultip').MakeEditable({
    //    fill: {
    //        url: '@Url.Action("_KurulTipListe")'
    //    }, add: {//yeni ekleme butonu parametreleri
    //        url: '@Url.Action("_KurulTipEkle")',//yeni kaydı database e ekleme url si
    //        data_id: -1,
    //        label: 'Ekle',//buton üzerinde yazan yazı
    //        title: 'Kurul Tipi' //dialog title
    //    }
    //});

    //$('#gorevtip').MakeEditable({
    //    cascade: {
    //        url: '@Url.Action("_GorevTipYukle")',
    //        sourceid: 'kurultip'
    //    }, add: {//yeni ekleme butonu parametreleri
    //        url: '@Url.Action("_GorevTipEkle")',//yeni kaydı database e ekleme url si
    //        data_id: -1,
    //        label: 'Görev Ekle',//buton üzerinde yazan yazı
    //        title: 'Görev Tipi' //dialog title
    //    }
    //});



    $.fn.MakeEditable = function (options) {
        var settings = $.extend({
            cascade: null,
            fill: {//veri yükleme parametreleri
                url: null,//yükleme url
                data: null,//yükleme parametre
                option: null,//default option text
                selected: null,
                action: function () {//yüklemeden sonra yapılacak olanlar

                }
            },
            add: {//veri ekleme parametreleri
                btnlabel: 'Ekle',//ekleme buton yazısı
                label: null,//input label yazısı
                url: null,//ekleme url
                data: null,//ekleme parametre
                option: null,//default option text
                action: null//eklemeden sonra yapılacak olanlar
            },//veri ekleme parametreleri
            option: null,//'.... giriniz v.b.'
            data_id: -1

            //complete: null
        }, options);

        var yukle = function (furl, fdata, fselect, foption, selected) {
            $.ajax({
                url: furl,
                type: 'GET',
                data: fdata,
                success: function (result) {
                    if (result.Success === true) {
                        fselect.empty();
                        var data = result.Data;
                        fselect.append('<option value=-1>' + foption + '</option>');
                        $.each(data, function (i, item) {
                            fselect.append('<option value="' + item.Value + '">' + item.Text + '</option>');
                        });
                        if (selected != null) {
                            fselect.val(selected);
                        }
                    }


                }
            });
        };


        return this.each(function () {

            if (!$(this).is('select')) {
                throw new Error('Select değil');
            }
            var select = $(this);

            if (settings.fill != null) {
                //
                var furl = settings.fill.url;
                var fdata = null;
                var fselect = select;
                var foption = 'Seçiniz !';
                yukle(furl, fdata, fselect, foption, settings.fill.selected);
                if (settings.fill.action != null) {
                    select.change(function () {
                        settings.fill.action(select.val());
                    });
                }



            }

            if (settings.add !== null) {

                if (settings.add.label !== null) {
                    var btnid = idgen.getId();
                    select.after('<button id="' + btnid + '" type="button" class="btn btn-primary">' + settings.add.label + '</button>');
                    var url = settings.add.url;

                    if (url !== null) {

                        var btn = $('#' + btnid);

                        btn.on('click', function () {
                            var $this = $(this);
                            var dataid = -1;
                            if (settings.cascade !== null) {
                                var s = $('#' + settings.cascade.sourceid);
                                dataid = s.val();
                                console.log(dataid);
                                if (dataid < 0) {
                                    return;
                                }
                            }

                            BootstrapDialog.show({
                                title: settings.add.title,
                                message: settings.add.title + ' Giriniz: <input id="ad" type="text" class="form-control">',
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
                                                url: settings.add.url,
                                                type: 'POST',
                                                data: {
                                                    ad: $('#ad').val(),
                                                    id: dataid
                                                },
                                                success: function (result) {
                                                    console.log(result);
                                                    if (result.Success === false) return;

                                                    select.empty();
                                                    var option = settings.option === null ? "Seçiniz !" : settings.option;
                                                    select.append('<option value="-1">' + option + '</option>');
                                                    $.each(result.Data, function (i, item) {
                                                        select.append('<option Value="' + item.Value + '" >' + item.Text + '</option>');
                                                    });
                                                    select.val(result.Selected);
                                                    dialogRef.close();
                                                }
                                            });
                                        }
                                    }
                                ]
                            });


                        });
                    }

                }
            }

            if (settings.source !== null) {//cascade için seçilen parent e ait alt kayıtları yükle
                var source = $('#' + settings.source);//source select
                source.change(function () {//source select selection change
                    var selected = source.val();
                    yukle(settings.source.url, { id: selected }, $(this), 'Seçiniz', null);
                    //seçilen id ye göre kayıtları yükle

                });
            }
            if (settings.cascade !== null) {
                var src = $('#' + settings.cascade.sourceid);
                if (src.length > 0) {
                    var $this = $(this);
                    src.change(function () {
                        var v = src.val();
                        console.log(v);
                        if (v < 0) {
                            $this.empty();
                            return;
                        }
                        //id ye göre yükle
                        yukle(settings.cascade.url, { id: v }, $this, 'Seçiniz', null);
                    });

                }
            }




        });
    }


}(jQuery));