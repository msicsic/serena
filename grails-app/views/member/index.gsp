
<%@ page import="serena.Member" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'member.label', default: 'Member')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
    <div class="pure-menu pure-menu-open pure-menu-horizontal">
        <ul>
            <li class="pure-menu-selected"><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
            <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
        </ul>
    </div>
		<div id="list-member" class="content scaffold-list" role="main">
			<h3><g:message code="default.list.label" args="[entityName]" /></h3>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="pure-table">
			<thead>
					<tr>

						<g:sortableColumn property="number" title="${message(code: 'member.number.label', default: 'Number')}" />

						<g:sortableColumn property="lastname" title="${message(code: 'member.lastname.label', default: 'Lastname')}" />

						<g:sortableColumn property="firstname" title="${message(code: 'member.firstname.label', default: 'Firstname')}" />

						<g:sortableColumn property="address" title="${message(code: 'member.address.label', default: 'Address')}" />

						<g:sortableColumn property="address2" title="${message(code: 'member.address2.label', default: 'Address2')}" />

						<g:sortableColumn property="postalCode" title="${message(code: 'member.postalCode.label', default: 'Postal Code')}" />

					</tr>
				</thead>
				<tbody>
				<g:each in="${memberInstanceList}" status="i" var="memberInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

						<td><g:link action="show" id="${memberInstance.id}">${fieldValue(bean: memberInstance, field: "number")}</g:link></td>

						<td>${fieldValue(bean: memberInstance, field: "lastname")}</td>

						<td>${fieldValue(bean: memberInstance, field: "firstname")}</td>

						<td>${fieldValue(bean: memberInstance, field: "address")}</td>

						<td>${fieldValue(bean: memberInstance, field: "address2")}</td>

						<td>${fieldValue(bean: memberInstance, field: "postalCode")}</td>

					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${memberInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
