
<%@ page import="serena.Member" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'member.label', default: 'Member')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-member" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-member" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list member">
			
				<g:if test="${memberInstance?.number}">
				<li class="fieldcontain">
					<span id="number-label" class="property-label"><g:message code="member.number.label" default="Number" /></span>
					
						<span class="property-value" aria-labelledby="number-label"><g:fieldValue bean="${memberInstance}" field="number"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.lastname}">
				<li class="fieldcontain">
					<span id="lastname-label" class="property-label"><g:message code="member.lastname.label" default="Lastname" /></span>
					
						<span class="property-value" aria-labelledby="lastname-label"><g:fieldValue bean="${memberInstance}" field="lastname"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.firstname}">
				<li class="fieldcontain">
					<span id="firstname-label" class="property-label"><g:message code="member.firstname.label" default="Firstname" /></span>
					
						<span class="property-value" aria-labelledby="firstname-label"><g:fieldValue bean="${memberInstance}" field="firstname"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="member.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${memberInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.address2}">
				<li class="fieldcontain">
					<span id="address2-label" class="property-label"><g:message code="member.address2.label" default="Address2" /></span>
					
						<span class="property-value" aria-labelledby="address2-label"><g:fieldValue bean="${memberInstance}" field="address2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.postalCode}">
				<li class="fieldcontain">
					<span id="postalCode-label" class="property-label"><g:message code="member.postalCode.label" default="Postal Code" /></span>
					
						<span class="property-value" aria-labelledby="postalCode-label"><g:fieldValue bean="${memberInstance}" field="postalCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.town}">
				<li class="fieldcontain">
					<span id="town-label" class="property-label"><g:message code="member.town.label" default="Town" /></span>
					
						<span class="property-value" aria-labelledby="town-label"><g:fieldValue bean="${memberInstance}" field="town"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.dept}">
				<li class="fieldcontain">
					<span id="dept-label" class="property-label"><g:message code="member.dept.label" default="Dept" /></span>
					
						<span class="property-value" aria-labelledby="dept-label"><g:fieldValue bean="${memberInstance}" field="dept"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.tel}">
				<li class="fieldcontain">
					<span id="tel-label" class="property-label"><g:message code="member.tel.label" default="Tel" /></span>
					
						<span class="property-value" aria-labelledby="tel-label"><g:fieldValue bean="${memberInstance}" field="tel"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.dateOfBirth}">
				<li class="fieldcontain">
					<span id="dateOfBirth-label" class="property-label"><g:message code="member.dateOfBirth.label" default="Date Of Birth" /></span>
					
						<span class="property-value" aria-labelledby="dateOfBirth-label"><g:formatDate date="${memberInstance?.dateOfBirth}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.dmPresent}">
				<li class="fieldcontain">
					<span id="dmPresent-label" class="property-label"><g:message code="member.dmPresent.label" default="Dm Present" /></span>
					
						<span class="property-value" aria-labelledby="dmPresent-label"><g:formatBoolean boolean="${memberInstance?.dmPresent}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.cancelled}">
				<li class="fieldcontain">
					<span id="cancelled-label" class="property-label"><g:message code="member.cancelled.label" default="Cancelled" /></span>
					
						<span class="property-value" aria-labelledby="cancelled-label"><g:formatBoolean boolean="${memberInstance?.cancelled}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.dead}">
				<li class="fieldcontain">
					<span id="dead-label" class="property-label"><g:message code="member.dead.label" default="Dead" /></span>
					
						<span class="property-value" aria-labelledby="dead-label"><g:formatBoolean boolean="${memberInstance?.dead}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.vision}">
				<li class="fieldcontain">
					<span id="vision-label" class="property-label"><g:message code="member.vision.label" default="Vision" /></span>
					
						<span class="property-value" aria-labelledby="vision-label"><g:fieldValue bean="${memberInstance}" field="vision"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.hearing}">
				<li class="fieldcontain">
					<span id="hearing-label" class="property-label"><g:message code="member.hearing.label" default="Hearing" /></span>
					
						<span class="property-value" aria-labelledby="hearing-label"><g:fieldValue bean="${memberInstance}" field="hearing"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.mobility}">
				<li class="fieldcontain">
					<span id="mobility-label" class="property-label"><g:message code="member.mobility.label" default="Mobility" /></span>
					
						<span class="property-value" aria-labelledby="mobility-label"><g:fieldValue bean="${memberInstance}" field="mobility"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.understanding}">
				<li class="fieldcontain">
					<span id="understanding-label" class="property-label"><g:message code="member.understanding.label" default="Understanding" /></span>
					
						<span class="property-value" aria-labelledby="understanding-label"><g:fieldValue bean="${memberInstance}" field="understanding"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.pathologies}">
				<li class="fieldcontain">
					<span id="pathologies-label" class="property-label"><g:message code="member.pathologies.label" default="Pathologies" /></span>
					
						<g:each in="${memberInstance.pathologies}" var="p">
						<span class="property-value" aria-labelledby="pathologies-label"><g:link controller="pathology" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.treatments}">
				<li class="fieldcontain">
					<span id="treatments-label" class="property-label"><g:message code="member.treatments.label" default="Treatments" /></span>
					
						<g:each in="${memberInstance.treatments}" var="t">
						<span class="property-value" aria-labelledby="treatments-label"><g:link controller="treatment" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.doctorFirstname}">
				<li class="fieldcontain">
					<span id="doctorFirstname-label" class="property-label"><g:message code="member.doctorFirstname.label" default="Doctor Firstname" /></span>
					
						<span class="property-value" aria-labelledby="doctorFirstname-label"><g:fieldValue bean="${memberInstance}" field="doctorFirstname"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.doctorLastname}">
				<li class="fieldcontain">
					<span id="doctorLastname-label" class="property-label"><g:message code="member.doctorLastname.label" default="Doctor Lastname" /></span>
					
						<span class="property-value" aria-labelledby="doctorLastname-label"><g:fieldValue bean="${memberInstance}" field="doctorLastname"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.doctorPhone}">
				<li class="fieldcontain">
					<span id="doctorPhone-label" class="property-label"><g:message code="member.doctorPhone.label" default="Doctor Phone" /></span>
					
						<span class="property-value" aria-labelledby="doctorPhone-label"><g:fieldValue bean="${memberInstance}" field="doctorPhone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.doctorPhoneNight}">
				<li class="fieldcontain">
					<span id="doctorPhoneNight-label" class="property-label"><g:message code="member.doctorPhoneNight.label" default="Doctor Phone Night" /></span>
					
						<span class="property-value" aria-labelledby="doctorPhoneNight-label"><g:fieldValue bean="${memberInstance}" field="doctorPhoneNight"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.doctorPhoneMobile}">
				<li class="fieldcontain">
					<span id="doctorPhoneMobile-label" class="property-label"><g:message code="member.doctorPhoneMobile.label" default="Doctor Phone Mobile" /></span>
					
						<span class="property-value" aria-labelledby="doctorPhoneMobile-label"><g:fieldValue bean="${memberInstance}" field="doctorPhoneMobile"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.doctorFax}">
				<li class="fieldcontain">
					<span id="doctorFax-label" class="property-label"><g:message code="member.doctorFax.label" default="Doctor Fax" /></span>
					
						<span class="property-value" aria-labelledby="doctorFax-label"><g:fieldValue bean="${memberInstance}" field="doctorFax"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.doctorEmail}">
				<li class="fieldcontain">
					<span id="doctorEmail-label" class="property-label"><g:message code="member.doctorEmail.label" default="Doctor Email" /></span>
					
						<span class="property-value" aria-labelledby="doctorEmail-label"><g:fieldValue bean="${memberInstance}" field="doctorEmail"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.doctorInfo}">
				<li class="fieldcontain">
					<span id="doctorInfo-label" class="property-label"><g:message code="member.doctorInfo.label" default="Doctor Info" /></span>
					
						<span class="property-value" aria-labelledby="doctorInfo-label"><g:fieldValue bean="${memberInstance}" field="doctorInfo"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:memberInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${memberInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
