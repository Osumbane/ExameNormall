<%@ page import="mz.co.igsys.Cliente" %>




<div class="form-group ${hasErrors(bean: clienteInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="cliente.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="nome" required="" value="${clienteInstance?.nome}"/>

</div>

<div class="form-group ${hasErrors(bean: clienteInstance, field: 'nuit', 'error')} required">
	<label for="nuit">
		<g:message code="cliente.nuit.label" default="Nuit" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="nuit" maxlength="9" required="" value="${clienteInstance?.nuit}"/>

</div>

<div class="form-group ${hasErrors(bean: clienteInstance, field: 'endereco', 'error')} required">
	<label for="endereco">
		<g:message code="cliente.endereco.label" default="Endereco" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="endereco" required="" value="${clienteInstance?.endereco}"/>

</div>

<div class="form-group ${hasErrors(bean: clienteInstance, field: 'telefone', 'error')} required">
	<label for="telefone">
		<g:message code="cliente.telefone.label" default="Telefone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="telefone" required="" value="${clienteInstance?.telefone}"/>

</div>

<div class="form-group ${hasErrors(bean: clienteInstance, field: 'fax', 'error')} ">
	<label for="fax">
		<g:message code="cliente.fax.label" default="Fax" />
		
	</label>
	<g:textField class="form-control" name="fax" value="${clienteInstance?.fax}"/>

</div>

<div class="form-group ${hasErrors(bean: clienteInstance, field: 'website', 'error')} ">
	<label for="website">
		<g:message code="cliente.website.label" default="Website" />
		
	</label>
	<g:textField class="form-control" name="website" value="${clienteInstance?.website}"/>

</div>

<div class="form-group ${hasErrors(bean: clienteInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="cliente.email.label" default="Email" />
		
	</label>
	<g:field class="form-control" type="email" name="email" value="${clienteInstance?.email}"/>

</div>

<div class="form-group ${hasErrors(bean: clienteInstance, field: 'utilizador', 'error')} required">
	<label for="utilizador">
		<g:message code="cliente.utilizador.label" default="Utilizador" />
		<span class="required-indicator">*</span>
	</label>
	<g:select class="form-control" id="utilizador" name="utilizador.id" from="${mz.co.igsys.Utilizador.list()}" optionKey="id" required="" value="${clienteInstance?.utilizador?.id}" />

</div>

