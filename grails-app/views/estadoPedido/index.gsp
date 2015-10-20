
<%@ page import="mz.co.igsys.EstadoPedido" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'estadoPedido.label', default: 'EstadoPedido')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-estadoPedido" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-estadoPedido" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="dataAlteracao" title="${message(code: 'estadoPedido.dataAlteracao.label', default: 'Data Alteracao')}" />
					
						<g:sortableColumn property="estado" title="${message(code: 'estadoPedido.estado.label', default: 'Estado')}" />
					
						<g:sortableColumn property="observacoes" title="${message(code: 'estadoPedido.observacoes.label', default: 'Observacoes')}" />
					
						<g:sortableColumn property="activo" title="${message(code: 'estadoPedido.activo.label', default: 'Activo')}" />
					
						<g:sortableColumn property="dataCriacao" title="${message(code: 'estadoPedido.dataCriacao.label', default: 'Data Criacao')}" />
					
						<th><g:message code="estadoPedido.pedido.label" default="Pedido" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${estadoPedidoInstanceList}" status="i" var="estadoPedidoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${estadoPedidoInstance.id}">${fieldValue(bean: estadoPedidoInstance, field: "dataAlteracao")}</g:link></td>
					
						<td>${fieldValue(bean: estadoPedidoInstance, field: "estado")}</td>
					
						<td>${fieldValue(bean: estadoPedidoInstance, field: "observacoes")}</td>
					
						<td><g:formatBoolean boolean="${estadoPedidoInstance.activo}" /></td>
					
						<td><g:formatDate date="${estadoPedidoInstance.dataCriacao}" /></td>
					
						<td>${fieldValue(bean: estadoPedidoInstance, field: "pedido")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${estadoPedidoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
