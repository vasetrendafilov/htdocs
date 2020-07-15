{% if auth %}
  <p> {{auth.getFullNameOrUsername()}}</p>
{% else %}
  <p>Heloo there</p>
{%endif%}

{% block content %} {% endblock %}
