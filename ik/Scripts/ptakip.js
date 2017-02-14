if (typeof jQuery === "undefined") {
    throw new Error("Bootstrap's JavaScript requires jQuery");
}
String.prototype.toDDMMYYY=function() {
    var giris = new Date(parseInt(this.substr(6)));
    return giris.getDate() + "/" + (giris.getMonth() + 1) + "/" + giris.getFullYear();
}

