<%@ page import="mz.co.igsys.Utilizador" %>



<div class="fieldcontain ${hasErrors(bean: utilizadorInstance, field: 'alteradoPor', 'error')} ">
	<label for="alteradoPor">
		<g:message code="utilizador.alteradoPor.label" default="Alterado Por" />
		
	</label>
	<g:select id="alteradoPor" name="alteradoPor.id" from="${mz.co.igsys.Utilizador.list()}" optionKey="id" value="${utilizadorInstance?.alteradoPor?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: utilizadorInstance, field: 'dataAlteracao', 'error')} ">
	<label for="dataAlteracao">
		<g:message code="utilizador.dataAlteracao.label" default="Data Alteracao" />
		
	</label>
	<g:datePicker name="dataAlteracao" precision="day"  value="${utilizadorInstance?.dataAlteracao}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: utilizadorInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="utilizador.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${utilizadorInstance?.username}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: utilizadorInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="utilizador.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${utilizadorInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: utilizadorInstance, field: 'criadoPor', 'error')} ">
	<label for="criadoPor">
		<g:message code="utilizador.criadoPor.label" default="Criado Por" />
		
	</label>
	<g:select id="criadoPor" name="criadoPor.id" from="${mz.co.igsys.Utilizador.list()}" optionKey="id" value="${utilizadorInstance?.criadoPor?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: utilizadorInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:message code="utilizador.accountExpired.label" default="Account Expired" />
		
	</label>
	<g:checkBox name="accountExpired" value="${utilizadorInstance?.accountExpired}" />

</div>

<div class="fieldcontain ${hasErrors(bean: utilizadorInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="utilizador.accountLocked.label" default="Account Locked" />
		
	</label>
	<g:checkBox name="accountLocked" value="${utilizadorInstance?.accountLocked}" />

</div>

<div class="fieldcontain ${hasErrors(bean: utilizadorInstance, field: 'activo', 'error')} ">
	<label for="activo">
		<g:message code="utilizador.activo.label" default="Activo" />
		
	</label>
	<g:checkBox name="activo" value="${utilizadorInstance?.activo}" />

</div>

<div class="fieldcontain ${hasErrors(bean: utilizadorInstance, field: 'dataCriacao', 'error')} required">
	<label for="dataCriacao">
		<g:message code="utilizador.dataCriacao.label" default="Data Criacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataCriacao" precision="day"  value="${utilizadorInstance?.dataCriacao}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: utilizadorInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="utilizador.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${utilizadorInstance?.enabled}" />

</div>

<div class="fieldcontain ${hasErrors(bean: utilizadorInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="utilizador.passwordExpired.label" default="Password Expired" />
		
	</label>
	<g:checkBox name="passwordExpired" value="${utilizadorInstance?.passwordExpired}" />

</div>

