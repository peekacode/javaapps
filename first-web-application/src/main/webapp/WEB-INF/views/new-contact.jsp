<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>
<div class="container">
    <p> Welcome ${name} </p>
    <h6>Today's date: <%= (new java.util.Date()).toLocaleString()%></h6>
	<form:form method="post" commandName="contact">
		<form:hidden path="id" />
		<fieldset class="form-group">
			<form:label path="name">Name</form:label>
			<form:input path="name" type="text" class="form-control"
				required="required" />
			<form:errors path="name" cssClass="text-warning" />
		</fieldset>
		<fieldset class="form-group">
			<form:label path="email">Email</form:label>
			<form:input path="email" type="email" class="form-control"
				required="required" />
			<form:errors path="email" cssClass="text-warning" />
		</fieldset>
		<fieldset class="form-group">
			<form:label path="address">Address</form:label>
			<form:input path="address" type="text" class="form-control"
				required="required" />
			<form:errors path="address" cssClass="text-warning" />
		</fieldset>		
		<fieldset class="form-group">
			<form:label path="phone">Phone</form:label>
			<form:input path="phone" type="text" class="form-control"
				required="required" />
			<form:errors path="phone" cssClass="text-warning" />
		</fieldset>			
		<button type="submit" class="btn btn-success">Submit</button>
	</form:form>
</div>

<%@ include file="common/footer.jspf"%>