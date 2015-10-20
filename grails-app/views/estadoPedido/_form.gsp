<%@ page import="mz.co.igsys.EstadoPedido" %>



<div class="fieldcontain ${hasErrors(bean: estadoPedidoInstance, field: 'dataAlteracao', 'error')} ">
	<label for="dataAlteracao">
		<g:message code="estadoPedido.dataAlteracao.label" default="Data Alteracao" />
		
	</label>
	<g:datePicker name="dataAlteracao" precision="day"  value="${estadoPedidoInstance?.dataAlteracao}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: estadoPedidoInstance, field: 'estado', 'error')} required">
	<label for="estado">
		<g:message code="estadoPedido.estado.label" default="Estado" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="estado" from="${estadoPedidoInstance.constraints.estado.inList}" required="" value="${estadoPedidoInstance?.estado}" valueMessagePrefix="estadoPedido.estado"/>

</div>

<div class="fieldcontain ${hasErrors(bean: estadoPedidoInstance, field: 'observacoes', 'error')} ">
	<label for="observacoes">
		<g:message code="estadoPedido.observacoes.label" default="Observacoes" />
		
	</label>
	<g:textArea name="observacoes" cols="40" rows="5" maxlength="1000" value="${estadoPedidoInstance?.observacoes}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: estadoPedidoInstance, field: 'activo', 'error')} ">
	<label for="activo">
		<g:message code="estadoPedido.activo.label" default="Activo" />
		
	</label>
	<g:checkBox name="activo" value="${estadoPedidoInstance?.activo}" />

</div>

<div class="fieldcontain ${hasErrors(bean: estadoPedidoInstance, field: 'dataCriacao', 'error')} required">
	<label for="dataCriacao">
		<g:message code="estadoPedido.dataCriacao.label" default="Data Criacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataCriacao" precision="day"  value="${estadoPedidoInstance?.dataCriacao}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: estadoPedidoInstance, field: 'pedido', 'error')} required">
	<label for="pedido">
		<g:message code="estadoPedido.pedido.label" default="Pedido" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="pedido" name="pedido.id" from="${mz.co.igsys.Pedido.list()}" optionKey="id" required="" value="${estadoPedidoInstance?.pedido?.id}" class="many-to-one"/>

</div>

