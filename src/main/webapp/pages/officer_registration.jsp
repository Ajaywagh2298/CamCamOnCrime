<jsp:include page="header.jsp"/>

<div class="content">
    <div class="col-md-8">
        <div class="card card-user">
            <div class="card-header">
                <h5 class="card-title"><i class="fas fa-user-tie"></i>&nbsp; Officer Registration</h5>
            </div>
            <div class="card-body" >
                <form style="padding-right:10px;" action="${pageContext.request.contextPath}/RegisterServlet" method="post">
                    <div class="row">
                        <div class="col-md-5 pr-1">
                            <div class="form-group">
                                <label>Officer Permanent Number</label>
                                <input type="text" class="form-control"  placeholder="" value="" name="officer_id">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 pr-1">
                            <div class="form-group">
                                <label>Full Name</label>
                                <input type="text" class="form-control" placeholder="" value="" name="name">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 pr-1">
                            <div class="form-group">
                                <label>Email Address</label>
                                <input type="email" class="form-control" placeholder="" value="" name="email">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4 pr-1">
                            <div class="form-group">
                                <label>User Name</label>
                                <input type="text" class="form-control" name="username">
                            </div>
                        </div>
                        <div class="col-md-4 px-1">
                            <div class="form-group">
                                <label>Password</label>
                                <input type="text" class="form-control" name="password" >
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4 pr-1">
                            <div class="form-group">
                                <label>City</label>
                                <input type="text" class="form-control" placeholder="City" name="city" >
                            </div>
                        </div>
                        <div class="col-md-4 px-1">
                            <div class="form-group">
                                <label>District</label>
                                <input type="text" class="form-control" placeholder="District" name="district">
                            </div>
                        </div>
                        <div class="col-md-4 pl-1">
                            <div class="form-group">
                                <label>Postal Code</label>
                                <input type="tel" class="form-control" placeholder="ZIP Code" maxlength="6" name="post_code">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="update ml-auto mr-auto">
                            <button type="submit" class="btn btn-primary btn-round">Register</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

<jsp:include page="footer.jsp"/>