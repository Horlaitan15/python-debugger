{# Homepage Markup #}
{% extends './layouts/base.swig' %}

{% block content %}
<section class="row">
<div class="col-md-6 col-sm-8 col-xs-7">
  <div class="row">
      <div class="col-md-12">
        <div class="btn-group pull-right">
          <button id="debug" class="btn"> ⏏ Start Debuger</button>
          <button id="back" class="btn" disabled> &#8676; Back</button>
          <button id="step" class="btn" disabled> &#8677; Step</button>
          <button id="stop" class="btn" disabled> ■ Stop</button>
          <button id="run" class="btn"> ▶ Run</button>
        </div>
        <ul class="nav nav-tabs">
          <li class="active"><a href="#code" data-toggle="tab">Code</a></li>
        </ul>
        <div class="tab-content">
            <div class="tab-pane fade in active font-control" id="code">
              <textarea id="editor"></textarea>
            </div>
        </div>
      </div>
  </div>
</div>
<div class="col-md-6 col-sm-4 col-xs-5">
  <div class="row">
    <ul class="nav nav-tabs">
        <li class="active"><a href="#con" data-toggle="tab">Console</a></li>
    </ul>
    <div class="tab-content">
      <div class="tab-pane fade in active font-control" id="con">
        <textarea id="console" autocomplete="off"></textarea>
      </div>
    </div>
  </div>
</div>
</section>

{% endblock %}


{% block extra_style %}
    <link rel="stylesheet" href="styles/console.css">
    <link rel="stylesheet" href="bower_components/codemirror/lib/codemirror.css">
    <link rel="stylesheet" href="bower_components/codemirror/addon/lint/lint.css">
{% endblock %}

{% block extra_script %}
    <script src="bower_components/codemirror/lib/codemirror.js" type="text/javascript" charset="utf-8"></script>
    <script src="bower_components/codemirror/mode/python/python.js" type="text/javascript" charset="utf-8"></script>
    <script src="bower_components/codemirror/addon/edit/matchbrackets.js" type="text/javascript" charset="utf-8"></script>
    <script src="bower_components/codemirror/addon/selection/active-line.js" type="text/javascript" charset="utf-8"></script>
    <script src="scripts/cm-lint-custom.js" type="text/javascript" charset="utf-8"></script>
    <script src="scripts/cm-lint-result.js" type="text/javascript" charset="utf-8"></script>
{% endblock %}

{% block extra_page_script %}
    <script src="scripts/debugger/user.js" type="text/javascript" charset="utf-8"></script>
{% endblock %}

