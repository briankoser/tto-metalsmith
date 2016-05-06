---
title: Ten to One
description: The podcast where we make top ten lists of everything.
paginate: posts
section: episodes
---
# Episodes

{% for post in collections.posts %}
<article>
    <header>
        <h2 class="post-title">[{{ post.title|safe }}](/{{ post.path }})</a></h2>
        <span class="post-author">by {{ post.author }}</span>
        <span class="post-date">{{ post.pubdate|date('Y-m-d') }}</span>
    </header>
    <p class="post-excerpt">{{ post.excerpt|striptags }} ([more](/{{ post.path }}))</p>
</article>
{% endfor %}