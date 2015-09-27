/* 
* tableUI 0.1 
* Copyright (c) 2009 YangYiliang http://justinyoung.cnblogs.com/ 
* Date: 2014-12-22
* 使用tableUI可以方便地将表格提示使用体验。先提供的功能有奇偶行颜色交替，鼠标移上高亮显示 
*/ 
(function () {
    $.fn.tableUI = function (options) {
        var defaults = {
            evenRowClass: "evenRow",
            oddRowClass: "oddRow",
            activeRowClass: "activeRow"
        };

        var options = $.extend({}, defaults, options);


        //this.each(function () {
            var thistable = $(this);
            $(thistable).find("tr:even").addClass(options.evenRowClass);
            $(thistable).find("tr:odd").addClass(options.oddRowClass);
            $(thistable).find("tr").bind("mouseover", function () {
                $(this).addClass(options.activeRowClass);

            });

            $(thistable).find("tr").bind("mouseout", function () {
                $(this).removeClass(options.activeRowClass);
            });

        //});
    };
})();