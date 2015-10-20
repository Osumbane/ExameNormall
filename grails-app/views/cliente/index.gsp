
<%@ page import="mz.co.igsys.Cliente" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'cliente.label', default: 'Cliente')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-cliente" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-cliente" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="dataAlteracao" title="${message(code: 'cliente.dataAlteracao.label', default: 'Data Alteracao')}" />
					
						<g:sortableColumn property="nome" title="${message(code: 'cliente.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="nuit" title="${message(code: 'cliente.nuit.label', default: 'Nuit')}" />
					
						<g:sortableColumn property="endereco" title="${message(code: 'cliente.endereco.label', default: 'Endereco')}" />
					
						<g:sortableColumn property="telefone" title="${message(code: 'cliente.telefone.label', default: 'Telefone')}" />
					
						<g:sortableColumn property="fax" title="${message(code: 'cliente.fax.label', default: 'Fax')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${clienteInstanceList}" status="i" var="clienteInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${clienteInstance.id}">${fieldValue(bean: clienteInstance, field: "dataAlteracao")}</g:link></td>
					
						<td>${fieldValue(bean: clienteInstance, field: "nome")}</td>
					
						<td>${fieldValue(bean: clienteInstance, field: "nuit")}</td>
					
						<td>${fieldValue(bean: clienteInstance, field: "endereco")}</td>
					
						<td>${fieldValue(bean: clienteInstance, field: "telefone")}</td>
					
						<td>${fieldValue(bean: clienteInstance, field: "fax")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${clienteInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>