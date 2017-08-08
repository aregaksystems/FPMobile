$(function () {
    "use strict";
    $.fn.changelang = function (options) {
        var settings = $.extend({ ctrId: null, ctrTag: null }, options);
        var filePath = "../JSON/lang.json";
        var id = this.attr("id");
        var json = (function () {
            var json = null;
            $.ajax({
                'async': false,
                'global': false,
                'url': filePath,
                'dataType': "json",
                'success': function (data) {
                    json = data;
                }
            });
            return json;
        })();
        return this.each(function () {

            if (isLangExsits) {
                var jsonarray = json["CurrentLang"];
                if (jsonarray.name=="En") {
                    jsonarray.name = "Ar";
                }


            }


        });
    }


})