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
        {% block article %}
            {{contents|safe}}
        {% endblock %}
        
            <p class="contact">
                Let us know what you would put on your list! Email us at <a href="mailto:tto@koser.us">tto@koser.us</a>
            </p>
        </div>
        
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