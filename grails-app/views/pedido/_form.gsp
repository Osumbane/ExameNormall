<%@ page import="mz.co.igsys.Pedido" %>



<div class="fieldcontain ${hasErrors(bean: pedidoInstance, field: 'dataAlteracao', 'error')} ">
	<label for="dataAlteracao">
		<g:message code="pedido.dataAlteracao.label" default="Data Alteracao" />
		
	</label>
	<g:datePicker name="dataAlteracao" precision="day"  value="${pedidoInstance?.dataAlteracao}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: pedidoInstance, field: 'codigo', 'error')} ">
	<label for="codigo">
		<g:message code="pedido.codigo.label" default="Codigo" />
		
	</label>
	<g:textField name="codigo" value="${pedidoInstance?.codigo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pedidoInstance, field: 'custo', 'error')} required">
	<label for="custo">
		<g:message code="pedido.custo.label" default="Custo" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="custo" value="${fieldValue(bean: pedidoInstance, field: 'custo')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: pedidoInstance, field: 'activo', 'error')} ">
	<label for="activo">
		<g:message code="pedido.activo.label" default="Activo" />
		
	</label>
	<g:checkBox name="activo" value="${pedidoInstance?.activo}" />

</div>

<div class="fieldcontain ${hasErrors(bean: pedidoInstance, field: 'cliente', 'error')} required">
	<label for="cliente">
		<g:message code="pedido.cliente.label" default="Cliente" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="cliente" name="cliente.id" from="${mz.co.igsys.Cliente.list()}" optionKey="id" required="" value="${pedidoInstance?.cliente?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pedidoInstance, field: 'dataCriacao', 'error')} required">
	<label for="dataCriacao">
		<g:message code="pedido.dataCriacao.label" default="Data Criacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataCriacao" precision="day"  value="${pedidoInstance?.dataCriacao}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: pedidoInstance, field: 'detalhes', 'error')} ">
	<label for="detalhes">
		<g:message code="pedido.detalhes.label" default="Detalhes" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${pedidoInstance?.detalhes?}" var="d">
    <li><g:link controller="detalhePedido" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="detalhePedido" action="create" params="['pedido.id': pedidoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'detalhePedido.label', default: 'DetalhePedido')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: pedidoInstance, field: 'estados', 'error')} ">
	<label for="estados">
		<g:message code="pedido.estados.label" default="Estados" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${pedidoInstance?.estados?}" var="e">
    <li><g:link controller="estadoPedido" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="estadoPedido" action="create" params="['pedido.id': pedidoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'estadoPedido.label', default: 'EstadoPedido')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: pedidoInstance, field: 'observacoes', 'error')} required">
	<label for="observacoes">
		<g:message code="pedido.observacoes.label" default="Observacoes" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="observacoes" required="" value="${pedidoInstance?.observacoes}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pedidoInstance, field: 'produto', 'error')} required">
	<label for="produto">
		<g:message code="pedido.produto.label" default="Produto" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="produto" name="produto.id" from="${mz.co.igsys.Produto.list()}" optionKey="id" required="" value="${pedidoInstance?.produto?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pedidoInstance, field: 'quantidade', 'error')} required">
	<label for="quantidade">
		<g:message code="pedido.quantidade.label" default="Quantidade" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="quantidade" type="number" value="${pedidoInstance.quantidade}" required=""/>

</div>

