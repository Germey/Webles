// IE 6 背景图片缓存
try {
    document.execCommand("BackgroundImageCache", false, true);
} catch (e) {}

/* Tangram fix
 * ----------------------------------------------------- */
/**
 * 提供给setStyle与getStyle使用
 */
baidu.dom._styleFixer.opacity = baidu.browser.ie ? {
    get: function (element) {
        var filter = element.style.filter;
        return filter && filter.indexOf("opacity=") >= 0 ? (parseFloat(filter.match(/opacity=([^)]*)/)[1]) / 100) + "" : "1";
    },

    set: function (element, value) {
        var style = element.style;

        // IE filters only apply to elements with "layout."
        style.zoom = 1;

        // 只能Quirks Mode下面生效??
        style.filter = (style.filter || "").replace(/alpha\([^\)]*\)/gi, "") + (value == 1 ? "" : "alpha(opacity=" + value * 100 + ")");

    }
} : null;

/* 浮动层相关
 * ----------------------------------------------------- */
    function showIframeFloater(id, url) {
        var iframe = baidu.e(baidu.g(id).getElementsByTagName('iframe')[0]);
        iframe.setAttr("src", url);
        iframe.setStyle("display", "block");
        showFloater(id);
    }
    function showFloater(id) {
        var floater = baidu.e(baidu.g(id));
        floater.setStyle("display", "block"); 
        floater.center();
        Mask.show();
    }
    function hideFloater(id) {
        var floater = baidu.e(baidu.g(id));
            iframe = baidu.e(baidu.g(id).getElementsByTagName('iframe')[0]);
        floater.setStyle("display", "none"); 
        iframe.setStyle("display", "none");
        Mask.hide();
        return false;
    }
    function showIframeMask(id) {
        // TODO ie下的进度条问题
        var ifrMask = baidu.g('floaterIfrMask'),
            floater = baidu.g(id),
            floaterPos = baidu.dom.getPosition(floater),
            html,
            styles;
        if (!ifrMask) {
            html = '<iframe id="floaterIfrMask" frameborder="no" style="position:absolute;top:0;left:0;display:none;z-index:32766"></iframe>';
            baidu.dom.insertHTML(document.body, 'beforeEnd', html);
            ifrMask = baidu.g('floaterIfrMask');
        }
        styles = {
            width: floater.offsetWidth + 'px',
            height: floater.offsetHeight + 'px',
            left: floaterPos.left + 'px',
            top: floaterPos.top + 'px',
            display: 'block'
        };
        baidu.dom.setStyles(ifrMask, styles);
                
    }
    function hideIframeMask() {
        var ifrMask = baidu.g('floaterIfrMask');
        if (ifrMask) {
            baidu.dom.hide(ifrMask);
        }
    }
    // 浮动层居中
    baidu.element.extend({
        "center": function(el) {
            var libPage = baidu.page,
                vHeight = libPage.getViewHeight(),
                vWidth = libPage.getViewWidth(),
                sTop = libPage.getScrollTop(),
                sLeft = libPage.getScrollLeft();
            baidu.dom.setStyles(el, {
                top: sTop + Math.floor((vHeight - el.offsetHeight) / 2) + 'px',
                left: sLeft + Math.floor((vWidth - el.offsetWidth) / 2) + 'px'
            });
            return el;
        }        
    });

