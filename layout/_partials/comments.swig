{% if page.comments %}
  {% if page.comments_show %}
    <div class="comments" id="comments">
      {% if theme.facebook_sdk.enable and theme.facebook_comments_plugin.enable %}
        <div class="fb-comments"
             data-href="{{ page.permalink }}"
             data-numposts="{{ theme.facebook_comments_plugin.num_of_posts }}"
             data-width="{{ theme.facebook_comments_plugin.width }}"
             data-colorscheme="{{ theme.facebook_comments_plugin.scheme }}">
        </div>
      {% elseif theme.disqus_shortname %}
        <div id="disqus_thread">
          <noscript>
            Please enable JavaScript to view the
            <a href="//disqus.com/?ref_noscript">comments powered by Disqus.</a>
          </noscript>
        </div>
      {% endif %}
    </div>
  {% else %}
    <div class="feed-link text-center">
      <a href="{{ url_for(theme.menu.about) }}">
        给我留言
        <i class="fa fa-spinner fa-spin"></i>
      </a>
    </div>
  {% endif %}
{% endif %}
