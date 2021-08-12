<jsp:include page="header.jsp"/>
<%@page import="com.example.camoncrime.Officer"%>
<%
    Officer officer = (Officer)session.getAttribute("logOfficer");
%>
<div class="content">
    <div class="col-md-8">
        <div class="card card-user">
            <div class="card-header">
                <h5 class="card-title">Edit Profile</h5>
            </div>
            <div class="card-body">
                <form style="padding-right:10px; " action="${pageContext.request.contextPath}/EditServlet" method="post">
                    <div hidden class="col-md-4 pl-1">
                        <div class="form-group">
                            <input type="text" class="form-control" name="oid" value="<%=officer.getId()%>">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-5 pr-1">
                            <div class="form-group">
                                <label>Officer Permanent Number</label>
                                <input type="text" class="form-control" name="officer_id" readonly="readonly" value="<%=officer.getOfficerID()%>">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 pr-1">
                            <div class="form-group">
                                <label>Full Name</label>
                                <input type="text" class="form-control" placeholder="" name="name"  readonly="readonly" value="<%=officer.getName()%>">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 pr-1">
                            <div class="form-group">
                                <label>Email Address</label>
                                <input type="email" class="form-control" placeholder="" name="email" readonly="readonly" value="<%=officer.getEmail()%>">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4 pr-1">
                            <div class="form-group">
                                <label>User Name</label>
                                <input type="text" class="form-control"  name="username" value="<%=officer.getUsername()%>" >
                            </div>
                        </div>
                        <div class="col-md-4 px-1">
                            <div class="form-group">
                                <label>Password</label>
                                <input type="text" class="form-control" name="password" value="<%=officer.getPassword()%>" >
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4 pr-1">
                            <div class="form-group">
                                <label>City</label>
                                <input type="text" class="form-control" name="city" placeholder="City" value="<%=officer.getCity()%>">
                            </div>
                        </div>
                        <div class="col-md-4 px-1">
                            <div class="form-group">
                                <label>District</label>
                                <input type="text" class="form-control" placeholder="District" name="district" value="<%=officer.getDistrict()%>">
                            </div>
                        </div>
                        <div class="col-md-4 pl-1">
                            <div class="form-group">
                                <label>Postal Code</label>
                                <input type="tel" class="form-control" placeholder="ZIP Code" name="post_code" value="<%=officer.getPost_code()%>">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="update ml-auto mr-auto">
                            <button type="submit" class="btn btn-primary btn-round">Update Profile</button>
                            <button type="submit" class="btn btn-danger btn-round"><a href="dashboard.jsp" style="color: white;"> Back</a></button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

<jsp:include page="footer.jsp"/>