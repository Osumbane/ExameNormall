
<%@ page import="mz.co.igsys.Produto" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="admin">
		<g:set var="entityName" value="${message(code: 'produto.label', default: 'Produto')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<g:if test="${flash.message}">
			<div class="alert alert-success" role="status">${flash.message}</div>
		</g:if>
		<div class="nav" role="navigation">
			<ul>
				<li><g:link class="btn btn-info" action="create"> <i class="fa fa-plus"></i> Novo Produto</g:link></li>
			</ul>
		</div>
		<div class="panel">
			<header class="panel-heading">Produtos</header>
			<div class="panel-body">
			<table class="table table-striped">
			<thead>
					<tr>
					

					
						<g:sortableColumn property="nome" title="${message(code: 'produto.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="descricao" title="${message(code: 'produto.descricao.label', default: 'Descricao')}" />
					
						<g:sortableColumn property="precoBase" title="${message(code: 'produto.precoBase.label', default: 'Preco Base')}" />
					

						<th></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${produtoInstanceList}" status="i" var="produtoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					

					
						<td><g:link action="show" id="${produtoInstance.id}">${fieldValue(bean: produtoInstance, field: "nome")}</g:link></td>
					
						<td>${fieldValue(bean: produtoInstance, field: "descricao")}</td>
					
						<td>${fieldValue(bean: produtoInstance, field: "precoBase")}</td>


						<td>
							<div class="pull-right hidden-phone">
								<g:form url="[resource:produtoInstance, action:'delete']" method="DELETE">
									<fieldset class="buttons">
										<g:link class="btn btn-default btn-xs" controller="caracteristica" action="index" id="${produtoInstance.id}" ><i class="fa fa-cogs"></i></g:link>
										<g:link class="btn btn-default btn-xs" action="edit" resource="${produtoInstance}" ><i class="fa fa-pencil"></i></g:link>
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
				<g:paginate total="${produtoInstanceCount ?: 0}" />
			</div>
			</div>
		</div>
	</body>
</html>