/* 遮罩层
 * ----------------------------------------------------- */
    var Mask = function () {
        if (Mask._oIns) {
            return;
        }
        else {
            Mask._oIns = this;
            var base = this._eBase = document.createElement("div");
            baidu.dom.setStyles(base, {
                display: 'none',
                position: 'absolute',
                opacity: 0.1,
                backgroundColor: '#000',
                top: 0,
                left: 0,
                zIndex: 32767
            }); 
            document.body.appendChild(base);
            this.bindEvents();
        }
    };
    Mask.show = function () {
        Mask.getIns().show();
    };
    Mask.hide = function () {
        Mask.getIns().hide();
    };
    Mask.getIns = function () {
        var ret = Mask._oIns;
        if (!ret) {
            Mask._oIns = ret = new Mask();
        }
        return ret;
    };
    Mask.prototype.bindEvents = function (el) {
        if (!this._bBindEvents) {
            var mask = this;
            baidu.on(window, 'resize', function (event) {
                mask.locate();            
            });
            baidu.on(window, 'scroll', function (event) {
                mask.locate();        
            });
            this._bBindEvents = true;
        }
    };
    Mask.prototype.show = function () {
        baidu.dom.show(this._eBase);
        this.locate();
    };
    Mask.prototype.hide = function () {
        baidu.dom.hide(this._eBase);
    }
    Mask.prototype.locate = function () {
        var libPage = baidu.page;
        baidu.dom.setStyles(this._eBase, {
            top: libPage.getScrollTop() + 'px',
            left: libPage.getScrollLeft() + 'px',
            width: libPage.getViewWidth() + 'px',
            height: libPage.getViewHeight() + 'px'
        });
    };

/* 返回顶部
 * ----------------------------------------------------- */
var ToTop = function (baseEl, refEl) {
    // 没有new时也创建对象
    if (!(this instanceof arguments.callee)) {
        return new arguments.callee(baseEl, refEl);
    }
    this._eBase = baseEl;
    this._eRef = refEl;
    // 浏览器是否支持position:fixed, 更精确的可以采用特征嗅探技术
    this._bSupportPosFixed = !baidu.browser.ie || baidu.browser.ie > 6;
    // this._bSupportPosFixed = false;
};
ToTop.prototype.init = function () {
    var self = this,
        supportPosFixed = this._bSupportPosFixed;
    
    if (supportPosFixed) {
        this.locate();
        baidu.on(window, 'resize', function () {
            self.locate();            
        });
        baidu.on(window, 'scroll', function () {
            self.showOrNot();        
            self.refreshBottomOffset();
        });
    }
    else {
        baidu.dom.setStyles(this._eBase, {
            "position": "absolute"        
        })
        this._oTimer = setTimeout(function () {
            self.locate();
                setTimeout(arguments.callee, 100);
        }, 100);
    }
};
ToTop.prototype.getHeight = function () {
    this._nBaseHeight = this._nBaseHeight || this._eBase.offsetHeight;
    return this._nBaseHeight;
};
ToTop.prototype.getWidth = function () {
    this._nBaseWidth = this._nBaseWidth || this._eBase.offsetWidth;
    return this._nBaseWidth;
};
ToTop.prototype.getRefElWidth = function () {
    this._nRefWidth = this._nRefWidth || this._eRef.offsetWidth;
    return this._nRefWidth;
};
ToTop.prototype.getRefElHeight = function () {
    this._nRefHeight = this._nRefHeight || this._eRef.offsetHeight;
    return this._nRefHeight;
};
ToTop.prototype.locate = function () {

    var refPos = baidu.dom.getPosition(this._eRef),
        libPage = baidu.page,
        viewLeft = libPage.getScrollLeft(),
        viewTop = libPage.getScrollTop(),
        viewWidth = libPage.getViewWidth(),
        viewHeight = libPage.getViewHeight();

    if (this._bSupportPosFixed) {
    
        baidu.dom.setStyles(this._eBase, {
            "position": "fixed",
            "right":  Math.max(0, viewLeft + viewWidth - refPos.left - this.getRefElWidth() - this.getWidth()) + 'px'
        });
        this.refreshBottomOffset();

    }
    else {
        baidu.dom.setStyles(this._eBase, {
            "left": Math.min(
                    refPos.left + this.getRefElWidth(), 
                    viewLeft + viewWidth - this.getWidth()
                ) + 'px',
            "top": Math.min(
                    viewTop + viewHeight - this.getHeight() - 13,
                    refPos.top + this.getRefElHeight() - this.getHeight()
                ) + 'px'
        });
    }

    this.showOrNot();

};
ToTop.prototype.showOrNot = function () {

    var refPos = baidu.dom.getPosition(this._eRef),
        libPage = baidu.page,
        viewTop = libPage.getScrollTop();

    // 离顶部还有3px时隐藏
    if (viewTop < refPos.top + 3) {
        baidu.dom.hide(this._eBase);
    }
    else {
        baidu.dom.show(this._eBase);
    }

};
ToTop.prototype.refreshBottomOffset = function () {
    if (this._bSupportPosFixed) {
               
        var refPos = baidu.dom.getPosition(this._eRef),
            libPage = baidu.page,
            viewTop = libPage.getScrollTop(),
            viewHeight = libPage.getViewHeight();
    
        baidu.dom.setStyle(
            this._eBase, 
            'bottom', 
            Math.max(
                13, 
                viewTop + viewHeight - (refPos.top + this.getRefElHeight()) 
            ) + 'px'
        );
    }
};

