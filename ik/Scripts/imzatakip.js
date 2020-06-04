var personelliste = function (url) {
    var personel = $('#personel');
    $.ajax({
        url: url,
        type: 'GET',
        data: {},
        success: function (result) {
            if (result.Success === true) {//d.adsoyad,d.id,d.mikroid,d.birim.birimad
                $.each(result.Data, function (ig, itemg) {
                    var group = $('<optgroup class="'+ig+'" label="' + itemg.Birim + '"></optgroup>');
                    $.each(itemg.Personeller, function(i, item) {
                        group.append('<option value="'+item.id+'">'+item.adsoyad+'</option>');
                    });


                    personel.append(group);
                });
                personel.multiselect({
                    maxHeight: 500,
                    includeSelectAllOption: true,
                    selectAllText: 'Tümünü Seç',
                    nonSelectedText: 'Personel Seçiniz',
                    allSelectedText: 'Tümü Seçildi',
                    enableClickableOptGroups: true,
                    enableFiltering: true

                });
            }
        }

    });
   
};
var imzalisteKaydet = function(url) {
    
    //$.each(select.val(), function(i, item) {
    //    array.push(item);
    //});
    var buton = $('#btnkaydet');
    console.log(url);
    buton.on('click', function () {
     
        var select = $('#personel');
        var grupad = $('#grupad').val();

        console.log(select.val());

        if (grupad.trim().length < 5) {
            console.log("grup adı geçersiz");
            return;
        }
        $.ajax({
            url:url,
            type:'post',
            data: {
                liste: select.val(),
                ad: grupad
            },
            success: function (result) {
                console.table(result);
                if (result.redirect !== undefined && result.redirect) {
                   
                    window.location.href = result.redirecturl;
                }
            }
        });
    });


};

  var izmatakiplistegoster = function() {
      
  };