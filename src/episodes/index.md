---
title: Ten to One
description: The podcast where we make top ten lists of everything.
paginate: posts
---
# Episodes

{% for episode in collections.episodes %}
<article>
    <header>
        <h2 class="post-title">[#{{episode.number}}: {{ episode.title|safe }}](/{{ episode.path }})</a></h2>
        <span class="post-date">
            <svg class="icon icon-calendar"><use xlink:href="#icon-calendar"></use></svg>
            {{ episode.pubdate|date('Y-m-d') }}
        </span>
        <span class="post-comments">
            <svg class="icon icon-bubble"><use xlink:href="#icon-bubble"></use></svg>
            <a href="/{{episode.path}}#disqus_thread">Comments</a>
        </span>
    </header>
    <p class="post-excerpt">{{ episode.excerpt|striptags }} ([more](/{{ episode.path }}))</p>
</article>
{% endfor %}