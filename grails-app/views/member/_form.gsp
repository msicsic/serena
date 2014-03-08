<%@ page import="serena.Member" %>



<div class="pure-control-group fieldcontain ${hasErrors(bean: memberInstance, field: 'number', 'error')} required">
	<label for="number">
		<g:message code="member.number.label" default="Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="number" maxlength="8" required="" value="${memberInstance?.number}"/>

</div>

<div class="pure-control-group fieldcontain ${hasErrors(bean: memberInstance, field: 'lastname', 'error')} required">
	<label for="lastname">
		<g:message code="member.lastname.label" default="Lastname" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastname" maxlength="30" required="" value="${memberInstance?.lastname}"/>

</div>

<div class="pure-control-group fieldcontain ${hasErrors(bean: memberInstance, field: 'firstname', 'error')} required">
	<label for="firstname">
		<g:message code="member.firstname.label" default="Firstname" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstname" maxlength="30" required="" value="${memberInstance?.firstname}"/>

</div>

<div class="pure-control-group fieldcontain ${hasErrors(bean: memberInstance, field: 'address', 'error')} ">
	<label for="address">
		<g:message code="member.address.label" default="Address" />
		
	</label>
	<g:textField name="address" value="${memberInstance?.address}"/>

</div>

<div class="pure-control-group fieldcontain ${hasErrors(bean: memberInstance, field: 'address2', 'error')} ">
	<label for="address2">
		<g:message code="member.address2.label" default="Address2" />
		
	</label>
	<g:textField name="address2" value="${memberInstance?.address2}"/>

</div>

<div class="pure-control-group fieldcontain ${hasErrors(bean: memberInstance, field: 'postalCode', 'error')} ">
	<label for="postalCode">
		<g:message code="member.postalCode.label" default="Postal Code" />
		
	</label>
	<g:textField name="postalCode" maxlength="5" value="${memberInstance?.postalCode}"/>

</div>

<div class="pure-control-group fieldcontain ${hasErrors(bean: memberInstance, field: 'town', 'error')} required">
	<label for="town">
		<g:message code="member.town.label" default="Town" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="town" required="" value="${memberInstance?.town}"/>

</div>

<div class="pure-control-group fieldcontain ${hasErrors(bean: memberInstance, field: 'dept', 'error')} required">
	<label for="dept">
		<g:message code="member.dept.label" default="Dept" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="dept" required="" value="${memberInstance?.dept}"/>

</div>

<div class="pure-control-group fieldcontain ${hasErrors(bean: memberInstance, field: 'tel', 'error')} ">
	<label for="tel">
		<g:message code="member.tel.label" default="Tel" />
		
	</label>
	<g:textField name="tel" value="${memberInstance?.tel}"/>

</div>

<div class="pure-control-group fieldcontain ${hasErrors(bean: memberInstance, field: 'dateOfBirth', 'error')} required">
	<label for="dateOfBirth">
		<g:message code="member.dateOfBirth.label" default="Date Of Birth" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dateOfBirth" precision="day"  value="${memberInstance?.dateOfBirth}"  />

</div>

<div class="pure-control-group fieldcontain ${hasErrors(bean: memberInstance, field: 'dmPresent', 'error')} ">
	<label for="dmPresent">
		<g:message code="member.dmPresent.label" default="Dm Present" />
		
	</label>
	<g:checkBox name="dmPresent" value="${memberInstance?.dmPresent}" />

</div>

<div class="pure-control-group fieldcontain ${hasErrors(bean: memberInstance, field: 'cancelled', 'error')} ">
	<label for="cancelled">
		<g:message code="member.cancelled.label" default="Cancelled" />
		
	</label>
	<g:checkBox name="cancelled" value="${memberInstance?.cancelled}" />

</div>

<div class="pure-control-group fieldcontain ${hasErrors(bean: memberInstance, field: 'dead', 'error')} ">
	<label for="dead">
		<g:message code="member.dead.label" default="Dead" />
		
	</label>
	<g:checkBox name="dead" value="${memberInstance?.dead}" />

</div>

<div class="pure-control-group fieldcontain ${hasErrors(bean: memberInstance, field: 'vision', 'error')} ">
	<label for="vision">
		<g:message code="member.vision.label" default="Vision" />
		
	</label>
	<g:select name="vision" from="${memberInstance.constraints.vision.inList}" value="${memberInstance?.vision}" valueMessagePrefix="member.vision" noSelection="['': '']"/>

</div>

<div class="pure-control-group fieldcontain ${hasErrors(bean: memberInstance, field: 'hearing', 'error')} ">
	<label for="hearing">
		<g:message code="member.hearing.label" default="Hearing" />
		
	</label>
	<g:select name="hearing" from="${memberInstance.constraints.hearing.inList}" value="${memberInstance?.hearing}" valueMessagePrefix="member.hearing" noSelection="['': '']"/>

</div>

<div class="pure-control-group fieldcontain ${hasErrors(bean: memberInstance, field: 'mobility', 'error')} ">
	<label for="mobility">
		<g:message code="member.mobility.label" default="Mobility" />
		
	</label>
	<g:select name="mobility" from="${memberInstance.constraints.mobility.inList}" value="${memberInstance?.mobility}" valueMessagePrefix="member.mobility" noSelection="['': '']"/>

</div>

