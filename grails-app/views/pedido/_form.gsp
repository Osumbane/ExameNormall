<%@ page import="mz.co.igsys.Pedido" %>


<div class="form-group ${hasErrors(bean: pedidoInstance, field: 'produto', 'error')} required">
	<label for="produto">
		<g:message code="pedido.produto.label" default="Produto" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="produto" name="produto.id" from="${mz.co.igsys.Produto.list()}" optionKey="id" required="" value="${pedidoInstance?.produto?.id}" class="form-control"/>

</div>

<div class="form-group ${hasErrors(bean: pedidoInstance, field: 'quantidade', 'error')} required">
	<label for="quantidade">
		<g:message code="pedido.quantidade.label" default="Quantidade" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="quantidade" type="number" value="${pedidoInstance.quantidade}" required="" class="form-control"/>

</div>

<div class="form-group ${hasErrors(bean: pedidoInstance, field: 'codigo', 'error')} ">
	<label for="codigo">
		<g:message code="pedido.codigo.label" default="Codigo" />
		
	</label>
	<g:textField name="codigo" value="${pedidoInstance?.codigo}" class="form-control"/>

</div>

<div class="form-group ${hasErrors(bean: pedidoInstance, field: 'cliente', 'error')} required">
	<label for="cliente">
		<g:message code="pedido.cliente.label" default="Cliente" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="cliente" name="cliente.id" from="${mz.co.igsys.Cliente.list()}" optionKey="id" required="" value="${pedidoInstance?.cliente?.id}" class="form-control"/>

</div>

<div class="form-group ${hasErrors(bean: pedidoInstance, field: 'custo', 'error')} required">
	<label for="custo">
		<g:message code="pedido.custo.label" default="Custo" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="custo" value="${fieldValue(bean: pedidoInstance, field: 'custo')}" required="" class="form-control"/>

</div>

<div class="form-group ${hasErrors(bean: pedidoInstance, field: 'observacoes', 'error')} required">
	<label for="observacoes">
		<g:message code="pedido.observacoes.label" default="Observacoes" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea class="form-control" name="observacoes" required="" value="${pedidoInstance?.observacoes}"/>

</div>



