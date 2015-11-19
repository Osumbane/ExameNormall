
<%@ page import="mz.co.igsys.Pedido" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="admin">
		<g:set var="entityName" value="${message(code: 'pedido.label', default: 'Pedido')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
	<g:if test="${flash.message}">
		<div class="alert alert-success" role="status">${flash.message}</div>
	</g:if>
		<div class="nav" role="navigation">
			<ul>
				<li><g:link class="btn btn-info" action="create"><i class="fa fa-plus"></i> <g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div class="panel">
			<header class="panel-heading">Pedidos</header>
			<div class="panel-body">
			<table class="table table-bordered">
			<thead>
					<tr>

						<g:sortableColumn property="codigo" title="${message(code: 'pedido.codigo.label', default: 'Codigo')}" />

						<th><g:message code="pedido.cliente.label" default="Cliente" /></th>
					
						<g:sortableColumn property="custo" title="${message(code: 'pedido.custo.label', default: 'Custo')}" />
					
						<th>Estado</th>

						<th></th>

					</tr>
				</thead>
				<tbody>
				<g:each in="${pedidoInstanceList}" status="i" var="pedidoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td>${fieldValue(bean: pedidoInstance, field: "codigo")}</td>

						<td>${fieldValue(bean: pedidoInstance, field: "cliente")}</td>

						<td>${fieldValue(bean: pedidoInstance, field: "custo")}</td>
					
						<td><g:formatBoolean boolean="${pedidoInstance.activo}" /></td>

						<td>
							<div class="pull-right hidden-phone">
								<g:form url="[resource:pedidoInstance, action:'delete']" method="DELETE">
									<fieldset class="buttons">
										<g:link class="btn btn-default btn-xs" action="edit" resource="${pedidoInstance}" ><i class="fa fa-pencil"></i></g:link>
										<g:actionSubmit class="btn btn-default btn-xs" action="delete" value="x" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Tem certeza?')}');" />
									</fieldset>
								</g:form>
							</div>
						</td>
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${pedidoInstanceCount ?: 0}" />
			</div>
			</div>
		</div>
	</body>
</html>
