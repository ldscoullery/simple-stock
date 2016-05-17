
<%@ page import="com.stock.Producto" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'producto.label', default: 'Producto')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-producto" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-producto" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list producto">
			
				<g:if test="${productoInstance?.code}">
				<li class="fieldcontain">
					<span id="code-label" class="property-label"><g:message code="producto.code.label" default="Code" /></span>
					
						<span class="property-value" aria-labelledby="code-label"><g:fieldValue bean="${productoInstance}" field="code"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.detail}">
				<li class="fieldcontain">
					<span id="detail-label" class="property-label"><g:message code="producto.detail.label" default="Detail" /></span>
					
						<span class="property-value" aria-labelledby="detail-label"><g:fieldValue bean="${productoInstance}" field="detail"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.size}">
				<li class="fieldcontain">
					<span id="size-label" class="property-label"><g:message code="producto.size.label" default="Size" /></span>
					
						<span class="property-value" aria-labelledby="size-label"><g:fieldValue bean="${productoInstance}" field="size"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.color}">
				<li class="fieldcontain">
					<span id="color-label" class="property-label"><g:message code="producto.color.label" default="Color" /></span>
					
						<span class="property-value" aria-labelledby="color-label"><g:fieldValue bean="${productoInstance}" field="color"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.category}">
				<li class="fieldcontain">
					<span id="category-label" class="property-label"><g:message code="producto.category.label" default="Category" /></span>
					
						<span class="property-value" aria-labelledby="category-label"><g:link controller="categoria" action="show" id="${productoInstance?.category?.id}">${productoInstance?.category?.detail.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.quantity}">
				<li class="fieldcontain">
					<span id="quantity-label" class="property-label"><g:message code="producto.quantity.label" default="Quantity" /></span>
					
						<span class="property-value" aria-labelledby="quantity-label"><g:fieldValue bean="${productoInstance}" field="quantity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.trade}">
				<li class="fieldcontain">
					<span id="trade-label" class="property-label"><g:message code="producto.trade.label" default="Trade" /></span>
					
						<span class="property-value" aria-labelledby="trade-label"><g:fieldValue bean="${productoInstance}" field="trade.detail"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="producto.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:formatBoolean boolean="${productoInstance?.status}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.costPrice}">
				<li class="fieldcontain">
					<span id="costPrice-label" class="property-label"><g:message code="producto.costPrice.label" default="Cost Price" /></span>
					
						<span class="property-value" aria-labelledby="costPrice-label"><g:fieldValue bean="${productoInstance}" field="costPrice"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.soldPrice}">
				<li class="fieldcontain">
					<span id="soldPrice-label" class="property-label"><g:message code="producto.soldPrice.label" default="Sold Price" /></span>
					
						<span class="property-value" aria-labelledby="soldPrice-label"><g:fieldValue bean="${productoInstance}" field="soldPrice"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:productoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${productoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
