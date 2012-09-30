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

<%
/**
 * This is NOT how you would set a backURL. But we have nothing to
 * get a back URL from. This is for illustration purposes only.
 **/
String backURL = "";

//Categories are section headers - does not tie to a JSP page
String[] categoryNames = {"category1", "category2", "category3"};

/**
 * Sections are within categories - do tie directly to JSP pages
 * Section name must match the JSP file name
 */
String[] category1 = {"section1", "section2"};
String[] category2 = {"section3", "section4"};
String[] category3 = {"section5"};

// Number of categorySections should equal number of categories
String[][] categorySections = {category1, category2, category3};
%>

<portlet:actionURL var="myActionURL" name="myAction"/>

<aui:layout>
	<aui:form action="<%=myActionURL.toString() %>" name="form">
	
		<!-- 
		Optional htmlTop section
		Allows you to display some content at the top of the form
		navigator before the categories and sections.
		 -->
		 <liferay-util:buffer var="htmlTop">
		 	<h2>My awesome form!</h2>
		 </liferay-util:buffer>
		 
		 <!-- 
		 Optional htmlBottom section
		 Allows you to display some content at the bottom of the form
		 navigator after the "Save" and "Cancel" buttons.
		  -->
		  <liferay-util:buffer var="htmlBottom">
		  	Click "Save" to submit the form.
		  </liferay-util:buffer>
	
		<!-- 
		"categoryNames" and "categorySections" are required attributes
		- BackURL can be set to provide a specify URL for the Cancel button
		- Category names and sections are fed the above variables
		- Form name is "fm" by default.  Change if aui:form name is
		different.
		- Html top is some content you want at the top of the form 
		navigator. (If none, remove attribute altogether)
		- Html bottom is some content you want at the bottom of the form 
		navigator. (If none, remove attribute altogether)
		- JSP path is the directory that contains the JSP files 
		corresponding to the sections. If none specified, looks for files
		at the docroot.
		- Show buttons specifies whether or not to show "Save" and
		"Cancel" buttons. True by default.
		 -->
		<liferay-ui:form-navigator
			backURL="<%=backURL %>"
			categoryNames="<%= categoryNames %>"
			categorySections="<%= categorySections %>"
			formName="form"
			htmlTop="<%=htmlTop %>"
			htmlBottom="<%=htmlBottom %>"
			jspPath="/sections/" 
			showButtons="<%=true %>"
		/>
	</aui:form>
</aui:layout>