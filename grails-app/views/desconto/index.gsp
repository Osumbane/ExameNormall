
<%@ page import="mz.co.igsys.Desconto" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'desconto.label', default: 'Desconto')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-desconto" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-desconto" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-bordered">
			<thead>
					<tr>
					
						<g:sortableColumn property="dataAlteracao" title="${message(code: 'desconto.dataAlteracao.label', default: 'Data Alteracao')}" />
					
						<g:sortableColumn property="activo" title="${message(code: 'desconto.activo.label', default: 'Activo')}" />
					
						<g:sortableColumn property="dataCriacao" title="${message(code: 'desconto.dataCriacao.label', default: 'Data Criacao')}" />
					
						<g:sortableColumn property="desconto" title="${message(code: 'desconto.desconto.label', default: 'Desconto')}" />
					
						<th><g:message code="desconto.produto.label" default="Produto" /></th>
					
						<g:sortableColumn property="quantidade" title="${message(code: 'desconto.quantidade.label', default: 'Quantidade')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${descontoInstanceList}" status="i" var="descontoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${descontoInstance.id}">${fieldValue(bean: descontoInstance, field: "dataAlteracao")}</g:link></td>
					
						<td><g:formatBoolean boolean="${descontoInstance.activo}" /></td>
					
						<td><g:formatDate date="${descontoInstance.dataCriacao}" /></td>
					
						<td>${fieldValue(bean: descontoInstance, field: "desconto")}</td>
					
						<td>${fieldValue(bean: descontoInstance, field: "produto")}</td>
					
						<td>${fieldValue(bean: descontoInstance, field: "quantidade")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${descontoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
