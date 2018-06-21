{% extends "layout.tpl" %}
{% block content %}
      <div class="header clearfix">
        <nav>
          <ul class="nav nav-pills pull-right">
            <li role="presentation" class="active"><a href="/">Home</a></li>
            <!-- <li role="presentation"><a href="/apps">Apps</a></li> -->
            <!-- <li role="presentation"><a href="/admin">Login</a></li> -->
          </ul>
        </nav>
        {% include "logo.tpl"  %}
      </div>

      <div class="jumbotron">
        <h1>FRED SESSIONS</h1>
        <p class="lead">Session Availability Email Notification Tool</p>
        <p><a class="btn btn-lg btn-success" href="/notifications" role="button">Email ME Sessions</a></p>
      </div>

      <div class="row marketing">
        <div class="col-lg-6">
          <h4>MONDAY</h4>
          <p>Donec id elit non mi porta gravida at eget metus. Maecenas faucibus mollis interdum.</p>

          <h4>TUESDAY</h4>
          <p>Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Cras mattis consectetur purus sit amet fermentum.</p>

          <h4>WEDNESDAY</h4>
          <p>Maecenas sed diam eget risus varius blandit sit amet non magna.</p>
        </div>

        <div class="col-lg-6">
          <h4>SESSIONS AVAILABLE</h4>
          <p>Donec id elit non mi porta gravida at eget metus. Maecenas faucibus mollis interdum.</p>

          <h4>SESSIONS AVAILABLE</h4>
          <p>Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Cras mattis consectetur purus sit amet fermentum.</p>

          <h4>SESSIONS AVAILABLE</h4>
          <p>Maecenas sed diam eget risus varius blandit sit amet non magna.</p>
        </div>
      </div>
{% endblock %}
