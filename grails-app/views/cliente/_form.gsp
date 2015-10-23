<%@ page import="mz.co.igsys.Cliente" %>



<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'alteradoPor', 'error')} ">
	<label for="alteradoPor">
		<g:message code="cliente.alteradoPor.label" default="Alterado Por" />
		
	</label>
	<g:select id="alteradoPor" name="alteradoPor.id" from="${mz.co.igsys.Utilizador.list()}" optionKey="id" value="${clienteInstance?.alteradoPor?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'dataAlteracao', 'error')} ">
	<label for="dataAlteracao">
		<g:message code="cliente.dataAlteracao.label" default="Data Alteracao" />
		
	</label>
	<g:datePicker name="dataAlteracao" precision="day"  value="${clienteInstance?.dataAlteracao}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="cliente.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${clienteInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'nuit', 'error')} required">
	<label for="nuit">
		<g:message code="cliente.nuit.label" default="Nuit" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nuit" maxlength="9" required="" value="${clienteInstance?.nuit}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'endereco', 'error')} required">
	<label for="endereco">
		<g:message code="cliente.endereco.label" default="Endereco" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="endereco" required="" value="${clienteInstance?.endereco}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'telefone', 'error')} required">
	<label for="telefone">
		<g:message code="cliente.telefone.label" default="Telefone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="telefone" required="" value="${clienteInstance?.telefone}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'fax', 'error')} ">
	<label for="fax">
		<g:message code="cliente.fax.label" default="Fax" />
		
	</label>
	<g:textField name="fax" value="${clienteInstance?.fax}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'website', 'error')} ">
	<label for="website">
		<g:message code="cliente.website.label" default="Website" />
		
	</label>
	<g:textField name="website" value="${clienteInstance?.website}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="cliente.email.label" default="Email" />
		
	</label>
	<g:field type="email" name="email" value="${clienteInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'activo', 'error')} ">
	<label for="activo">
		<g:message code="cliente.activo.label" default="Activo" />
		
	</label>
	<g:checkBox name="activo" value="${clienteInstance?.activo}" />

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'criadoPor', 'error')} required">
	<label for="criadoPor">
		<g:message code="cliente.criadoPor.label" default="Criado Por" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="criadoPor" name="criadoPor.id" from="${mz.co.igsys.Utilizador.list()}" optionKey="id" required="" value="${clienteInstance?.criadoPor?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'dataCriacao', 'error')} required">
	<label for="dataCriacao">
		<g:message code="cliente.dataCriacao.label" default="Data Criacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataCriacao" precision="day"  value="${clienteInstance?.dataCriacao}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'pedidos', 'error')} ">
	<label for="pedidos">
		<g:message code="cliente.pedidos.label" default="Pedidos" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${clienteInstance?.pedidos?}" var="p">
    <li><g:link controller="pedido" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="pedido" action="create" params="['cliente.id': clienteInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'pedido.label', default: 'Pedido')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'utilizador', 'error')} required">
	<label for="utilizador">
		<g:message code="cliente.utilizador.label" default="Utilizador" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="utilizador" name="utilizador.id" from="${mz.co.igsys.Utilizador.list()}" optionKey="id" required="" value="${clienteInstance?.utilizador?.id}" class="many-to-one"/>

</div>

