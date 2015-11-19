<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="admin">
		<g:set var="entityName" value="${message(code: 'utilizador.label', default: 'Utilizador')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
		</g:if>
		<g:hasErrors bean="${utilizadorInstance}">
			<ul class="alert alert-danger" role="alert">
				<g:eachError bean="${utilizadorInstance}" var="error">
					<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
		</g:hasErrors>
		<div class="nav" role="navigation">
			<ul>
				<li><g:link class="btn btn-info" action="index"><i class="fa fa-list"></i> utilizadores</g:link></li>
			</ul>
		</div>
		<div class="panel">
			<header class="panel-heading"><g:message code="default.create.label" args="[entityName]" /></header>
			<div class="panel-body">

			<g:form url="[resource:utilizadorInstance, action:'save']" >
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="btn btn-info" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
			</g:form>
			</div>
		</div>
	</body>
</html>
