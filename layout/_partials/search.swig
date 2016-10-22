{% if theme.swiftype_key %}
  {% include 'search/swiftype.swig' %}
{% elseif config.search.path %}
  {% include 'search/localsearch.swig' %}
{% endif %}
