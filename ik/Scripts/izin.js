

function personelyarimizinyukle(url, yarimizintablo) {
    var target = $("#"+yarimizintablo);
    target.load(url, "#" + yarimizintablo);
};

function izinyillinktazele(id) {
    $('.izinyil').each(function () {
        var izin = $(this);
        izin.on('click', function () {
            BootstrapDialog.show({
                title: 'Personelin ' + id + ' yıl izin detayları',
                message: '<div id="content"><img src="@Url.Content("~/Content/Loading_icon.gif")"</div>',
                onshown: function (dialogRef) {
                    $.ajax({
                        url: izin.attr("data-target"),
                        type: 'GET',
                        data: {
                            id: id,
                            yil: izin.text()
                        },
                        success: function (result) {

                            var content = $('#content');
                            content.replaceWith(result);

                        }
                    });
                }
            });
        });
    });
}



 

