<%@ page import="mz.co.igsys.Produto" %>



<div class="fieldcontain ${hasErrors(bean: produtoInstance, field: 'dataAlteracao', 'error')} ">
	<label for="dataAlteracao">
		<g:message code="produto.dataAlteracao.label" default="Data Alteracao" />
		
	</label>
	<g:datePicker name="dataAlteracao" precision="day"  value="${produtoInstance?.dataAlteracao}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: produtoInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="produto.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${produtoInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: produtoInstance, field: 'descricao', 'error')} ">
	<label for="descricao">
		<g:message code="produto.descricao.label" default="Descricao" />
		
	</label>
	<g:textField name="descricao" value="${produtoInstance?.descricao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: produtoInstance, field: 'precoBase', 'error')} required">
	<label for="precoBase">
		<g:message code="produto.precoBase.label" default="Preco Base" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="precoBase" value="${fieldValue(bean: produtoInstance, field: 'precoBase')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: produtoInstance, field: 'activo', 'error')} ">
	<label for="activo">
		<g:message code="produto.activo.label" default="Activo" />
		
	</label>
	<g:checkBox name="activo" value="${produtoInstance?.activo}" />

</div>

<div class="fieldcontain ${hasErrors(bean: produtoInstance, field: 'caracteristicas', 'error')} ">
	<label for="caracteristicas">
		<g:message code="produto.caracteristicas.label" default="Caracteristicas" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${produtoInstance?.caracteristicas?}" var="c">
    <li><g:link controller="caracteristica" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="caracteristica" action="create" params="['produto.id': produtoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'caracteristica.label', default: 'Caracteristica')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: produtoInstance, field: 'dataCriacao', 'error')} required">
	<label for="dataCriacao">
		<g:message code="produto.dataCriacao.label" default="Data Criacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataCriacao" precision="day"  value="${produtoInstance?.dataCriacao}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: produtoInstance, field: 'descontos', 'error')} ">
	<label for="descontos">
		<g:message code="produto.descontos.label" default="Descontos" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${produtoInstance?.descontos?}" var="d">
    <li><g:link controller="desconto" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="desconto" action="create" params="['produto.id': produtoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'desconto.label', default: 'Desconto')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: produtoInstance, field: 'pedidos', 'error')} ">
	<label for="pedidos">
		<g:message code="produto.pedidos.label" default="Pedidos" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${produtoInstance?.pedidos?}" var="p">
    <li><g:link controller="pedido" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="pedido" action="create" params="['produto.id': produtoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'pedido.label', default: 'Pedido')])}</g:link>
</li>
</ul>


</div>

