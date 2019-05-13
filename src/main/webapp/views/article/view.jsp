<%--
  Created by IntelliJ IDEA.
  User: Smiker
  Date: 2019-05-12
  Time: 18:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!doctype html>


<html class="theme-next muse use-motion" lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <link href="../../css/article/lib/fancybox/source/jquery.fancybox.css?v=2.1.5" rel="stylesheet" type="text/css"/>
    <link href="//fonts.googleapis.com/css?family=Lato:300,300italic,400,400italic,700,700italic&subset=latin,latin-ext"
          rel="stylesheet" type="text/css">
    <link href="../../css/article/lib/font-awesome/css/font-awesome.min.css?v=4.6.2" rel="stylesheet" type="text/css"/>
    <link href="../../css/article/css/main.css?v=5.1.0" rel="stylesheet" type="text/css"/>

    <script type="text/javascript" id="hexo.configurations">
        var NexT = window.NexT || {};
        var CONFIG = {
            root: '/',
            scheme: 'Muse',
            sidebar: {
                "position": "left",
                "display": "post",
                "offset": 12,
                "offset_float": 0,
                "b2t": false,
                "scrollpercent": false
            },
            fancybox: true,
            motion: true,
            duoshuo: {
                userId: '0',
                author: 'Author'
            },
            algolia: {
                applicationID: '',
                apiKey: '',
                indexName: '',
                hits: {"per_page": 10},
                labels: {
                    "input_placeholder": "Search for Posts",
                    "hits_empty": "We didn't find any results for the search: ${query}",
                    "hits_stats": "${hits} results found in ${time} ms"
                }
            }
        };
    </script>

    <title> Title </title>
</head>

<body itemscope itemtype="http://schema.org/WebPage" lang="en">


<script>
    (function (i, s, o, g, r, a, m) {
        i['GoogleAnalyticsObject'] = r;
        i[r] = i[r] || function () {
            (i[r].q = i[r].q || []).push(arguments)
        }, i[r].l = 1 * new Date();
        a = s.createElement(o),
            m = s.getElementsByTagName(o)[0];
        a.async = 1;
        a.src = g;
        m.parentNode.insertBefore(a, m)
    })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');
    ga('create', 'UA-97337454-1', 'auto');
    ga('send', 'pageview');
</script>


