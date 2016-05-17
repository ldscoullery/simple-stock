
<%@ page import="com.stock.Producto" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'producto.label', default: 'Producto')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-producto" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a href="${createLink(uri: '/')}"><i class="fa fa-home" style="font-size:24px"></i></a></li>
				<li><g:link action="create"><i class="fa fa-plus-square" style="font-size:24px"></i></g:link></li>
				
			</ul>
		</div>
		<div id="list-producto" class="content scaffold-list" role="main">
			<div id="productSearch" class="search">
				<g:form controller="producto" action="search">
					<label>Ingresá tu busqueda:</label>
					<g:field type="text" name="query" placeholder="Código, Categoria, Marca" width="200px"/>
					<g:submitButton name="buscar" class="save" value="Buscar" />
				</g:form>
			</div>
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="code" title="${message(code: 'producto.code.label', default: 'Código')}" />
					
						<g:sortableColumn property="detail" title="${message(code: 'producto.detail.label', default: 'Detalle')}" />
					
						<g:sortableColumn property="size" title="${message(code: 'producto.size.label', default: 'Talle')}" />
					
						<g:sortableColumn property="color" title="${message(code: 'producto.color.label', default: 'Color')}" />
					
						<th><g:message code="producto.category.label" default="Categoría" /></th>
					
						<g:sortableColumn property="quantity" title="${message(code: 'producto.quantity.label', default: 'Cantidad')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${productoInstanceList}" status="i" var="productoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${productoInstance.id}">${fieldValue(bean: productoInstance, field: "code")}</g:link></td>
					
						<td>${fieldValue(bean: productoInstance, field: "detail")}</td>
					
						<td>${fieldValue(bean: productoInstance, field: "size")}</td>
					
						<td>${fieldValue(bean: productoInstance, field: "color")}</td>
					
						<td>${fieldValue(bean: productoInstance, field: "category.detail")}</td>
					
						<td>${fieldValue(bean: productoInstance, field: "quantity")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${productoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
