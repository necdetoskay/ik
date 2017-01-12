$.validator.methods["date"] = function (value, element) { return true; };

$.datepicker.regional['tr'] = {
    closeText: "Kapat",
    currentText: "Bugün",
    nextText: "Sonraki",
    prevText: "Önceki",
    monthNames: ["Ocak", "Şubat", "Mart", "Nisan", "Mayıs", "Haziran", "Temmuz", "Ağustos", "Eylül", "Ekim", "Kasım", "Aralık"],
    monthNamesShort: ["Ocak", "Şubat", "Mart", "Nisan", "Mayıs", "Haziran", "Temmuz", "Ağustos", "Eylül", "Ekim", "Kasım", "Aralık"],
    dayNames: ["Pazar", "Pazartesi", "Salı", "Çarşamba", "Perşembe", "Cuma", "Cumartesi"],
    dayNamesShort: ["Pzr", "Pzt", "Sal", "Çrş", "Prş", "Cum", "Cmt"],
    dayNamesMin: ["Pzr", "Pzt", "Sal", "Çrş", "Prş", "Cum", "Cmt"],
    showOn: 'button',
    dateFormat: 'dd.mm.yy',
    changeMonth: true,
    changeYear: true,
    showOtherMonths: true,
    selectOtherMonths: true,
    beforeShow: function () {
        $(".ui-datepicker").css('width', 'auto');
    },
    onSelect: function (dateText, inst) {
        $(".datefield").text(dateText);
    }
};
$(".datefield").datepicker($.datepicker.regional["tr"]).attr('readonly', 'readonly');