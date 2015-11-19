<%@ page import="mz.co.igsys.Cliente" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="admin">
		<g:set var="entityName" value="${message(code: 'cliente.label', default: 'Cliente')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
	<g:if test="${flash.message}">
		<div class="alert alert-success" role="status">${flash.message}</div>
	</g:if>
	<g:hasErrors bean="${clienteInstance}">
		<ul class="alert alert-danger" role="alert">
			<g:eachError bean="${clienteInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
			</g:eachError>
		</ul>
	</g:hasErrors>
		<div class="nav" role="navigation">
			<ul>
				<li><g:link class="btn btn-info" action="index"><i class="fa fa-list"></i> Clientes</g:link></li>
				<li><g:link class="btn btn-info" action="create"><i class="fa fa-plus"></i> <g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
	<div class="panel">
		<header class="panel-heading"><g:message code="default.edit.label" args="[entityName]" /></header>
		<div class="panel-body">
			<g:form url="[resource:clienteInstance, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${clienteInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:actionSubmit class="btn btn-info" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
				</fieldset>
			</g:form>
			</div>
		</div>
	</body>
</html>
