<%@ page import="com.stock.Producto" %>



<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'code', 'error')} required">
	<label for="code">
		<g:message code="producto.code.label" default="Código" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="code" maxlength="50" required="" value="${params.codigo}" onchange="cargarHidden(this.name)"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'detail', 'error')} required">
	<label for="detail">
		<g:message code="producto.detail.label" default="Detalle" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="detail" maxlength="100" required="" value="${params.detalle}" onchange="cargarHidden(this.name)"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'size', 'error')} required">
	<label for="size">
		<g:message code="producto.size.label" default="Talle" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="size" maxlength="5" required="" value="${params.talle}" onchange="cargarHidden(this.name)"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'color', 'error')} required">
	<label for="color">
		<g:message code="producto.color.label" default="Color" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="color" required="" value="${params.color}" onchange="cargarHidden(this.name)"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'category', 'error')} required">
	<label for="category">
		<g:message code="producto.category.label" default="Categoría" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="category" name="category.id" from="${com.stock.Categoria.list()}" optionValue="${{it.detail}}"  optionKey="id" required="" value="${productoInstance?.category?.id}" class="many-to-one"/>
	<g:field type="button" id="btnCat" name="newCategory" value="Nuevo" onclick="crearNuevaCategoria()"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'quantity', 'error')} required">
	<label for="quantity">
		<g:message code="producto.quantity.label" default="Cantidad" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="quantity" type="number" min="0" value="${params.cantidad}" required="" onchange="cargarHiddenMarca(this.name)"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'trade', 'error')} required">
	<label for="trade">
		<g:message code="producto.trade.label" default="Marca" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="trade" name="trade.id" from="${com.stock.Marca.list()}" optionValue="${{it.detail}}" optionKey="id" required="" value="${productoInstance?.trade?.id}" class="one-to-one"/>
	<g:field type="button" id="btnMarca" name="newTrade" value="Nuevo" onclick="crearNuevaMarca()"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'status', 'error')} ">
	<label for="status">
		<g:message code="producto.status.label" default="Estado" />
		
	</label>
	<g:checkBox name="status" value="${productoInstance?.status}" />

</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'costPrice', 'error')} required">
	<label for="costPrice">
		<g:message code="producto.costPrice.label" default="Precio Costo" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="costPrice" value="${fieldValue(bean: productoInstance, field: 'costPrice')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'soldPrice', 'error')} required">
	<label for="soldPrice">
		<g:message code="producto.soldPrice.label" default="Precio Venta" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="soldPrice" value="${fieldValue(bean: productoInstance, field: 'soldPrice')}" required=""/>

</div>

