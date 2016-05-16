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
        <span class="post-date">{{ episode.pubdate|date('Y-m-d') }}</span>
        <span class="post-comments"><a href="/{{episode.path}}#disqus_thread">Comments</a></span>
    </header>
    <p class="post-excerpt">{{ episode.excerpt|striptags }} ([more](/{{ episode.path }}))</p>
</article>
{% endfor %}