<div class="container sidebar-position-left page-post-detail ">
    <div class="headband"></div>

    <header id="header" class="header" itemscope itemtype="http://schema.org/WPHeader">
        <div class="header-inner">
            <div class="site-brand-wrapper">
                <div class="site-meta ">


                    <div class="custom-logo-site-title">
                        <a href="/'${username}'/article/list" class="brand" rel="start">
                            <span class="logo-line-before"><i></i></span>
                            <span class="site-title">Site title</span>
                            <span class="logo-line-after"><i></i></span>
                        </a>
                    </div>

                    <p class="site-subtitle">个性一些的签名</p>

                </div>

                <div class="site-nav-toggle">
                    <button>
                        <span class="btn-bar"></span>
                        <span class="btn-bar"></span>
                        <span class="btn-bar"></span>
                    </button>
                </div>
            </div>

            <nav class="site-nav">
                <ul id="menu" class="menu">

                    <li class="menu-item menu-item-home">
                        <a href="/'${username}'/article/list" rel="section">
                            <i class="menu-item-icon fa fa-fw fa-home"></i> <br/>
                            Home
                        </a>
                    </li>


                    <%--                    <li class="menu-item menu-item-categories">--%>
                    <%--                        <a href="/categories" rel="section">--%>
                    <%--                            <i class="menu-item-icon fa fa-fw fa-th"></i> <br/>--%>
                    <%--                            Categories--%>
                    <%--                        </a>--%>
                    <%--                    </li>--%>

                    <li class="menu-item menu-item-about">
                        <a href="/'${username}'/about" rel="section">
                            <i class="menu-item-icon fa fa-fw fa-user"></i> <br/>
                            About
                        </a>
                    </li>


                    <%--                    <li class="menu-item menu-item-tags">--%>
                    <%--                        <a href="/tags" rel="section">--%>
                    <%--                            <i class="menu-item-icon fa fa-fw fa-tags"></i> <br/>--%>
                    <%--                            Tags--%>
                    <%--                        </a>--%>
                    <%--                    </li>--%>


                    <%--                    <li class="menu-item menu-item-search">--%>
                    <%--                        <a href="javascript:;" class="popup-trigger">--%>
                    <%--                            <i class="menu-item-icon fa fa-search fa-fw"></i> <br/>--%>
                    <%--                            Search--%>
                    <%--                        </a>--%>
                    <%--                    </li>--%>

                </ul>

                <div class="site-search">
                    <div class="popup search-popup local-search-popup">
                        <div class="local-search-header clearfix">
    <span class="search-icon">
      <i class="fa fa-search"></i>
    </span>
                            <span class="popup-btn-close">
      <i class="fa fa-times-circle"></i>
    </span>
                            <div class="local-search-input-wrapper">
                                <input autocapitalize="off" autocomplete="off" autocorrect="off"
                                       placeholder="Searching..." spellcheck="false"
                                       type="text" id="local-search-input">
                            </div>
                        </div>
                        <div id="local-search-result"></div>
                    </div>
                </div>
            </nav>
        </div>
    </header>

    <main id="main" class="main">
        <div class="main-inner">
            <div class="content-wrap">
                <div id="content" class="content">
                    <div id="posts" class="posts-expand">
                        <article class="post post-type-normal " itemscope itemtype="http://schema.org/Article">
                            <header class="post-header">


                                <h1 class="post-title" itemprop="name headline">
                                    文章标题
                                </h1>

                                <div class="post-meta">
          <span class="post-time">
              <span class="post-meta-item-icon">
                <i class="fa fa-calendar-o"></i>
              </span>
                <span class="post-meta-item-text">Posted on</span>
              <time title="Post created" itemprop="dateCreated datePublished">
                时间
              </time>
          </span>
                                </div>
                            </header>

                            <div class="post-body" itemprop="articleBody">
                                正文
                            </div>

                        </article>
                        <div class="post-spread">
                        </div>
                    </div>
                </div>
                <div class="comments" id="comments">
                    <div id="hypercomments_widget"></div>
                </div>
            </div>

            <%--            <div class="sidebar-toggle">--%>
            <%--                <div class="sidebar-toggle-line-wrap">--%>
            <%--                    <span class="sidebar-toggle-line sidebar-toggle-line-first"></span>--%>
            <%--                    <span class="sidebar-toggle-line sidebar-toggle-line-middle"></span>--%>
            <%--                    <span class="sidebar-toggle-line sidebar-toggle-line-last"></span>--%>
            <%--                </div>--%>
            <%--            </div>--%>

            <%--            <aside id="sidebar" class="sidebar">--%>
            <%--                <div class="sidebar-inner">--%>

            <%--                    <section class="site-overview sidebar-panel sidebar-panel-active">--%>
            <%--                        <div class="site-author motion-element" itemprop="author" itemscope--%>
            <%--                             itemtype="http://schema.org/Person">--%>
            <%--                            <img class="site-author-image" itemprop="image"--%>
            <%--                                 src="/uploads/avatar.png"--%>
            <%--                                 alt="Ucm"/>--%>
            <%--                            <p class="site-author-name" itemprop="name">Ucm</p>--%>
            <%--                            <p class="site-description motion-element" itemprop="description"></p>--%>

            <%--                        </div>--%>
            <%--                        <nav class="site-state motion-element">--%>

            <%--                        </nav>--%>
            <%--                    </section>--%>
            <%--                </div>--%>
            <%--            </aside>--%>

        </div>
    </main>

    <footer id="footer" class="footer">
        <div class="footer-inner">
            <div class="copyright">

                &copy; 2019 -
                <span itemprop="copyrightYear">2019</span>
                <span class="with-love">
    <i class="fa fa-heart"></i>
  </span>
                <span class="author" itemprop="copyrightHolder">Ucm</span>
            </div>
        </div>
    </footer>


    <div class="back-to-top">
        <i class="fa fa-arrow-up"></i>
    </div>


</div>


<script type="text/javascript">
    if (Object.prototype.toString.call(window.Promise) !== '[object Function]') {
        window.Promise = null;
    }
</script>

<script type="text/javascript" src="../../css/article/lib/jquery/index.js?v=2.1.3"></script>
<script type="text/javascript" src="../../css/article/lib/fastclick/lib/fastclick.min.js?v=1.0.6"></script>
<script type="text/javascript" src="../../css/article/lib/jquery_lazyload/jquery.lazyload.js?v=1.9.7"></script>
<script type="text/javascript" src="../../css/article/lib/velocity/velocity.min.js?v=1.2.1"></script>
<script type="text/javascript" src="../../css/article/lib/velocity/velocity.ui.min.js?v=1.2.1"></script>
<script type="text/javascript" src="../../css/article/lib/fancybox/source/jquery.fancybox.pack.js?v=2.1.5"></script>
<script type="text/javascript" src="../../css/article/js/src/utils.js?v=5.1.0"></script>
<script type="text/javascript" src="../../css/article/js/src/motion.js?v=5.1.0"></script>
<script type="text/javascript" src="../../css/article/js/src/scrollspy.js?v=5.1.0"></script>
<script type="text/javascript" src="../../css/article/js/src/post-details.js?v=5.1.0"></script>
<script type="text/javascript" src="../../css/article/js/src/bootstrap.js?v=5.1.0"></script>


<script type="text/javascript">
    _hcwp = window._hcwp || [];

    _hcwp.push({widget: "Bloggerstream", widget_id: 89662, selector: ".hc-comment-count", label: "{\%COUNT%\}"});


    _hcwp.push({widget: "Stream", widget_id: 89662, xid: "2019/05/12/Spring的小坑/"});


    (function () {
        if ("HC_LOAD_INIT" in window) return;
        HC_LOAD_INIT = true;
        var lang = (navigator.language || navigator.systemLanguage || navigator.userLanguage || "en").substr(0, 2).toLowerCase();
        var hcc = document.createElement("script");
        hcc.type = "text/javascript";
        hcc.async = true;
        hcc.src = ("https:" == document.location.protocol ? "https" : "http") + "://w.hypercomments.com/widget/hc/89662/" + lang + "/widget.js";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hcc, s.nextSibling);
    })();
