<%@ page import="mz.co.igsys.Desconto" %>



<div class="fieldcontain ${hasErrors(bean: descontoInstance, field: 'dataAlteracao', 'error')} ">
	<label for="dataAlteracao">
		<g:message code="desconto.dataAlteracao.label" default="Data Alteracao" />
		
	</label>
	<g:datePicker name="dataAlteracao" precision="day"  value="${descontoInstance?.dataAlteracao}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: descontoInstance, field: 'activo', 'error')} ">
	<label for="activo">
		<g:message code="desconto.activo.label" default="Activo" />
		
	</label>
	<g:checkBox name="activo" value="${descontoInstance?.activo}" />

</div>

<div class="fieldcontain ${hasErrors(bean: descontoInstance, field: 'dataCriacao', 'error')} required">
	<label for="dataCriacao">
		<g:message code="desconto.dataCriacao.label" default="Data Criacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataCriacao" precision="day"  value="${descontoInstance?.dataCriacao}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: descontoInstance, field: 'desconto', 'error')} required">
	<label for="desconto">
		<g:message code="desconto.desconto.label" default="Desconto" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="desconto" value="${fieldValue(bean: descontoInstance, field: 'desconto')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: descontoInstance, field: 'produto', 'error')} required">
	<label for="produto">
		<g:message code="desconto.produto.label" default="Produto" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="produto" name="produto.id" from="${mz.co.igsys.Produto.list()}" optionKey="id" required="" value="${descontoInstance?.produto?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: descontoInstance, field: 'quantidade', 'error')} required">
	<label for="quantidade">
		<g:message code="desconto.quantidade.label" default="Quantidade" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="quantidade" type="number" value="${descontoInstance.quantidade}" required=""/>

</div>

