
<%@ page import="mz.co.igsys.Cliente" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="admin">
		<g:set var="entityName" value="${message(code: 'cliente.label', default: 'Cliente')}" />
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
			<header class="panel-heading">Clientes</header>
			<div class="panel-body">
			<table class="table table-bordered">
			<thead>
					<tr>
						<g:sortableColumn property="nome" title="${message(code: 'cliente.nome.label', default: 'Nome')}" />

						<g:sortableColumn property="nuit" title="${message(code: 'cliente.nuit.label', default: 'Nuit')}" />
					
						<g:sortableColumn property="endereco" title="${message(code: 'cliente.endereco.label', default: 'Endereco')}" />
					
						<g:sortableColumn property="telefone" title="${message(code: 'cliente.telefone.label', default: 'Telefone')}" />

						<g:sortableColumn property="faz" title="${message(code: 'cliente.fax.label', default: 'Fax')}" />

						<g:sortableColumn property="email" title="${message(code: 'cliente.email.label', default: 'Email')}" />

						<th></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${clienteInstanceList}" status="i" var="clienteInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

					
						<td>${fieldValue(bean: clienteInstance, field: "nome")}</td>
					
						<td>${fieldValue(bean: clienteInstance, field: "nuit")}</td>
					
						<td>${fieldValue(bean: clienteInstance, field: "endereco")}</td>
					
						<td>${fieldValue(bean: clienteInstance, field: "telefone")}</td>

						<td>${fieldValue(bean: clienteInstance, field: "fax")}</td>

						<td>${fieldValue(bean: clienteInstance, field: "email")}</td>

						<td>
							<div class="pull-right hidden-phone">
								<g:form url="[resource:clienteInstance, action:'delete']" method="DELETE">
									<fieldset class="buttons">
										<g:link class="btn btn-default btn-xs" action="edit" resource="${clienteInstance}" ><i class="fa fa-pencil"></i></g:link>
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
				<g:paginate total="${clienteInstanceCount ?: 0}" />
			</div>
			</div>
		</div>
	</body>
</html>
