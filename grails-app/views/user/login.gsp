<%--
  Created by IntelliJ IDEA.
  User: Mael
  Date: 07/03/14
  Time: 23:23
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Serena Login</title>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'serena.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(plugin: 'pure-css', dir: 'css', file: 'pure.css')}" type="text/css">
</head>

<body>
<div class="pure-g">
    <div class="pure-u-1-3"></div>

    <div class="pure-u-1-3 login">

        <g:form controller="user" action="authenticate" method="post" class="pure-form pure-form-aligned">
            <fieldset>
                <legend>Welcome to Serena</legend>

                <div class="pure-control-group">
                    <label for="login">Login</label>
                    <input type="text" id="login" name="login"/>
                </div>

                <div class="pure-control-group">
                    <label for="password">Password</label>
                    <input type="password" id="password" name="password"/>
                </div>

                <div class="pure-controls">
                    <button type="submit" value="Login" class="pure-button pure-button-primary">Login</button>
                </div>
            </fieldset>
        </g:form>
        <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
        </g:if>

        <g:render template="/layouts/footer"/>
    </div>
</div>
</body>
</html>
