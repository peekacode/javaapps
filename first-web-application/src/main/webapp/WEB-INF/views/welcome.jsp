<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>
<div class="container">

	<spring:message code="welcome.message" />
	${name}.
	<h6>
		Today's date:
		<%=(new java.util.Date()).toLocaleString()%></h6>
	<div class="menu">
	</div>
	<div class="japps">
		<table class="table table-striped">
			<thead>
				<tr>
					<th>Application</th>
					<th>Date</th>
					<th>User</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><p><a href= "/list-todo">To do list</a></p></td>
					<td><%= (new java.util.Date()).toLocaleString()%></td>
					<td>${name}</td>
				</tr>
				<tr>
					<td><p><a href= "/contact-manager">Contact Manager</a></p></td>
					<td><%= (new java.util.Date()).toLocaleString()%></td>
					<td>${name}</td>
				</tr>
			</tbody>
		</table>
	</div>
</div>
<%@ include file="common/footer.jspf"%>