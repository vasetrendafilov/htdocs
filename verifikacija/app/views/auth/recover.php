{% extends 'templates/default.php' %}

{% block title %}Recover{% endblock %}

{% block content %}
<form  action="{{urlFor('password.recover.post')}}" method="post">
  <div>
    <label for="email">Email</label>
   <input type="text" name="email" id="email"{% if request.post('email')%} value="{{ request.post('email')}}" {% endif %}>
   {% if errors.has('email')%}  {{errors.first('email')}}  {% endif %}
 </div>
 <div>
 <input type="submit" value="Request">
</div>
<input type="hidden" name="{{csrf_key}}" value="{{csrf_token}}">
</form>
{% endblock %}
