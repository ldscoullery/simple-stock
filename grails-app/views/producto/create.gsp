<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'producto.label', default: 'Producto')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#create-producto" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="create-producto" class="content scaffold-create" role="main">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${productoInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${productoInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:productoInstance, action:'save']" >
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
			</g:form>
		</div>


<!-- The Modal -->
<div id="myModal2" class="modal">
  <!-- Modal content -->
  <div class="modal-content">
    <span class="close">x</span>
    <g:form controller="marca" action="savePersonalized" >
    	<g:hiddenField name="codeHiddenMarca"/>
		<g:hiddenField name="detailHiddenMarca"/>
		<g:hiddenField name="sizeHiddenMarca"/>
		<g:hiddenField name="colorHiddenMarca"/>
		<g:hiddenField name="quantityHiddenMarca"/>
		<label>Ingresá la marca:</label>
		<g:field type="text" name="detail" value="${marcaInstance?.detail}"/>
		<g:submitButton name="create" class="save" value="Crear" />
	</g:form>
  </div>
</div>

<!-- The Modal -->
<div id="myModal" class="modal">
  <!-- Modal content -->
  <div class="modal-content">
    <span class="close">x</span>
    <g:form controller="categoria" action="savePersonalized">
		<g:hiddenField name="codeHidden"/>
		<g:hiddenField name="detailHidden"/>
		<g:hiddenField name="sizeHidden"/>
		<g:hiddenField name="colorHidden"/>
		<label>Ingresá la categoría:</label>
		<g:field type="text" name="detail" value="${categoryInstance?.detail}"/>
		<g:hiddenField type="text" name="inicialQuantity" value="0"/>
		<g:submitButton name="create" class="save" value="Crear" />
	</g:form>
  </div>
</div>

<script>
	//Get the modal
	var modal = document.getElementById('myModal');

	// Get the button that opens the modal
	var btn = document.getElementById("btnCat");

	// Get the <span> element that closes the modal
	var span = document.getElementsByClassName("close")[0];

	// When the user clicks on the button, open the modal 
	//btn.onclick = function() {
	function crearNuevaCategoria() {
    	modal.style.display = "block";
	}

	// When the user clicks on <span> (x), close the modal
	span.onclick = function() {
    	modal.style.display = "none";
	}

	// When the user clicks anywhere outside of the modal, close it
	window.onclick = function(event) {
    	if (event.target == modal) {
        	modal.style.display = "none";
    	}
	}
</script>
<script>
	//Get the modal
	var modal2 = document.getElementById('myModal2');

	// Get the button that opens the modal
	var btn2 = document.getElementById("btnMarca");

	// Get the <span> element that closes the modal
	var span2 = document.getElementsByClassName("close")[0];

	// When the user clicks on the button, open the modal 
	//btn.onclick = function() {
	function crearNuevaMarca() {
    	modal2.style.display = "block";
	}

	// When the user clicks on <span> (x), close the modal
	span2.onclick = function() {
    	modal2.style.display = "none";
	}

	// When the user clicks anywhere outside of the modal, close it
	window.onclick = function(event) {
    	if (event.target == modal2) {
        	modal2.style.display = "none";
    	}
	}
</script>
<script>
function cargarHidden(campo) {

	//console.log(campo)
	var valor = document.getElementsByName(campo)[0].value; // obtengo el valor del elemento
	//console.log(valor)
	var tag = campo+"Hidden"
	//console.log(tag)
	document.getElementById(tag).value = valor;
	//console.log(document.getElementsByName(tag)[0].value)
}

function cargarHiddenMarca(campo) {
	var lista = ["code", "detail", "size", "color"]
	for (var key in lista)
	{
	    var nombre = lista[key];
	    console.log(nombre)
	    var valor = document.getElementsByName(nombre)[0].value
	    document.getElementById(nombre+"HiddenMarca").value = valor;
	}
	document.getElementById(campo+"HiddenMarca").value = document.getElementsByName(campo)[0].value;
}
</script>
	</body>
</html>
