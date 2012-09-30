<%--
/**
 * Copyright (c) 2000-2012 Liferay, Inc. All rights reserved.
 *
 * This library is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free
 * Software Foundation; either version 2.1 of the License, or (at your option)
 * any later version.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
 * details.
 */
--%>

<%@ include file="/init.jsp" %>

<!-- 
Used with form navigator. Each section should have an 
error marker with the value of the marker equal to the 
section name (Section name as provided in the categorySections
array in the form-navigator tag). If there is an error thrown
this will tell the form navigator which section to display
to the user so they can correct the error.
 -->
<liferay-ui:error-marker key="errorSection" value="section1" />

<!-- 
Whatever form field you want on this section page
go below here.
 -->
<h3><liferay-ui:message key="section-1" /></h3>

<aui:input name="example1" type="text">
	<aui:validator name="required" />
</aui:input>