
<%@ page import="mz.co.igsys.Utilizador" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'utilizador.label', default: 'Utilizador')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-utilizador" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-utilizador" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="utilizador.alteradoPor.label" default="Alterado Por" /></th>
					
						<g:sortableColumn property="dataAlteracao" title="${message(code: 'utilizador.dataAlteracao.label', default: 'Data Alteracao')}" />
					
						<g:sortableColumn property="username" title="${message(code: 'utilizador.username.label', default: 'Username')}" />
					
						<g:sortableColumn property="password" title="${message(code: 'utilizador.password.label', default: 'Password')}" />
					
						<th><g:message code="utilizador.criadoPor.label" default="Criado Por" /></th>
					
						<g:sortableColumn property="accountExpired" title="${message(code: 'utilizador.accountExpired.label', default: 'Account Expired')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${utilizadorInstanceList}" status="i" var="utilizadorInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${utilizadorInstance.id}">${fieldValue(bean: utilizadorInstance, field: "alteradoPor")}</g:link></td>
					
						<td><g:formatDate date="${utilizadorInstance.dataAlteracao}" /></td>
					
						<td>${fieldValue(bean: utilizadorInstance, field: "username")}</td>
					
						<td>${fieldValue(bean: utilizadorInstance, field: "password")}</td>
					
						<td>${fieldValue(bean: utilizadorInstance, field: "criadoPor")}</td>
					
						<td><g:formatBoolean boolean="${utilizadorInstance.accountExpired}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${utilizadorInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
