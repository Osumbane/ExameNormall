
<%@ page import="mz.co.igsys.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="admin">
		<g:set var="entityName" value="${message(code: 'utilizador.label', default: 'User')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<g:if test="${flash.message}">
			<div class="alert alert-success" role="status">${flash.message}</div>
		</g:if>
<sec:ifAllGranted roles="ROLE_ADMIN">
		<div class="nav" role="navigation">
			<ul>
				<li><g:link class="btn btn-info" action="create"><i class="fa fa-plus"></i> <g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
	</sec:ifAllGranted>
		<div class="panel">
			<header class="panel-heading">Utilizadores</header>
			<div class="panel-body">
			<table class="table table-bordered">
			<thead>
					<tr>
						<g:sortableColumn property="username" title="${message(code: 'utilizador.username.label', default: 'Username')}" />
						<th></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${utilizadorInstanceList}" status="i" var="utilizadorInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

					
						<td>${fieldValue(bean: utilizadorInstance, field: "username")}</td>

						<td>
							<div class="pull-right hidden-phone">
								<g:form url="[resource:utilizadorInstance, action:'delete']" method="DELETE">
									<fieldset class="buttons">
										<g:link class="btn btn-default btn-xs" action="edit" resource="${utilizadorInstance}" ><i class="fa fa-pencil"></i></g:link>
									<sec:ifAllGranted roles="ROLE_ADMIN"><g:actionSubmit class="btn btn-default btn-xs" action="delete" value="x" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Tem certeza?')}');" /></sec:ifAllGranted>
									</fieldset>
								</g:form>
							</div>
						</td>

					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${utilizadorInstanceCount ?: 0}" />
			</div>
			</div>
		</div>
	</body>
</html>