/* 图片弹出层
 * ----------------------------------------------------- */
var ShowBox = (function () {

    var ret = {},
        gallery = [];

    function init (contextEl) {
        baidu.array.each(
            baidu.dom.query('a[rel=showbox]', contextEl),
            function (n, i) {
                baidu.dom.addClass(n, 'zoom-in');
                gallery.push(n);
                baidu.on(n, 'click', onLinkClick);
            }
        );
        ret.bindKey();
        return ret;
    }

    function onLinkClick (e) {
        ret.showModal(this.href, this.title);
        baidu.event.preventDefault(e);
    };

    function onCloseClick (e) {
        ret.hideModal();
        baidu.event.preventDefault(e);
    };

    ret.createModal = function () {
        var modalHTML = "<div style='position:absolute;z-index:32768;background:#FFF;border:5px solid #AAA'>\
                           <a href='#' class='showbox-close' style='display:none;position:absolute;right:0;top:0;width:20px;height:20px;color:#FFF;background:#AAA'>X</a>\
                           <div class='showbox-loader' style='width:100px;height:40px;'>&nbsp;</div>\
                           <img class='zoom-out'/>\
                           <p style='text-align:right;padding:5px;color:#FFF;background:#AAA;margin:0;height:16px'><span style='float:left'></span><a style='color:#FFF;float:right' href='#'>关闭</a></p></div>";
        
        baidu.dom.insertHTML(document.body, 'beforeEnd', modalHTML);
        var modal = ret._eModal = document.body.lastChild; 

        ret._eModalImg = modal.getElementsByTagName('img')[0];
        ret._eModalLoader = modal.getElementsByTagName('div')[0];
        ret._eModalTitleBar = modal.getElementsByTagName('p')[0];
        ret._eModalTitle = ret._eModalTitleBar.firstChild;
        ret._eModalClose = ret._eModalTitleBar.lastChild;

        baidu.on(ret._eModalClose, 'click', onCloseClick);
        baidu.on(ret._eModalImg, 'click', onCloseClick);
        return modal;
    };

    ret.showModal = function (href, title) {

        var modal = ret._eModal || ret.createModal();
        baidu.e(modal).show().center();
        Mask.show();

        if (!ret._sActiveImg || ret._sActiveImg != href) {
            // 隐藏图片, 显示'加载中'
            baidu.dom.hide(ret._eModalImg);
            ret._eModalImg.removeAttribute('src');
            baidu.dom.hide(ret._eModalTitleBar);
            baidu.dom.show(ret._eModalLoader);
            baidu.e(modal).center();

            var img = new Image();
            // 邪恶的闭包
            img.onload = function () {

                var modalImg = ret._eModalImg,
                    libPage = baidu.page,
                    imgWidth = img.width,
                    imgHeight = img.height;

                modalImg.src = href;
                
                baidu.dom.hide(ret._eModalLoader);
                ret.animateShowImg(imgWidth, imgHeight, title);

            };

            img.src = href;
            ret._sActiveImg = href;
        }
        else {
            // 连续第二次点击图片时不创建image对象加载

            var modalImg = ret._eModalImg,
                imgWidth = modalImg.width,
                imgHeight = modalImg.height;

            ret.animateShowImg(imgWidth, imgHeight, title);
        }
    };

    ret.animateShowImg = function (imgWidth, imgHeight, title) {
        var modal = ret._eModal,
            modalImg = ret._eModalImg,
            libPage = baidu.page;

        modalImg.style.width = ret._eModalLoader.offsetWidth + 'px';
        modalImg.style.height = ret._eModalLoader.offsetHeight + 'px';
            
        baidu.dom.hide(ret._eModalTitleBar);
        baidu.dom.show(modalImg);

        Tween.run(
            modalImg, 
            {
                width: imgWidth,
                height: imgHeight,
                top: libPage.getScrollTop() + Math.floor((libPage.getViewHeight() - imgHeight) / 2),
                left: libPage.getScrollLeft() + Math.floor((libPage.getViewWidth() - imgWidth) / 2)
            },
            200,
            'quadOut',
            function (el) {
                var modalTitleBar = ret._eModalTitleBar;
                ret._eModalTitle.innerHTML = title ? title : '';
                baidu.e(modal).center();
                modalTitleBar.style.width = imgWidth 
                    - parseInt(modalTitleBar.style.paddingLeft, 10) 
                    - parseInt(modalTitleBar.style.paddingRight, 10) 
                    + 'px';
                baidu.dom.show(modalTitleBar);
            },
            function (el) {
                baidu.e(modal).center();
            }
        );
    };

    ret.hideModal = function () {
        baidu.dom.hide(ret._eModal);
        Mask.hide();
    };

    ret.bindKey = function () {
        baidu.on(document, 'keydown', function (e) {
            var keyCode = baidu.event.getKeyCode(e);
            if (keyCode == 27) { //ESC
                ret.hideModal();
            }
        });
    };

    return function (contextEl) {
        return init(contextEl);
    }
})();


