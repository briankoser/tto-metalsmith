<!doctype html>
<html class="no-js" lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>{% block title %}{{title}} · {{sitename}}{% endblock %}</title>
        <meta name="description" content="{{description}}">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="theme-color" content="#8c0000">
        
        <meta name="twitter:card" content="summary">
        <meta name="twitter:site" content="@bmkoser">
        <meta property="og:url" content="{{sitelocation}}{{link}}">
        <meta property="og:title" content="{{title}}">
        <meta property="og:description" content="{{description}}">
        <meta property="og:image" content="http://tto.koser.us/tile.png">

        <link rel="apple-touch-icon" href="apple-touch-icon.png">

        <link rel="stylesheet" href="/css/normalize.css">
        <link rel="stylesheet" href="/css/main.css">
        <link href='https://fonts.googleapis.com/css?family=Oswald&text=TenoOHmEpisdAbut' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Alegreya+Sans' rel='stylesheet' type='text/css'>
        
        {% block css %}{% endblock %}
    </head>
    <body>
        <div class="header-container">
            <header role="banner" class="clearfix">
                <h1 class="site-title"><a href="/">{{sitename}}</a></h1>
                <a href="#menu" class="menu-link">≡ Menu</a>
                <nav id="menu" role="navigation" class="site-nav">
                    <ul class="horizontal">
                        <li>
                            <a href="/">
                                <svg class="icon icon-home3"><use xlink:href="#icon-home3"></use></svg>
                                <span class="site-nav-link">Home</span>
                            </a>
                        </li>                        
                        <li>
                            <a href="/episodes/">
                                <svg class="icon icon-quill"><use xlink:href="#icon-quill"></use></svg>
                                <span class="site-nav-link">Episodes</span>
                            </a>
                        </li>
                        <li>
                            <a href="/about/">
                                <svg class="icon icon-images"><use xlink:href="#icon-images"></use></svg>
                                <span class="site-nav-link">About</span>
                            </a>
                        </li>
                    </ul>
                </nav>
            </header>
        </div>

        <main class="clearfix">
            {% block body %}
                {{contents|safe}}
            {% endblock%}
        </main>

        <div class="footer-container">
            <footer role="contentinfo">
                Built by <a href="http://briankoser.com">Brian Koser</a>.
            </footer>
        </div>
                
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="/js/vendor/jquery-1.11.3.min.js"><\/script>')</script>
        <script src="/js/main.js" defer></script>
        <script id="dsq-count-scr" src="//tto.disqus.com/count.js" async></script>
        
        {% if development %}
            <script src="http://localhost:35729/livereload.js"></script>
        {% endif %}
        
        {% block js %}{% endblock %}
    </body>
</html>