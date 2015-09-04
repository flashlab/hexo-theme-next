<!doctype html>
<html class="theme-next {% if theme.use_motion %}use-motion{% endif %} {% if theme.scheme %}theme-next-{{ theme.scheme | lower }}{% endif %}">
<head>
  {% include '_partials/head.swig' %}
  <title>{% block title %}{% endblock %}</title>
</head>

<body>

  {% include '_partials/old-browsers.swig' %}
  {% include '_scripts/analytics.swig' %}

  <div class="container one-column {% block page_class %}{% endblock %}">
    <div class="headband"></div>

    <header id="header" class="header">
        <div class="header-inner"> {%- include '_partials/header.swig' %} </div>
    </header>

    <main id="main" class="main">
    <div class="main-inner">
      <div id="content" class="content"> {% block content %}{% endblock %} </div>

    {% if (theme.duoshuo_hotartical and page.title) %}
        <!-- 多说热评文章-->
        <p>热评文章</p>
        <div class="ds-top-threads" data-range="weekly" data-num-items="4"></div>
    {% endif %}

    {% if page.comments %}
      {% if page.comments_show %}
        <div class="comments" id="comments">
          {% if (theme.duoshuo and theme.duoshuo.shortname) or theme.duoshuo_shortname %}
            <div class="ds-thread" data-thread-key="{{ page.path }}" data-title="{{ page.title }}" data-url="{{ page.permalink }}">
            </div>
          {% elseif theme.disqus_shortname %}
            <div id="disqus_thread">
              <noscript>Please enable JavaScript to view the <a href="//disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
            </div>
          {% endif %}
        </div>
      {% else %}
        <div class="feed-link text-center">
          <a href="{{ url_for(theme.menu.about) }}">
            <i class="menu-item-icon"></i>
            <i class="icon-happy"></i>
            cd about&nbsp;&amp;&amp;&nbsp;rm -rf
            <i class="icon-unhappy"></i>
          </a>
        </div>
      {% endif %}
    {% endif %}
    </div>

    {% block sidebar %}{% endblock %}
    </main>

    <footer id="footer" class="footer">
        <div class="footer-inner"> {% include '_partials/footer.swig' %} </div>
    </footer>

    <div class="back-to-top"></div>
  </div>

  <script type="text/javascript" src="{{ url_for(theme.vendors) }}/jquery/index.js?v=2.1.4"></script>

  {# This block is used to set options before any other scripts run #}
  {% block script_extra_before %}{% endblock %}
  {% block comment_system %}
    {% include '_scripts/comments/duoshuo.swig' %}
    {% include '_scripts/comments/disqus.swig' %}
  {% endblock %}
  {% include '_scripts/fancy-box.swig' %}
  {% include '_scripts/helpers.swig' %}
  {% include '_scripts/motion.swig' %}
  <script type="text/javascript" src="{{ url_for(theme.js) }}/search-toggle.js"></script>

  {% block script_extra %}{% endblock %}

  <script type="text/javascript">
    $(document).ready(function () {
      if (CONFIG.sidebar === 'always') {
          displaySidebar();
      }
    });
</script>
{% include '_scripts/tinysou.swig' %}
{% include '_scripts/mathjax.swig' %}
{% block comment_system %}{% endblock %}
{% include '_scripts/baidushare.swig' %}
</body>
</html>