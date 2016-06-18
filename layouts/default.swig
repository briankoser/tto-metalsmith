<!doctype html>
<html class="no-js" lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>{% block title %}{{title}} · {{sitename}}{% endblock %}</title>
        <meta name="description" content="{{description}}">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="theme-color" content="#006b9f">
        
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
                                <svg class="icon icon-podcast"><use xlink:href="#icon-podcast"></use></svg>
                                <span class="site-nav-link">Episodes</span>
                            </a>
                        </li>
                        <li>
                            <a href="/subscribe/">
                                <svg class="icon icon-rss"><use xlink:href="#icon-rss"></use></svg>
                                <span class="site-nav-link">Subscribe</span>
                            </a>
                        </li>
                        <li>
                            <a href="/about/">
                                <svg class="icon icon-man-woman"><use xlink:href="#icon-man-woman"></use></svg>
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
                <svg class="icon icon-lab"><use xlink:href="#icon-lab"></use></svg>
                Created by <a href="http://briankoser.com">Brian Koser</a>
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
    
    <svg style="position:absolute; width:0; height:0;" width="0" height="0" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
        <defs>
            <symbol id="icon-bubble" viewBox="0 0 32 32">
                <title>bubble</title>
                <path class="path1" d="M16 2c8.837 0 16 5.82 16 13s-7.163 13-16 13c-0.849 0-1.682-0.054-2.495-0.158-3.437 3.437-7.539 4.053-11.505 4.144v-0.841c2.142-1.049 4-2.961 4-5.145 0-0.305-0.024-0.604-0.068-0.897-3.619-2.383-5.932-6.024-5.932-10.103 0-7.18 7.163-13 16-13z"></path>
            </symbol>
            <symbol id="icon-calendar" viewBox="0 0 32 32">
                <title>calendar</title>
                <path class="path1" d="M10 12h4v4h-4zM16 12h4v4h-4zM22 12h4v4h-4zM4 24h4v4h-4zM10 24h4v4h-4zM16 24h4v4h-4zM10 18h4v4h-4zM16 18h4v4h-4zM22 18h4v4h-4zM4 18h4v4h-4zM26 0v2h-4v-2h-14v2h-4v-2h-4v32h30v-32h-4zM28 30h-26v-22h26v22z"></path>
            </symbol>
            <symbol id="icon-home3" viewBox="0 0 1024 1024">
                <title>home3</title>
                <path class="path1" d="M1024 608l-192-192v-288h-128v160l-192-192-512 512v32h128v320h320v-192h128v192h320v-320h128z"></path>
            </symbol>
            <symbol id="icon-lab" viewBox="0 0 32 32">
                <title>lab</title>
                <path class="path1" d="M29.884 25.14l-9.884-16.47v-6.671h1c0.55 0 1-0.45 1-1s-0.45-1-1-1h-10c-0.55 0-1 0.45-1 1s0.45 1 1 1h1v6.671l-9.884 16.47c-2.264 3.773-0.516 6.86 3.884 6.86h20c4.4 0 6.148-3.087 3.884-6.86zM7.532 20l6.468-10.779v-7.221h4v7.221l6.468 10.779h-16.935z"></path>
            </symbol>
            <symbol id="icon-man-woman" viewBox="0 0 32 32">
                <title>man-woman</title>
                <path class="path1" d="M8 3c0 1.657-1.343 3-3 3s-3-1.343-3-3c0-1.657 1.343-3 3-3s3 1.343 3 3z"></path>
                <path class="path2" d="M26 3c0 1.657-1.343 3-3 3s-3-1.343-3-3c0-1.657 1.343-3 3-3s3 1.343 3 3z"></path>
                <path class="path3" d="M8 8h-6c-1.105 0-2 0.895-2 2v10h2v12h2.5v-12h1v12h2.5v-12h2v-10c0-1.105-0.895-2-2-2z"></path>
                <path class="path4" d="M30.469 16l1.531-1.109-4.165-6.441c-0.185-0.281-0.499-0.45-0.835-0.45h-8c-0.336 0-0.65 0.169-0.835 0.45l-4.165 6.441 1.531 1.109 3.458-4.487 1.202 2.804-4.191 7.683h3.833l0.667 10h2v-10h1v10h2l0.667-10h3.833l-4.191-7.683 1.202-2.804 3.458 4.487z"></path>
            </symbol>
            <symbol id="icon-podcast" viewBox="0 0 32 32">
                <title>podcast</title>
                <path class="path1" d="M32 16c0-8.837-7.163-16-16-16s-16 7.163-16 16c0 6.877 4.339 12.739 10.428 15.002l-0.428 0.998h12l-0.428-0.998c6.089-2.263 10.428-8.125 10.428-15.002zM15.212 19.838c-0.713-0.306-1.212-1.014-1.212-1.838 0-1.105 0.895-2 2-2s2 0.895 2 2c0 0.825-0.499 1.533-1.212 1.839l-0.788-1.839-0.788 1.838zM16.821 19.915c1.815-0.379 3.179-1.988 3.179-3.915 0-2.209-1.791-4-4-4s-4 1.791-4 4c0 1.928 1.364 3.535 3.18 3.913l-2.332 5.441c-2.851-1.223-4.848-4.056-4.848-7.355 0-4.418 3.582-8.375 8-8.375s8 3.957 8 8.375c0 3.299-1.997 6.131-4.848 7.355l-2.331-5.439zM21.514 30.866l-2.31-5.39c3.951-1.336 6.796-5.073 6.796-9.476 0-5.523-4.477-10-10-10s-10 4.477-10 10c0 4.402 2.845 8.14 6.796 9.476l-2.31 5.39c-4.987-2.14-8.481-7.095-8.481-12.866 0-7.729 6.266-14.37 13.995-14.37s13.995 6.641 13.995 14.37c0 5.771-3.494 10.726-8.481 12.866z"></path>
            </symbol>
            <symbol id="icon-rss" viewBox="0 0 32 32">
                <title>rss</title>
                <path class="path1" d="M4.259 23.467c-2.35 0-4.259 1.917-4.259 4.252 0 2.349 1.909 4.244 4.259 4.244 2.358 0 4.265-1.895 4.265-4.244-0-2.336-1.907-4.252-4.265-4.252zM0.005 10.873v6.133c3.993 0 7.749 1.562 10.577 4.391 2.825 2.822 4.384 6.595 4.384 10.603h6.16c-0-11.651-9.478-21.127-21.121-21.127zM0.012 0v6.136c14.243 0 25.836 11.604 25.836 25.864h6.152c0-17.64-14.352-32-31.988-32z"></path>
            </symbol>
        </defs>
    </svg>
    {% block svg %}
        {% if customsvg == 'os' %}
            <svg style="position:absolute; width:0; height:0;" width="0" height="0" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                <defs>
                    <symbol id="icon-android" viewBox="0 0 32 32">
                        <title>android</title>
                        <path class="path1" d="M28 12c-1.1 0-2 0.9-2 2v8c0 1.1 0.9 2 2 2s2-0.9 2-2v-8c0-1.1-0.9-2-2-2zM4 12c-1.1 0-2 0.9-2 2v8c0 1.1 0.9 2 2 2s2-0.9 2-2v-8c0-1.1-0.9-2-2-2zM7 23c0 1.657 1.343 3 3 3v0 4c0 1.1 0.9 2 2 2s2-0.9 2-2v-4h4v4c0 1.1 0.9 2 2 2s2-0.9 2-2v-4c1.657 0 3-1.343 3-3v-11h-18v11z"></path>
                        <path class="path2" d="M24.944 10c-0.304-2.746-1.844-5.119-4.051-6.551l1.001-2.001c0.247-0.494 0.047-1.095-0.447-1.342s-1.095-0.047-1.342 0.447l-1.004 2.009-0.261-0.104c-0.893-0.297-1.848-0.458-2.84-0.458s-1.947 0.161-2.84 0.458l-0.261 0.104-1.004-2.009c-0.247-0.494-0.848-0.694-1.342-0.447s-0.694 0.848-0.447 1.342l1.001 2.001c-2.207 1.433-3.747 3.805-4.051 6.551v1h17.944v-1h-0.056zM13 8c-0.552 0-1-0.448-1-1s0.447-0.999 0.998-1c0.001 0 0.002 0 0.003 0s0.001-0 0.002-0c0.551 0.001 0.998 0.448 0.998 1s-0.448 1-1 1zM19 8c-0.552 0-1-0.448-1-1s0.446-0.999 0.998-1c0 0 0.001 0 0.002 0s0.002-0 0.003-0c0.551 0.001 0.998 0.448 0.998 1s-0.448 1-1 1z"></path>
                    </symbol>
                    <symbol id="icon-appleinc" viewBox="0 0 32 32">
                        <title>appleinc</title>
                        <path class="path1" d="M24.734 17.003c-0.040-4.053 3.305-5.996 3.454-6.093-1.88-2.751-4.808-3.127-5.851-3.171-2.492-0.252-4.862 1.467-6.127 1.467-1.261 0-3.213-1.43-5.28-1.392-2.716 0.040-5.221 1.579-6.619 4.012-2.822 4.897-0.723 12.151 2.028 16.123 1.344 1.944 2.947 4.127 5.051 4.049 2.026-0.081 2.793-1.311 5.242-1.311s3.138 1.311 5.283 1.271c2.18-0.041 3.562-1.981 4.897-3.931 1.543-2.255 2.179-4.439 2.216-4.551-0.048-0.022-4.252-1.632-4.294-6.473zM20.705 5.11c1.117-1.355 1.871-3.235 1.665-5.11-1.609 0.066-3.559 1.072-4.713 2.423-1.036 1.199-1.942 3.113-1.699 4.951 1.796 0.14 3.629-0.913 4.747-2.264z"></path>
                    </symbol>
                    <symbol id="icon-windows8" viewBox="0 0 32 32">
                        <title>windows8</title>
                        <path class="path1" d="M0.011 16l-0.011-9.752 12-1.63v11.382zM14 4.328l15.996-2.328v14h-15.996zM30 18l-0.004 14-15.996-2.25v-11.75zM12 29.495l-11.99-1.644-0.001-9.851h11.991z"></path>
                    </symbol>
                </defs>
            </svg>
        {% endif %}
    {% endblock %}
</html>