<div class="pure-control-group fieldcontain ${hasErrors(bean: memberInstance, field: 'understanding', 'error')} ">
	<label for="understanding">
		<g:message code="member.understanding.label" default="Understanding" />
		
	</label>
	<g:select name="understanding" from="${memberInstance.constraints.understanding.inList}" value="${memberInstance?.understanding}" valueMessagePrefix="member.understanding" noSelection="['': '']"/>

</div>

<div class="pure-control-group fieldcontain ${hasErrors(bean: memberInstance, field: 'pathologies', 'error')} ">
	<label for="pathologies">
		<g:message code="member.pathologies.label" default="Pathologies" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${memberInstance?.pathologies?}" var="p">
    <li><g:link controller="pathology" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="pathology" action="create" params="['member.id': memberInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'pathology.label', default: 'Pathology')])}</g:link>
</li>
</ul>
</div>

<div class="pure-control-group fieldcontain">
    <label for="">
    <g:message code="member.pathologies.label" default="Pathologies" />
    </label>
    <table class="pure-table">
        <thead>
        <tr>
            <td>name</td>
            <td>dosage</td>
            <td>posology</td>
            <td>comment</td>
        </tr>
        </thead>
        <tbody>
        <g:each in="${memberInstance.pathologies}" status="i" var="pathology">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                <td><g:textField name="name" required="true" value="${pathology?.name}"/></td>
                <td><g:textField name="dosage" required="true" value="${pathology?.dosage}"/></td>
                <td><g:textField name="posology" required="true" value="${pathology?.posology}"/></td>
                <td><g:textField name="comment" required="true" value="${pathology?.comment}"/></td>
            </tr>
        </g:each>
        <tr>
            <td><g:textField name="name" required="true" value="${pathology?.name}"/></td>
            <td><g:textField name="dosage" required="true" value="${pathology?.dosage}"/></td>
            <td><g:textField name="posology" required="true" value="${pathology?.posology}"/></td>
            <td><g:textField name="comment" required="true" value="${pathology?.comment}"/></td>
        </tr>
        </tbody>
    </table>
</div>

<div class="pure-control-group fieldcontain ${hasErrors(bean: memberInstance, field: 'treatments', 'error')} ">
	<label for="treatments">
		<g:message code="member.treatments.label" default="Treatments" />
	</label>
	
<ul class="one-to-many">
<g:each in="${memberInstance?.treatments?}" var="t">
    <li><g:link controller="treatment" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="treatment" action="create" params="['member.id': memberInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'treatment.label', default: 'Treatment')])}</g:link>
</li>
</ul>
</div>

<div class="pure-control-group fieldcontain ${hasErrors(bean: memberInstance, field: 'doctorFirstname', 'error')} ">
	<label for="doctorFirstname">
		<g:message code="member.doctorFirstname.label" default="Doctor Firstname" />
	</label>
	<g:textField name="doctorFirstname" value="${memberInstance?.doctorFirstname}"/>
</div>

<div class="pure-control-group fieldcontain ${hasErrors(bean: memberInstance, field: 'doctorLastname', 'error')} ">
	<label for="doctorLastname">
		<g:message code="member.doctorLastname.label" default="Doctor Lastname" />
	</label>
	<g:textField name="doctorLastname" value="${memberInstance?.doctorLastname}"/>
</div>

<div class="pure-control-group fieldcontain ${hasErrors(bean: memberInstance, field: 'doctorPhone', 'error')} ">
	<label for="doctorPhone">
		<g:message code="member.doctorPhone.label" default="Doctor Phone" />
	</label>
	<g:textField name="doctorPhone" value="${memberInstance?.doctorPhone}"/>
</div>

<div class="pure-control-group fieldcontain ${hasErrors(bean: memberInstance, field: 'doctorPhoneNight', 'error')} ">
	<label for="doctorPhoneNight">
		<g:message code="member.doctorPhoneNight.label" default="Doctor Phone Night" />
	</label>
	<g:textField name="doctorPhoneNight" value="${memberInstance?.doctorPhoneNight}"/>
</div>

<div class="pure-control-group fieldcontain ${hasErrors(bean: memberInstance, field: 'doctorPhoneMobile', 'error')} ">
	<label for="doctorPhoneMobile">
		<g:message code="member.doctorPhoneMobile.label" default="Doctor Phone Mobile" />
	</label>
	<g:textField name="doctorPhoneMobile" value="${memberInstance?.doctorPhoneMobile}"/>
</div>

<div class="pure-control-group fieldcontain ${hasErrors(bean: memberInstance, field: 'doctorFax', 'error')} ">
	<label for="doctorFax">
		<g:message code="member.doctorFax.label" default="Doctor Fax" />
	</label>
	<g:textField name="doctorFax" value="${memberInstance?.doctorFax}"/>
</div>

<div class="pure-control-group fieldcontain ${hasErrors(bean: memberInstance, field: 'doctorEmail', 'error')} ">
	<label for="doctorEmail">
		<g:message code="member.doctorEmail.label" default="Doctor Email" />
	</label>
	<g:field type="email" name="doctorEmail" value="${memberInstance?.doctorEmail}"/>
</div>

<div class="pure-control-group fieldcontain ${hasErrors(bean: memberInstance, field: 'doctorInfo', 'error')} ">
	<label for="doctorInfo">
		<g:message code="member.doctorInfo.label" default="Doctor Info" />
	</label>
	<g:textField name="doctorInfo" value="${memberInstance?.doctorInfo}"/>
</div>

