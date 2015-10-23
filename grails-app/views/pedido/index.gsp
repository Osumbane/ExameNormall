
<%@ page import="mz.co.igsys.Pedido" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pedido.label', default: 'Pedido')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-pedido" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-pedido" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-bordered">
			<thead>
					<tr>
					
						<g:sortableColumn property="dataAlteracao" title="${message(code: 'pedido.dataAlteracao.label', default: 'Data Alteracao')}" />
					
						<g:sortableColumn property="codigo" title="${message(code: 'pedido.codigo.label', default: 'Codigo')}" />
					
						<g:sortableColumn property="custo" title="${message(code: 'pedido.custo.label', default: 'Custo')}" />
					
						<g:sortableColumn property="activo" title="${message(code: 'pedido.activo.label', default: 'Activo')}" />
					
						<th><g:message code="pedido.cliente.label" default="Cliente" /></th>
					
						<g:sortableColumn property="dataCriacao" title="${message(code: 'pedido.dataCriacao.label', default: 'Data Criacao')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${pedidoInstanceList}" status="i" var="pedidoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${pedidoInstance.id}">${fieldValue(bean: pedidoInstance, field: "dataAlteracao")}</g:link></td>
					
						<td>${fieldValue(bean: pedidoInstance, field: "codigo")}</td>
					
						<td>${fieldValue(bean: pedidoInstance, field: "custo")}</td>
					
						<td><g:formatBoolean boolean="${pedidoInstance.activo}" /></td>
					
						<td>${fieldValue(bean: pedidoInstance, field: "cliente")}</td>
					
						<td><g:formatDate date="${pedidoInstance.dataCriacao}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${pedidoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
