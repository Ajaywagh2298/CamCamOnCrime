<jsp:include page="header.jsp"/>

<style>

</style>
<div class="content">

  <div class="row" style="height: 100px;width: 800px;">
    <div class="col-md-12">
      <div class="card ">
        <div class="card-header ">
          <h5 class="card-title"><i class="fas fa-user-plus"></i>&nbsp; Add New Criminal Data </h5>
        </div>
        <div class="card-body">
                <form name="" action="${pageContext.request.contextPath}/AddCriminalServlet" method="POST" enctype="multipart/form-data" >
                        <div class="card-body card-block">
                          <div class="form-group"><label class=" form-control-label">First Name:</label>
                            <input type="text"  class="form-control" name="name" required="">
                          </div>
                          <div class="form-group"><label class=" form-control-label">Address:</label><input type="text"  class="form-control" name="address" required="">
                          </div>
                          <div class="form-group"><label class=" form-control-label">contact:</label><input type="text" class="form-control" name="contact" required="">
                          </div>
                          <div class="form-group"><label class=" form-control-label">Criminal Photo: &nbsp;&nbsp;</label><button class="btn btn-info btn-block"><i class="fas fa-plus"></i><input type="file" accept=".png, .jpg, .jpeg" name="photo"></button>
                          </div>
                          <div class="form-group"><label class=" form-control-label">Birth Date:</label><input type="date" class="form-control" name="birthDate" required="">
                          </div>
                          <div class="form-group"><label class=" form-control-label">Gender:</label><select name="gender" class="form-control">
                            <option>Select</option>
                            <option>Male</option>
                            <option>Female</option>
                          </select>
                          </div>
                          <div class="form-group"><label class="form-control-label">Aadhar Number:</label><br>
                            <input type="text" name="adharId" class="form-control">
                          </div>
                          <div class="form-group"><label class="form-control-label">Identity Marks:</label><br>
                            <input type="text" name="identityMark" class="form-control">
                          </div>
                          <div class="form-group"><label class="form-control-label">Crime Detials:</label><br>
                            <textarea class="form-control" name="crime" ></textarea>
                          </div>
                          <div class="form-group"><input type="submit"  value="Upload" class="btn btn-success">
                          </div>
                        </div>
                </form>
      </div>

        </div>

      </div>
    </div>
  </div>
</div>
<jsp:include page="footer.jsp"/>