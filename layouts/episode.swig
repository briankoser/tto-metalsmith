{% extends "default.swig" %}

{% block title %}Ep. {{number}}: {{title|striptags}} · {{sitename}}{% endblock %}

{% block css %}
{% endblock %}

{% block body %}
    <article class="h-entry">
        <header>
            <h1 class="post-title p-name">{{title|safe}}</h1>
            <time class="post-date dt-published" datetime="{{pubdate|date('Y-m-dTH:i:s\Z')}}">{{pubdate|date('Y-m-d')}}</time>
        </header>
        
        <div class="e-content">
        {% block article %}
            {{contents|safe}}
        {% endblock %}
        </div>
        
        <footer>
            <nav>
                {% if next %}
                    <a class="float-left margin-top" rel="prev" href="/{{ next.path }}">« {{ next.title|striptags }}</a>
                {% endif %}
                {% if previous %}
                    <a class="float-right margin-top" rel="next" href="/{{ previous.path }}">{{ previous.title|striptags }} »</a>
                {% endif %}
            </nav>
        </footer>
    </article>
{% endblock %}