{% extends 'email/templates/default.php' %}

{% block content %}
  <p> You have registered! </p>

  <p>Activate you're account using this link: {{baseUrl}}{{urlFor('activate')}}?email={{user.email}}&identifier={{identifier|url_encode}} </p>
{% endblock %}