/* 简易动画包
 * ----------------------------------------------------- */
(function () {
    var Tween = this.Tween = {},
        ins = [],
        getStyle = baidu.dom.getStyle,
        setStyle = baidu.dom.setStyle,
        unit = 10;

    function isEmptyObj (obj) {
        for (var i in obj) {
            return false;
        }
        return true;
    }

    /**
     * 运行动画, 在duration设置的毫秒后停止
     *
     * @param {HTMLElment}  el      运行动画的dom元素
     * @param {Object}      props   目标css样式的对象, 目前只能使用像素值
     * @param {Number}      duration 动画持续时间(毫秒)
     * @param {Function|String} func 缓动函数, 此参数可以为字符串, 调用组件本身(Tween.funcs中)的缓动函数, 此参数为函数时的参数如下
     *      @param {Number} t           当前步数(帧数)
     *      @param {Number} initValue   初始值
     *      @param {Number} endValue    结束值
     *      @param {Number} steps       总步数(帧数)
     * @param {Function}    oncomplete  动画全部结束时的回调函数, 参数为el, 即dom元素本身
     * @param {Function}    callback    单帧动画结束时的回调函数, 参数为el, 即dom元素本身
     */
    Tween.run = function (el, props, duration, func, oncomplete, callback) {
        var args = arguments,
            runner = (function () {
                var t = 0,
                    initProps = {};

                if (isEmptyObj(initProps)) {
                    for (var key in props) {
                        if (key == 'opacity') {
                            initProps[key] = parseFloat(getStyle(el, key), 10) || 1;
                            // alert('getStyle: ' + getStyle(el, key));
                        }
                        else {
                            initProps[key] = el.style[key] ? parseInt(el.style[key], 10) : 0;
                        }
                    } 
                }

                return function () {
                    var func = !func ? Tween.funcs['linear'] 
                            : (typeof func == 'string' ? Tween.funcs[func] : func),
                        steps = Math.ceil(duration / unit);

                    for (var key in props) {
                        if (key == 'opacity') {
                            setStyle(el, key, func(t, initProps[key], props[key], steps));
                        }
                        else {
                            el.style[key] = Math.ceil(
                                func(t, initProps[key], props[key], steps)) + 'px';            
                        }
                    }
                     
                    if (t < steps) {
                        callback && callback.call(null, el);
                        t++;
                        setTimeout(function () {
                            runner.apply(null, args);
                        }, unit);
                    }
                    else {
                        t = initProps = null;
                        oncomplete && oncomplete.call(null, el);
                    }
                }; // end return
        })(); // end runner

        runner();
    }; 

    Tween.funcs = {
        /**
         * 匀速变化函数, 默认
         */
        'linear': function (t, initValue, endValue, steps) {
            var ret = (endValue - initValue) * (t / steps) + initValue;
            return ret;
        },
        /**
         * 二次缓动函数
         * 返回值随着t增大由initVal向endVal变化(f(0) = initVal, f(step) = endVal)
         * 变化速度递减, 实现缓动效果
         */
        'quadOut': function (t, initValue, endValue, steps) {
            var ret  = - (endValue - initValue) * (t /= steps) * (t - 2) + initValue;
            return ret;
        }
    };
})();


