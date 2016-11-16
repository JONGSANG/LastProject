/**
 * When I noticed the growing popularity of JS-Slide and JS-Fade effects I have
 * decide to develop a plugin for jQuery. This plugin will help you to add thise
 * effects to the site in more simple way.
 * Note: If the mousewheel plugin has been included on the page then the slider will
 * also respond to the mouse wheel.
 *
 * @name jQuery ulSlide plugin
 * @license GPL
 * @version 1.39
 * @date September 17, 2010
 * @category jQuery plugin
 * @author Kotelnitskiy Evgeniy (evgennniy@gmail.com)
 * @copyright (c) 2010 Kotelnitskiy Evgeniy (http://4coder.info/en/)
 * @example Visit http://4coder.info/en/jquery-ulslide-2/ for more informations about this jQuery plugin
 */
ulslide_last_id = 0;
(function($) {
    jQuery.fn.ulslide = function(settings) {
        var thisObj = this;
        if (thisObj.length == 0) return false;
        var thisEl = thisObj[0];
        if (! jQuery(thisEl).attr('id')) {
            ulslide_last_id ++;
            jQuery(thisEl).attr('id', 'ulslide-' + ulslide_last_id);
        }
        var id = jQuery(thisEl).attr('id');

        // Settings
        settings = jQuery.extend({
            axis: 'x', // x, y
            direction: 'f', // f, b
            affect: 'slide', // slide, fade
            duration: 600,
            width: thisObj.width(),
            height: 'auto', // auto
            statusbar: false,
            padding: 20,
            lionpage: 1,
            autoslide: false,
            current: 0,
            bnext: false,
            bprev: false,
            navigator: false,
            print_current: false,
            mousewheel: false,
            onAnimate: function(settings, thisEl){}
        },settings);


        settings['prev'] = settings['current'];
        settings['count'] = jQuery('> li', thisObj).length;
        jQuery('> li', thisObj).each(function(i){
            var liel = jQuery(this);
            liel.addClass('slide-node slide-node-'+i);
            liel.css("position", 'absolute');
            liel.css("margin", '0');
            liel.css("padding", '0');
            liel.css("width", settings['width']);
            liel.css("overflow", "hidden");
            if (i == settings['current']){
                liel.css("top", '0');
                liel.css("left", '0');
            }
            else{
                liel.css("top", '0');
                liel.css("left", -(settings['width'] + settings['padding']));
            }
        });

        thisObj.css("list-style", "none");
        thisObj.css("padding", "0");
        thisObj.css("position", "relative");
        thisObj.css("overflow", "hidden");
        thisObj.css("width", settings['width']);
        if (settings['height'] == 'auto'){
            thisObj.css("height", jQuery('> li:eq('+settings['current']+')', thisObj).height());
        }
        else thisObj.css("height", settings['height']);
        settings['prevHeight'] = settings['height'];

        // statusbar
        if (settings['statusbar']){
            settings['img_count'] = this.find('img').length;
            if (settings['img_count']){
                thisObj.append('<li class="ulslide-statusbar" id="'+id+'-statusbar" style="position: absolute; padding:0; margin:0; width:'+settings['width']+'px; height:'+thisObj.css("height")+'; "><span>Loading...</span></li>');
            }
            settings['img_loaded'] = 0;
            this.find('img').each(function(){
                if (this.complete) {
                    settings['img_loaded'] ++;
                }
                else {
                    jQuery(this).load(function(){
                        settings['img_loaded'] ++;
                        //alert(settings['img_loaded'] + ' of ' + settings['img_count']);
                        //jQuery('#'+id+'-statusbar').html('Loading... (' + settings['img_loaded'] + ' of ' + settings['img_count'] + ')');
                        jQuery('#'+id+'-statusbar').html('Loading...');
                        if (settings['img_loaded'] == settings['img_count']){
                            jQuery('#'+id+'-statusbar').remove();
                            thisEl.ready = true;
                        }
                    });
                }
                //alert(settings['img_loaded'] + ' of ' + settings['img_count']);
                //jQuery('#'+id+'-statusbar').html('Loading... (' + settings['img_loaded'] + ' of ' + settings['img_count'] + ')');
                jQuery('#'+id+'-statusbar').html('Loading...');
                if (settings['img_loaded'] == settings['img_count']){
                    jQuery('#'+id+'-statusbar').remove();
                    thisEl.ready = true;
                }
            });
        }


        function getSlide(num) {
            return jQuery('> li:eq('+num+')', thisObj);
        }
		
        function next() {
            settings['direction'] = 'f';
            var c = thisEl.uslCurrent();
            if (c + 1 < settings['count']) {
                thisEl.uslCurrent(c + 1);
            } else {
                thisEl.uslCurrent(0);
            }
            thisEl.uslRefresh();
        }
		
        function prev() {
            settings['direction'] = 'b';
            var c = thisEl.uslCurrent();
            if (c > 0) {
                thisEl.uslCurrent(c - 1);
            } else {
                thisEl.uslCurrent(settings['count'] - 1);
            }
            thisEl.uslRefresh();
        }

        if (settings['height'] == 'auto')
            thisEl.currentHeight = getSlide(settings['current']).height();
        else thisEl.currentHeight = settings['height'];

        thisEl.uslCurrent = function(new_value){
            if (new_value == undefined){
                return settings['current'];
            }
            else{
                settings['current'] = new_value;
                return new_value;
            }
        }

        thisEl.autoslideNext = function(){
            if (settings['current'] < settings['count'] - 1) settings['current'] ++;
            else settings['current'] = 0;
            this.uslRefresh();
        };

        thisEl.initAutoslide = function(){
            if (settings['TimeoutID']) clearTimeout(settings['TimeoutID']);
            settings['TimeoutID'] = setTimeout("jQuery('#"+jQuery(thisEl).attr('id')+"')[0].autoslideNext()", settings['autoslide']);
        };

        thisEl.clearAutoslide = function(){
            if (settings['TimeoutID']) {
                clearTimeout(settings['TimeoutID']);
            }
        };

        thisEl.uslRefresh = function(){
            if (! thisEl.ready) {
                setTimeout("jQuery('#"+jQuery(thisEl).attr('id')+"')[0].uslRefresh()", 200);
                return;
            }
            thisEl.ready = false;

            thisEl.clearAutoslide();
            var prev = getSlide(settings['prev']);
            var current = getSlide(settings['current']);

            if (settings['height'] == 'auto') {
                thisEl.currentHeight = getSlide(settings['current']).height();
                settings['prevHeight'] = getSlide(settings['prev']).height();
            }

            if (settings['affect'] == 'slide'){
                if (settings['axis'] == 'x'){
                    if (settings['prev'] != settings['current']){
                        if (settings['direction'] == 'f'){
                            prev.animate({
                                'left': -(settings['width'] + settings['padding'])
                                }, settings['duration']);
                            current.css('left', settings['width'] + settings['padding']);
                        }
                        else{
                            prev.animate({
                                'left': settings['width'] + settings['padding']
                                }, settings['duration']);
                            current.css('left', -(settings['width'] + settings['padding']));
                        }
                    }
                    current.animate({
                        'left': 0
                    }, settings['duration'], function(){
                        thisEl.ready = true;
                    });
                }
                else {
                    if (settings['prev'] != settings['current']){
                        if (settings['direction'] == 'f'){
                            prev.animate({
                                'top': thisEl.currentHeight + settings['padding']
                                }, settings['duration'], function(){
                                prev.css('left', -(settings['width'] + settings['padding']));
                            });
                            current.css('top', -(settings['prevHeight'] + settings['padding']));
                        }
                        else{
                            prev.animate({
                                'top': -(thisEl.currentHeight + settings['padding'])
                                }, settings['duration'], function(){
                                prev.css('left', -(settings['width'] + settings['padding']));
                            });
                            current.css('top', settings['prevHeight'] + settings['padding']);
                        }
                    }
                    current.css('left', 0);
                    current.animate({
                        'top': 0
                    }, settings['duration'], function(){
                        thisEl.ready = true;
                    });
                }
            }
            else if (settings['affect'] == 'fade'){
                if (settings['prev'] != settings['current']){
                    current.css('display', 'none');
                    current.css('z-index', 2);
                    current.css('left', 0);
                    current.css('top', 0);
                    prev.css('z-index', 1);
                    prev.fadeOut(settings['duration'], function(){
                        prev.css('display', 'none');
                        current.fadeIn(settings['duration'], function(){
                            thisEl.ready = true;
                        });
                    });
                }
                else thisEl.ready = true;
            }

            if (settings['height'] == 'auto') {
                thisObj.animate({
                    'height': thisEl.currentHeight
                    }, settings['duration']);
            }

            if (settings['print_current']) {
                jQuery(settings['print_current']).html(settings['current'] + 1);
            }

            settings['prev'] = settings['current'];
            if (settings['autoslide']) thisEl.initAutoslide();
            settings['onAnimate'](settings, thisEl);
            thisEl.uslRefreshClasses();
            //settings['affect'] = (settings['affect'] == 'slide') ? 'fade' : 'slide'; // slide, fade
        };

        thisEl.uslRefreshClasses = function(){
            if (settings['count'] > 1){
                if (settings['bnext']) jQuery(settings['bnext']).addClass('active');
                if (settings['bprev']) jQuery(settings['bprev']).addClass('active');
            }
            if (settings['navigator']){
                jQuery(settings['navigator']).removeClass('usl-current');
                jQuery(settings['navigator'] + '.usl-navigator-'+thisEl.uslCurrent()).addClass('usl-current');
                jQuery(settings['navigator']).parent().removeClass('usl-current-parent');
                jQuery(settings['navigator'] + '.usl-navigator-'+thisEl.uslCurrent()).parent().addClass('usl-current-parent');
            }
        };

        if (settings['bnext']){
            $(settings['bnext']).click(function(){
                next();
                return false;
            });
        }
		
        if (settings['bprev']){
            $(settings['bprev']).click(function(){
                prev();
                return false;
            });
        }

        if (settings['navigator']){
            var navigator = jQuery(settings['navigator']);
            navigator.each(function(index){
                this.usl_navigator_index = index;
                jQuery(this).addClass('usl-navigator-' + index);
            });
			
            navigator.click(function(){
                var c = this.usl_navigator_index;
                if ((c < settings['count']) && (c != thisEl.uslCurrent())) {
                    if (c > thisEl.uslCurrent()) settings['direction'] = 'f';
                    else settings['direction'] = 'b';
                    thisEl.uslCurrent(c);
                    thisEl.uslRefresh();
                }
                return false;
            });
        }

        /*
         * If the mousewheel plugin has been included on the page then
         * the slider will also respond to the mouse wheel.
         */
        if (settings['mousewheel']) {
            thisObj.bind(
                'mousewheel',
                function (event, delta) {
                    if (thisEl.ready) {
                        if (delta < 0) {
                            next();
                        }
                        else {
                            prev();
                        }
                    }
                    return false;
                }
                );
        }

        if (! settings['statusbar']) thisEl.ready = true;
        thisEl.uslRefresh();

    };
})(jQuery); 