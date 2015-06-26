<script async src="https://dn-lbstatics.qbox.me/busuanzi/2.3/busuanzi.pure.mini.js">
</script>

<div class="copyright">
  {% set current = date(Date.now(), "YYYY") %}
  &copy;&nbsp; {% if theme.since and theme.since != current %} {{ theme.since }} - {% endif %}
  {{ current }}
  <span class="with-love">
    <i class="icon-heart"></i>
  </span>
  <span class="author">{{ config.author }}&emsp;</span>
  <span id="busuanzi_container_page_pv" style='display:none'>
    <span id="busuanzi_value_page_pv"></span>   
  </span>
  <span>
    <a href="http://service.ibruce.info" target="_blank" class="icon-world"></a>
  </span>
  <span id="busuanzi_container_site_uv" style='display:none'>
    <span id="busuanzi_value_site_uv"></span>
  </span>
</div>

<div class="powered-by">
  {{ __('footer.powered', '<a class="theme-link" href="http://hexo.io">Hexo</a>') }}
</div>

<div class="theme-info">
  {{ __('footer.theme') }} -
  <a class="theme-link" href="https://github.com/iissnan/hexo-theme-next">
    NexT{% if theme.scheme %}.{{ theme.scheme }}{% endif %}
  </a>
</div>
{% block footer %}{% endblock %}