</script>


<script type="text/javascript">
    // Popup Window;
    var isfetched = false;
    // Search DB path;
    var search_path = "search.xml";
    if (search_path.length == 0) {
        search_path = "search.xml";
    }
    var path = "/" + search_path;

    // monitor main search box;

    function proceedsearch() {
        $("body")
            .append('<div class="search-popup-overlay local-search-pop-overlay"></div>')
            .css('overflow', 'hidden');
        $('.popup').toggle();
    }

    // search function;
    var searchFunc = function (path, search_id, content_id) {
        'use strict';
        $.ajax({
            url: path,
            dataType: "xml",
            async: true,
            success: function (xmlResponse) {
                // get the contents from search data
                isfetched = true;
                $('.popup').detach().appendTo('.header-inner');
                var datas = $("entry", xmlResponse).map(function () {
                    return {
                        title: $("title", this).text(),
                        content: $("content", this).text(),
                        url: $("url", this).text()
                    };
                }).get();
                var $input = document.getElementById(search_id);
                var $resultContent = document.getElementById(content_id);
                $input.addEventListener('input', function () {
                    var matchcounts = 0;
                    var str = '<ul class=\"search-result-list\">';
                    var keywords = this.value.trim().toLowerCase().split(/[\s\-]+/);
                    $resultContent.innerHTML = "";
                    if (this.value.trim().length > 1) {
                        // perform local searching
                        datas.forEach(function (data) {
                            var isMatch = false;
                            var content_index = [];
                            var data_title = data.title.trim().toLowerCase();
                            var data_content = data.content.trim().replace(/<[^>]+>/g, "").toLowerCase();
                            var data_url = decodeURIComponent(data.url);
                            var index_title = -1;
                            var index_content = -1;
                            var first_occur = -1;
                            // only match artiles with not empty titles and contents
                            if (data_title != '') {
                                keywords.forEach(function (keyword, i) {
                                    index_title = data_title.indexOf(keyword);
                                    index_content = data_content.indexOf(keyword);
                                    if (index_title >= 0 || index_content >= 0) {
                                        isMatch = true;
                                        if (i == 0) {
                                            first_occur = index_content;
                                        }
                                    }

                                });
                            }
                            // show search results
                            if (isMatch) {
                                matchcounts += 1;
                                str += "<li><a href='" + data_url + "' class='search-result-title'>" + data_title + "</a>";
                                var content = data.content.trim().replace(/<[^>]+>/g, "");
                                if (first_occur >= 0) {
                                    // cut out 100 characters
                                    var start = first_occur - 20;
                                    var end = first_occur + 80;
                                    if (start < 0) {
                                        start = 0;
                                    }
                                    if (start == 0) {
                                        end = 50;
                                    }
                                    if (end > content.length) {
                                        end = content.length;
                                    }
                                    var match_content = content.substring(start, end);
                                    // highlight all keywords
                                    keywords.forEach(function (keyword) {
                                        var regS = new RegExp(keyword, "gi");
                                        match_content = match_content.replace(regS, "<b class=\"search-keyword\">" + keyword + "</b>");
                                    });

                                    str += "<p class=\"search-result\">" + match_content + "...</p>"
                                }
                                str += "</li>";
                            }
                        })
                    }
                    ;
                    str += "</ul>";
                    if (matchcounts == 0) {
                        str = '<div id="no-result"><i class="fa fa-frown-o fa-5x" /></div>'
                    }
                    if (keywords == "") {
                        str = '<div id="no-result"><i class="fa fa-search fa-5x" /></div>'
                    }
                    $resultContent.innerHTML = str;
                });
                proceedsearch();
            }
        });
    }

    // handle and trigger popup window;
    $('.popup-trigger').click(function (e) {
        e.stopPropagation();
        if (isfetched == false) {
            searchFunc(path, 'local-search-input', 'local-search-result');
        } else {
            proceedsearch();
        }
        ;
    });

    $('.popup-btn-close').click(function (e) {
        $('.popup').hide();
        $(".local-search-pop-overlay").remove();
        $('body').css('overflow', '');
    });
    $('.popup').click(function (e) {
        e.stopPropagation();
    });
</script>


<script type="text/x-mathjax-config">
      MathJax.Hub.Config({
        tex2jax: {
          inlineMath: [ ['$','$'], ["\\(","\\)"]  ],
          processEscapes: true,
          skipTags: ['script', 'noscript', 'style', 'textarea', 'pre', 'code']
        }
      });


</script>

<script type="text/x-mathjax-config">
      MathJax.Hub.Queue(function() {
        var all = MathJax.Hub.getAllJax(), i;
        for (i=0; i < all.length; i += 1) {
          all[i].SourceElement().parentNode.className += ' has-jax';
        }
      });


</script>
<script type="text/javascript" src="//cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML"></script>
</body>
</html>