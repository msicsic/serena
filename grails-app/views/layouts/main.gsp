<!DOCTYPE html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'serena.css')}" type="text/css">
    <g:layoutHead/>
    <g:javascript library="application"/>
    <r:require module="pure-all"/>
    <r:layoutResources/>
</head>

<body class="pure-skin-mine">
<g:render template="/layouts/header"/>
<g:layoutBody/>
<g:render template="/layouts/footer"/>
<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
<r:layoutResources/>
</body>
</html>
