;(function ($) {
    $.fn.extend({
        aRed: function (options) {
            var defaults = {
                'color': 'Red',
                'fontSize': '12px'
            };
            var settings = $.extend({},defaults, options);

            this.css({
                'color': settings.color,
                'fontSize':settings.fontSize
            });
            //return  不打破链式编程
            return this.each(function () {
                $(this).append(' ' + $(this).attr('href'));

            });

        }
    })

})(jQuery);


;(function ($,window,document,undefined) {
    $.fn.extend({
        aRed: function (options) {
            var defaults = {
                'color': 'Red',
                'fontSize': '12px'
            };
            var settings = $.extend({}, defaults, options);

            this.css({
                'color': settings.color,
                'fontSize': settings.fontSize
            });
            //return  不打破链式编程
            return this.each(function () {
                $(this).append(' ' + $(this).attr('href'));

            });

        }
    });

    var Beautifier=function(ele,opt){
        this.$element=ele,
        this.defaults={
            'color': 'Red',
            'fontSize': '12px',
            'textDecoration':'none'
        },
        this.options=$.extend({},this.defaults,opt);
    }

    Beautifier.prototype={
        beautify:function(){
            return this.$element.css({
              'color': this.options.color,
              'fontSize': this.options.fontSize,
              'textDecoration':this.options.textDecoration,
            });
        }
    }

    $.fn.beauty=function(options){
        
        var beautifier=new Beautifier(this,options);
        return beautifier.beautify();
    }

})(jQuery,window,document);