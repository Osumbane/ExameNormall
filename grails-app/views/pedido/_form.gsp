<%@ page import="mz.co.igsys.Pedido" %>

<div class="form-group ${hasErrors(bean: pedidoInstance, field: 'cliente', 'error')} required">
	<label for="cliente">
		<g:message code="pedido.cliente.label" default="Cliente" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="cliente" name="cliente.id" from="${mz.co.igsys.Cliente.list()}" optionKey="id" required="" value="${pedidoInstance?.cliente?.id}" class="form-control"/>

</div>

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
<g:if test="${pedidoInstance.id}">
	<div class="form-group ${hasErrors(bean: pedidoInstance, field: 'observacoes', 'error')} required">
		<label for="estado">
			Estado
		</label>
		<g:select class="form-control" name="estado" from="${['SUBMETIDO', 'PAGO', 'EM PRODUCAO', 'ENTREGUE']}" value="${pedidoInstance?.estado}" />

	</div>
</g:if>
<div class="form-group ${hasErrors(bean: pedidoInstance, field: 'observacoes', 'error')} required">
	<label for="observacoes">
		<g:message code="pedido.observacoes.label" default="Observacoes" />
	</label>
	<g:textArea class="form-control" name="observacoes" required="" value="${pedidoInstance?.observacoes}"/>

</div>



