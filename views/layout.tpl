<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link href="/static/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="/static/css/bootstrap-responsive.min.css" rel="stylesheet">
    <link href="/static/css/jumbotron-narrow.css" rel="stylesheet">
</head>
<body>
    <div class="container">
     {% block content %}
     {% endblock %}
      <footer class="footer text-center">
        <p>&copy; {{ cal["today"] }} WE-HACKS</p>
      </footer>
    </div> <!-- /container -->
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="/static/js/bootstrap.min.js"></script>
</body>
</html>
