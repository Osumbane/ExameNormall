<%@ page import="mz.co.igsys.DetalhePedido" %>



<div class="fieldcontain ${hasErrors(bean: detalhePedidoInstance, field: 'opcao', 'error')} required">
	<label for="opcao">
		<g:message code="detalhePedido.opcao.label" default="Opcao" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="opcao" name="opcao.id" from="${mz.co.igsys.Opcao.list()}" optionKey="id" required="" value="${detalhePedidoInstance?.opcao?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: detalhePedidoInstance, field: 'pedido', 'error')} required">
	<label for="pedido">
		<g:message code="detalhePedido.pedido.label" default="Pedido" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="pedido" name="pedido.id" from="${mz.co.igsys.Pedido.list()}" optionKey="id" required="" value="${detalhePedidoInstance?.pedido?.id}" class="many-to-one"/>

</div>

