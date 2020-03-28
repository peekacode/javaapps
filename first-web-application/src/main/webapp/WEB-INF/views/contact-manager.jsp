<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>

<div class="container">
	<p>Welcome ${name}</p>
	<h6>
		Today's date:
		<%=(new java.util.Date()).toLocaleString()%></h6>
	<table class="table table-striped">
		<caption>
			<spring:message code="todo.caption" />
		</caption>
		<thead>
			<tr>
				<th>No.</th>
				<th>Name</th>
				<th>Email</th>
				<th>Address</th>
				<th>Phone</th>
				<th>Action</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${listContact}" var="contact" varStatus="status">
				<tr>
					<td>${status.index + 1}</td>
					<td>${contact.name}</td>
					<td>${contact.email}</td>
					<td>${contact.address}</td>
					<td>${contact.phone}</td>
					<td><a type="button" class="btn btn-primary"
						href="/update-contact?id=${contact.id}">Edit</a> <a type="button"
						class="btn btn-warning" href="/delete-contact?id=${contact.id}">Delete</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<div>
		<a type="button" class="btn btn-success" href="/new-contact">New Contact</a>
	</div>
</div>
<%@ include file="common/footer.jspf"%>