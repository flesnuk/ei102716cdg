<%@page contentType="text/html; charset=utf-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>

<t:paginabasica>
<jsp:body>
	<div class="split-container">
		<div class="split-item-v-foto split-container">
			<img src="${ pageContext.request.contextPath }/resources/img/background.jpg" class="img-circle-thumbnail" alt="" width="120" height="120">
		</div>
		<div class="split-item-v-texto">
			<h3><c:out value="Nombre: ${student.name }"></c:out></h2>
			<div>* * * * *</div>
		</div>
	</div>
	<hr/>
	<div>
		<h4>Oferta de <c:out value="${skill.name } - ${skill.description }"></c:out></h4>
	</div>
	<h4>Descripción:</h4>
	<div>
		<c:out value="${offer.description}"></c:out>
	</div>
    <div>
    	<p class="post-date" style="font-size:15px; font-weight:bold;"><c:out value="${offer.startDate }, ${offer.endDate } "></c:out></p>
    </div>
    
    <a href="${ pageContext.request.contextPath }/my/collaborations/add?offerId=${offer.id }&skillId=${skill.skill_id }">Collab</a>
</jsp:body>
</t:paginabasica>