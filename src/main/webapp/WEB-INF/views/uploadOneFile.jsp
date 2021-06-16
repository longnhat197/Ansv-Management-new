<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<title>Upload One File</title>

<div class="content-wrapper">
    <!-- Main content -->
    <section class="content" style="background-position: center; min-height: 100%;">
        <div class="container-fluid">
            <div class="row">
                <section class="col-lg-12">
                    <jsp:include page="_menu.jsp"/>
     
				    <h3>Upload One File:</h3>
				 
				    <!-- MyUploadForm -->
				    <form:form modelAttribute="myUploadForm" method="POST" action="" enctype="multipart/form-data">
				        Description:<br>
				        <form:input path="description" style="width:300px;"/>                
				        <br/><br/>   
				        File to upload: <form:input path="fileDatas" type="file"/><br />
			        	<input type="submit" value="Upload">
				    </form:form>
                </section>
            </div>
        </div>
    </section>
</div>