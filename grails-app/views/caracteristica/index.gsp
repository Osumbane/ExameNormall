
<%@ page import="mz.co.igsys.Caracteristica" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'caracteristica.label', default: 'Caracteristica')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-caracteristica" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-caracteristica" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="dataAlteracao" title="${message(code: 'caracteristica.dataAlteracao.label', default: 'Data Alteracao')}" />
					
						<g:sortableColumn property="descricao" title="${message(code: 'caracteristica.descricao.label', default: 'Descricao')}" />
					
						<g:sortableColumn property="activo" title="${message(code: 'caracteristica.activo.label', default: 'Activo')}" />
					
						<g:sortableColumn property="dataCriacao" title="${message(code: 'caracteristica.dataCriacao.label', default: 'Data Criacao')}" />
					
						<g:sortableColumn property="nome" title="${message(code: 'caracteristica.nome.label', default: 'Nome')}" />
					
						<th><g:message code="caracteristica.produto.label" default="Produto" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${caracteristicaInstanceList}" status="i" var="caracteristicaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${caracteristicaInstance.id}">${fieldValue(bean: caracteristicaInstance, field: "dataAlteracao")}</g:link></td>
					
						<td>${fieldValue(bean: caracteristicaInstance, field: "descricao")}</td>
					
						<td><g:formatBoolean boolean="${caracteristicaInstance.activo}" /></td>
					
						<td><g:formatDate date="${caracteristicaInstance.dataCriacao}" /></td>
					
						<td>${fieldValue(bean: caracteristicaInstance, field: "nome")}</td>
					
						<td>${fieldValue(bean: caracteristicaInstance, field: "produto")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${caracteristicaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
