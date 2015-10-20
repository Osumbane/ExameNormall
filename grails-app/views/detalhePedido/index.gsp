
<%@ page import="mz.co.igsys.DetalhePedido" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'detalhePedido.label', default: 'DetalhePedido')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-detalhePedido" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-detalhePedido" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="detalhePedido.opcao.label" default="Opcao" /></th>
					
						<th><g:message code="detalhePedido.pedido.label" default="Pedido" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${detalhePedidoInstanceList}" status="i" var="detalhePedidoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${detalhePedidoInstance.id}">${fieldValue(bean: detalhePedidoInstance, field: "opcao")}</g:link></td>
					
						<td>${fieldValue(bean: detalhePedidoInstance, field: "pedido")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${detalhePedidoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
