<%@ page import="mz.co.igsys.Perfil; mz.co.igsys.User" %>





<div class="form-group ${hasErrors(bean: utilizadorInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="utilizador.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="username" required="" value="${utilizadorInstance?.username}"/>

</div>

<div class="form-group ${hasErrors(bean: utilizadorInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="utilizador.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="password" required="" value="${utilizadorInstance?.password}"/>

</div>
<div class="form-group">
	<label for="role">
		Perfil
		<span class="required-indicator">*</span>
	</label>
	<g:select class="form-control" id="perfil" name="authority" from="${mz.co.igsys.Perfil.list()}" optionKey="authority" value="${params.authority}"  />
</div>



