
<%@ page import="mz.co.igsys.Produto" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'produto.label', default: 'Produto')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-produto" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-produto" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-bordered">
			<thead>
					<tr>
					
						<g:sortableColumn property="dataAlteracao" title="${message(code: 'produto.dataAlteracao.label', default: 'Data Alteracao')}" />
					
						<g:sortableColumn property="nome" title="${message(code: 'produto.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="descricao" title="${message(code: 'produto.descricao.label', default: 'Descricao')}" />
					
						<g:sortableColumn property="precoBase" title="${message(code: 'produto.precoBase.label', default: 'Preco Base')}" />
					
						<g:sortableColumn property="activo" title="${message(code: 'produto.activo.label', default: 'Activo')}" />
					
						<g:sortableColumn property="dataCriacao" title="${message(code: 'produto.dataCriacao.label', default: 'Data Criacao')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${produtoInstanceList}" status="i" var="produtoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${produtoInstance.id}">${fieldValue(bean: produtoInstance, field: "dataAlteracao")}</g:link></td>
					
						<td>${fieldValue(bean: produtoInstance, field: "nome")}</td>
					
						<td>${fieldValue(bean: produtoInstance, field: "descricao")}</td>
					
						<td>${fieldValue(bean: produtoInstance, field: "precoBase")}</td>
					
						<td><g:formatBoolean boolean="${produtoInstance.activo}" /></td>
					
						<td><g:formatDate date="${produtoInstance.dataCriacao}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${produtoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
