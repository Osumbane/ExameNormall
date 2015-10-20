
<%@ page import="mz.co.igsys.Produto" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'produto.label', default: 'Produto')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-produto" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-produto" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list produto">
			
				<g:if test="${produtoInstance?.dataAlteracao}">
				<li class="fieldcontain">
					<span id="dataAlteracao-label" class="property-label"><g:message code="produto.dataAlteracao.label" default="Data Alteracao" /></span>
					
						<span class="property-value" aria-labelledby="dataAlteracao-label"><g:formatDate date="${produtoInstance?.dataAlteracao}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${produtoInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="produto.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${produtoInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${produtoInstance?.descricao}">
				<li class="fieldcontain">
					<span id="descricao-label" class="property-label"><g:message code="produto.descricao.label" default="Descricao" /></span>
					
						<span class="property-value" aria-labelledby="descricao-label"><g:fieldValue bean="${produtoInstance}" field="descricao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${produtoInstance?.precoBase}">
				<li class="fieldcontain">
					<span id="precoBase-label" class="property-label"><g:message code="produto.precoBase.label" default="Preco Base" /></span>
					
						<span class="property-value" aria-labelledby="precoBase-label"><g:fieldValue bean="${produtoInstance}" field="precoBase"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${produtoInstance?.activo}">
				<li class="fieldcontain">
					<span id="activo-label" class="property-label"><g:message code="produto.activo.label" default="Activo" /></span>
					
						<span class="property-value" aria-labelledby="activo-label"><g:formatBoolean boolean="${produtoInstance?.activo}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${produtoInstance?.caracteristicas}">
				<li class="fieldcontain">
					<span id="caracteristicas-label" class="property-label"><g:message code="produto.caracteristicas.label" default="Caracteristicas" /></span>
					
						<g:each in="${produtoInstance.caracteristicas}" var="c">
						<span class="property-value" aria-labelledby="caracteristicas-label"><g:link controller="caracteristica" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${produtoInstance?.dataCriacao}">
				<li class="fieldcontain">
					<span id="dataCriacao-label" class="property-label"><g:message code="produto.dataCriacao.label" default="Data Criacao" /></span>
					
						<span class="property-value" aria-labelledby="dataCriacao-label"><g:formatDate date="${produtoInstance?.dataCriacao}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${produtoInstance?.descontos}">
				<li class="fieldcontain">
					<span id="descontos-label" class="property-label"><g:message code="produto.descontos.label" default="Descontos" /></span>
					
						<g:each in="${produtoInstance.descontos}" var="d">
						<span class="property-value" aria-labelledby="descontos-label"><g:link controller="desconto" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${produtoInstance?.pedidos}">
				<li class="fieldcontain">
					<span id="pedidos-label" class="property-label"><g:message code="produto.pedidos.label" default="Pedidos" /></span>
					
						<g:each in="${produtoInstance.pedidos}" var="p">
						<span class="property-value" aria-labelledby="pedidos-label"><g:link controller="pedido" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:produtoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${produtoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
