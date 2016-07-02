{% extends "default.swig" %}

{% block title %}Ep. {{number}}: {{title|striptags}} · {{sitename}}{% endblock %}

{% block css %}
{% endblock %}

{% block body %}
    <article class="h-entry">
        <header>
            <h1 class="post-title p-name">Episode {{number}}: {{title|safe}}</h1>
            <time class="post-date dt-published" datetime="{{pubdate|date('Y-m-dTH:i:s\Z')}}">{{pubdate|date('Y-m-d')}}</time>
        </header>
        
        <div class="e-content">
            <audio src="{{cdnlocation}}/tto/{{slug}}.mp3" preload="metadata" controls>
            </audio>
            <a href="{{cdnlocation}}/tto/{{slug}}.mp3">Download</a> · <a href="#">Subscribe</a>
            
        {% block article %}
            <p>{{intro|safe}}</p>

            <details class="spoilers">
                <summary>Expand for show notes. Spoilers!</summary>
                {{contents|safe}}
            </details>
        {% endblock %}
        
            <p class="contact">
                Let us know what you would put on your list! Comment below or email us at <a href="mailto:tto@koser.us">tto@koser.us</a>
            </p>
        </div>
        
        <div id="disqus_thread"></div>
        <script>
            var disqus_config = function () {
                this.page.url = '{{sitelocation}}/{{slug}}'
                this.page.identifier = {{number}}
            };
            (function() {
                var d = document, s = d.createElement('script');
                s.src = '//tto.disqus.com/embed.js';
                s.setAttribute('data-timestamp', +new Date());
                (d.head || d.body).appendChild(s);
            })();
        </script>
        <noscript>If you’d like to view comments, you’ll need to enable JavaScript.</noscript>
        
        <footer>
            <nav>
                {% if next %}
                    <a class="float-left margin-top" rel="prev" href="/{{ next.path }}">« Ep. {{next.number}}: {{ next.title|striptags }}</a>
                {% endif %}
                {% if previous %}
                    <a class="float-right margin-top" rel="next" href="/{{ previous.path }}">Ep. {{previous.number}}: {{ previous.title|striptags }} »</a>
                {% endif %}
            </nav>
        </footer>
    </article>
{% endblock %}