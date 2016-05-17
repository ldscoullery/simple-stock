<%@ page import="com.stock.Marca" %>



<div class="fieldcontain ${hasErrors(bean: marcaInstance, field: 'detail', 'error')} required">
	<label for="detail">
		<g:message code="marca.detail.label" default="Detail" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="detail" maxlength="30" required="" value="${marcaInstance?.detail}"/>

</div>

