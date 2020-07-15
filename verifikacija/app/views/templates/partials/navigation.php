{% if auth %}
Heloo, {{ auth.getFullNameOrUsername() }}<br>
<img src="{{ auth.getAvatarUrl({size : 100}) }}" alt="You`re avatar">
{% endif %}
<ul>
  <li><a href="{{ urlFor('home')}}">Home</a></li>
  {% if auth %}
  <li><a href="{{ urlFor('logout')}}">Logout</a></li>
  {% else %}
  <li><a href="{{ urlFor('register')}}">Register</a></li>
  <li><a href="{{ urlFor('login')}}">Login</a></li>
  {% endif %}
</ul>
