<div class="copyright" >
  {% set current = date(Date.now(), "YYYY") %}
  &copy; {% if theme.since and theme.since != current %} {{ theme.since }} - {% endif %}
  <span itemprop="copyrightYear">{{ current }}</span>
  <span class="with-love">
    <i class="fa fa-heart"></i>
  </span>
  <span class="author" itemprop="copyrightHolder">{{ config.author }}&emsp;</span>
</div>

<div class="powered-by">
  {{ __('footer.powered', '<a class="theme-link" href="https://hexo.io">Hexo</a>') }}
</div>

<div class="theme-info">
  {{ __('footer.theme') }} -
  <a class="theme-link" href="https://github.com/iissnan/hexo-theme-next">
    NexT.{{ theme.scheme }}
  </a>
</div>
{% if (theme.mermaid.enable)  %}
  <script src='https://unpkg.com/mermaid@{{ config.mermaid.version }}/dist/mermaid.min.js'></script>
    <script>
    if (window.mermaid) {
      mermaid.initialize({theme: 'forest'});
    }
  </script>
{% endif %}