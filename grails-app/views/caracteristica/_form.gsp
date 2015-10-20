<%@ page import="mz.co.igsys.Caracteristica" %>



<div class="fieldcontain ${hasErrors(bean: caracteristicaInstance, field: 'dataAlteracao', 'error')} ">
	<label for="dataAlteracao">
		<g:message code="caracteristica.dataAlteracao.label" default="Data Alteracao" />
		
	</label>
	<g:datePicker name="dataAlteracao" precision="day"  value="${caracteristicaInstance?.dataAlteracao}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: caracteristicaInstance, field: 'descricao', 'error')} ">
	<label for="descricao">
		<g:message code="caracteristica.descricao.label" default="Descricao" />
		
	</label>
	<g:textField name="descricao" value="${caracteristicaInstance?.descricao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: caracteristicaInstance, field: 'activo', 'error')} ">
	<label for="activo">
		<g:message code="caracteristica.activo.label" default="Activo" />
		
	</label>
	<g:checkBox name="activo" value="${caracteristicaInstance?.activo}" />

</div>

<div class="fieldcontain ${hasErrors(bean: caracteristicaInstance, field: 'dataCriacao', 'error')} required">
	<label for="dataCriacao">
		<g:message code="caracteristica.dataCriacao.label" default="Data Criacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataCriacao" precision="day"  value="${caracteristicaInstance?.dataCriacao}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: caracteristicaInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="caracteristica.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${caracteristicaInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: caracteristicaInstance, field: 'opcoes', 'error')} ">
	<label for="opcoes">
		<g:message code="caracteristica.opcoes.label" default="Opcoes" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${caracteristicaInstance?.opcoes?}" var="o">
    <li><g:link controller="opcao" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="opcao" action="create" params="['caracteristica.id': caracteristicaInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'opcao.label', default: 'Opcao')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: caracteristicaInstance, field: 'produto', 'error')} required">
	<label for="produto">
		<g:message code="caracteristica.produto.label" default="Produto" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="produto" name="produto.id" from="${mz.co.igsys.Produto.list()}" optionKey="id" required="" value="${caracteristicaInstance?.produto?.id}" class="many-to-one"/>

</div>

