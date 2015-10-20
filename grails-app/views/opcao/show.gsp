
<%@ page import="mz.co.igsys.Opcao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'opcao.label', default: 'Opcao')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-opcao" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-opcao" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list opcao">
			
				<g:if test="${opcaoInstance?.dataAlteracao}">
				<li class="fieldcontain">
					<span id="dataAlteracao-label" class="property-label"><g:message code="opcao.dataAlteracao.label" default="Data Alteracao" /></span>
					
						<span class="property-value" aria-labelledby="dataAlteracao-label"><g:formatDate date="${opcaoInstance?.dataAlteracao}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${opcaoInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="opcao.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${opcaoInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${opcaoInstance?.descricao}">
				<li class="fieldcontain">
					<span id="descricao-label" class="property-label"><g:message code="opcao.descricao.label" default="Descricao" /></span>
					
						<span class="property-value" aria-labelledby="descricao-label"><g:fieldValue bean="${opcaoInstance}" field="descricao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${opcaoInstance?.activo}">
				<li class="fieldcontain">
					<span id="activo-label" class="property-label"><g:message code="opcao.activo.label" default="Activo" /></span>
					
						<span class="property-value" aria-labelledby="activo-label"><g:formatBoolean boolean="${opcaoInstance?.activo}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${opcaoInstance?.caracteristica}">
				<li class="fieldcontain">
					<span id="caracteristica-label" class="property-label"><g:message code="opcao.caracteristica.label" default="Caracteristica" /></span>
					
						<span class="property-value" aria-labelledby="caracteristica-label"><g:link controller="caracteristica" action="show" id="${opcaoInstance?.caracteristica?.id}">${opcaoInstance?.caracteristica?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${opcaoInstance?.dataCriacao}">
				<li class="fieldcontain">
					<span id="dataCriacao-label" class="property-label"><g:message code="opcao.dataCriacao.label" default="Data Criacao" /></span>
					
						<span class="property-value" aria-labelledby="dataCriacao-label"><g:formatDate date="${opcaoInstance?.dataCriacao}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${opcaoInstance?.detalhes}">
				<li class="fieldcontain">
					<span id="detalhes-label" class="property-label"><g:message code="opcao.detalhes.label" default="Detalhes" /></span>
					
						<g:each in="${opcaoInstance.detalhes}" var="d">
						<span class="property-value" aria-labelledby="detalhes-label"><g:link controller="detalhePedido" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${opcaoInstance?.factor}">
				<li class="fieldcontain">
					<span id="factor-label" class="property-label"><g:message code="opcao.factor.label" default="Factor" /></span>
					
						<span class="property-value" aria-labelledby="factor-label"><g:fieldValue bean="${opcaoInstance}" field="factor"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:opcaoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${opcaoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