/* 文档格式整理
 * ----------------------------------------------------- */
/**
 * 按文章内容生成导航(用于产品与服务)
 *
 * @param {String} 标题元素css选择器
 * @param {String} 导航容器css选择器
 * @param {String} 上下文css选择器
 */
function generateNav(srcSel, targetSel, contextSel) {
    try {
        var targetEl = baidu.dom.query(contextSel + ' ' + targetSel)[0],
            srcEls = baidu.dom.query(contextSel + ' ' + srcSel),
            rand = Math.floor(Math.random() * 100),
            html = [];

        baidu.array.each(srcEls, function (n, i) {
            n.id = "sub" + rand++;
            html.push(
                baidu.string.format(
                    '<li class="#{0}"><a href="##{1}">#{2}</a></li>',
                    (i == srcEls.length - 1) ? "last" : "",
                    n.id,
                    n.innerHTML
                )    
            );                
        });

        targetEl.innerHTML = html.join('');
    }
    catch (e) {}
}


/* 首页图片切换
 * ----------------------------------------------------- */
var Banner = (function () {
    var ret = {},
        items = [],
        indexes = [],
        lastItemIndex,
        o;

    ret.init = function (el, data, autoPlay) {
        baidu.array.each(data, function(n, i) {
           var html = '<a class="ba-img" target="_blank" href="' + n.href 
                + '" style="display:none;background-image:url(\'' + n.img + '\')"></a>';
            baidu.dom.insertHTML(el, 'beforeEnd', html);
            items.push(el.lastChild);
            baidu.dom.setStyle(el.lastChild, 'opacity', 0.01);
        }); 
        baidu.dom.insertHTML(el, 'beforeEnd', '<div class="ba-index clearfix"></div>');
        o = el.lastChild;
        for (var i = 0, len = data.length; i < len; i++) {
            baidu.dom.insertHTML(o, 'beforeEnd', '<a href="#">' + (i+1) + '</a>');
            indexes.push(o.lastChild);
            baidu.on(o.lastChild, 'click', (function () {
                var index = i;
                return function (e) {
                    ret.display(index);
                    baidu.event.preventDefault(e);    
                }
            })());
        }
        el.style.backgroundImage = "none";
        ret.display(0);
        if (autoPlay) {
            ret.startTimer();
        }
    };
    ret.startTimer = function () {
        var interval = 5000;
        ret._oTimer = setTimeout((function () {
            var i = typeof lastItemIndex == 'undefined' ? 0 : lastItemIndex,
                len = items.length;
            return function () {
                ret.display(i++ % len);
                ret._oTimer = setTimeout(arguments.callee, interval);
            }
        })(), 10);
    };

    ret.stopTimer = function () {
        clearTimeout(ret._oTimer);
    };
    ret.display = function (index, isClick) {
        var curItem = items[index],
            lastItem;

        if (typeof lastItemIndex != 'undefined') {

            if (lastItemIndex == index) {
                return;
            }

            lastItem = items[lastItemIndex];
            baidu.dom.removeClass(indexes[lastItemIndex], 'cur');
            Tween.run(lastItem, {opacity: 0.01}, 300, null, function (el) {
                baidu.dom.hide(el);        
            });
        }

        baidu.dom.addClass(indexes[index], 'cur');
        
        baidu.dom.show(curItem);
        Tween.run(curItem, {opacity: 0.99}, 300, null, function (el) {
             if (isClick) {
                // 重置计时器
                ret.stopTimer();
                ret.startTimer();
            }
            baidu.dom.show(el);
        });
        lastItemIndex = index;

    };

    return ret;
})();
