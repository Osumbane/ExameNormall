<%@ page import="mz.co.igsys.Produto" %>




<div class="form-group ${hasErrors(bean: produtoInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="produto.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="nome" required="" value="${produtoInstance?.nome}"/>

</div>

<div class="form-group ${hasErrors(bean: produtoInstance, field: 'descricao', 'error')} ">
	<label for="descricao">
		<g:message code="produto.descricao.label" default="Descricao" />
		
	</label>
	<g:textArea class="form-control" name="descricao" value="${produtoInstance?.descricao}"/>

</div>

<div class="form-group ${hasErrors(bean: produtoInstance, field: 'precoBase', 'error')} required">
	<label for="precoBase">
		<g:message code="produto.precoBase.label" default="Preco Base" />
		<span class="required-indicator">*</span>
	</label>
	<g:field class="form-control" name="precoBase" value="${fieldValue(bean: produtoInstance, field: 'precoBase')}" required=""/>

</div>


