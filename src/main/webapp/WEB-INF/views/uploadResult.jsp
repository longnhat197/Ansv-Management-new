<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<title>Upload Result</title>

<div class="content-wrapper">
    <!-- Main content -->
    <section class="content" style="background-position: center; min-height: 100%;">
        <div class="container-fluid">
            <div class="row">
                <section class="col-lg-12">
                    <jsp:include page="_menu.jsp"/>
    
				    <h3>Uploaded Files:</h3>
				     
				    Description: ${description}<br/>
				     
				    <c:forEach items="${uploadedFiles}" var="file">
				   		- ${file} <br>
				    </c:forEach>
                </section>
            </div>
        </div>
    </section>
</div>