<%@ page import="com.stock.Categoria" %>



<div class="fieldcontain ${hasErrors(bean: categoriaInstance, field: 'detail', 'error')} required">
	<label for="detail">
		<g:message code="categoria.detail.label" default="Detail" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="detail" maxlength="30" required="" value="${categoriaInstance?.detail}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: categoriaInstance, field: 'totalItems', 'error')} required">
	<label for="totalItems">
		<g:message code="categoria.totalItems.label" default="Total Items" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="totalItems" type="number" min="0" value="${categoriaInstance.totalItems}" required=""/>

</div>

