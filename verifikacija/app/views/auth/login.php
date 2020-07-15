{% extends 'templates/default.php' %}

{% block title %}Login{% endblock %}

{% block content %}
  <form  action="{{urlFor('login.post')}}" method="post" autocomplete="off">
      <div>
        <label for="identifier">Usename/email</label><br>
        <input type="text" name="identifier" id="identifier"{% if request.post('identifier')%} value="{{ request.post('identifier')}}" {% endif %}>
        {% if errors.first('identifier')%}  {{errors.first('identifier')}}  {% endif %}
      </div>
      <div>
        <label for="password">Password</label><br>
        <input type="password" name="password" id="password">
        {% if errors.first('password')%}  {{errors.first('password')}}  {% endif %}
      </div>
      <div>
        <label for="remember">Remember me:</label>
        <input type="checkbox" name="remember" value="on">
      </div>
      <div>
        <input type="submit" value="Login">
      </div>
      <div>
        <a href="{{urlFor('password.recover')}}">Forgot password</a>
      </div>
      <input type="hidden" name="{{ csrf_key }}" value="{{ csrf_token }}">
  </form>
{% endblock %}
