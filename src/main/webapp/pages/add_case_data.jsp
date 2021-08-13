<jsp:include page="header.jsp"/>

<div class="content">

  <div class="row" style="height: 100px;">
    <div class="col-md-12">
      <div class="card ">
        <div class="card-header ">
          <h5 class="card-title"><i class="fas fa-file-plus"></i>&nbsp; Add Case Data</h5>
        </div>
        <div class="card-body ">
          <form name="" action="${pageContext.request.contextPath}/AddCaseServlet" method="POST" enctype="multipart/form-data" >
            <div class="card-body card-block">
              <div class="form-group"><label class=" form-control-label">Case Registration Number:</label>
                <input type="text"  class="form-control" name="caseNumber" required="">
              </div>
              <div class="form-group"><label class=" form-control-label">Case Name:</label>
                <input type="text"  class="form-control" name="caseName" required="">
              </div>
              <div class="form-group"><label class=" form-control-label">Crime Type:</label><input type="text"  class="form-control" name="crimeType" required="">
              </div>
              <div class="form-group"><label class=" form-control-label">Date:</label><input type="date" class="form-control" name="date" required="">
              </div>
              <div class="form-group"><label class=" form-control-label">Time:</label><input type="time" class="form-control" name="time" required="">
              </div>
              <div class="form-group"><label class="form-control-label">Crime Detials:</label><br>
                <textarea class="form-control" name="crimeDetails" ></textarea>
              </div>
              <div class="form-group"><label class=" form-control-label">Suspective Person Name:</label><input type="text" class="form-control" name="suspectivePersonName" required="">
              </div>

              <div class="form-group"><label class="form-control-label">Crime Place Address:</label><br>
                <input type="text" name="address" class="form-control">
              </div>
              <div class="form-group"><label class="form-control-label">Witness:</label><br>
                <textarea name="witness" class="form-control">Witness Name + Crime Description By Witness
                </textarea>
              </div>

              <div class="form-group"><label class=" form-control-label">Crime spots Photo 1: &nbsp;&nbsp;</label><button class="btn btn-info btn-block"><i class="fas fa-plus"></i><input type="file" accept=".png, .jpg, .jpeg" name="crimePhoto1"></button>
              </div>
              <div class="form-group"><label class=" form-control-label">Crime spots Photo 2: &nbsp;&nbsp;</label><button class="btn btn-info btn-block"><i class="fas fa-plus"></i><input type="file" accept=".png, .jpg, .jpeg" name="crimePhoto2"></button>
              </div>
              <div class="form-group"><label class=" form-control-label">Crime spots Photo 3: &nbsp;&nbsp;</label><button class="btn btn-info btn-block"><i class="fas fa-plus"></i><input type="file" accept=".png, .jpg, .jpeg" name="crimePhoto3"></button>
              </div>
              <div class="form-group"><label class=" form-control-label">Crime spots Photo 4: &nbsp;&nbsp;</label><button class="btn btn-info btn-block"><i class="fas fa-plus"></i><input type="file" accept=".png, .jpg, .jpeg" name="crimePhoto4"></button>
              </div>
              <div class="form-group"><label class=" form-control-label">Crime spots video : &nbsp;&nbsp;</label><button class="btn btn-info btn-block"><i class="fas fa-plus"></i><input type="file" accept=".video/mp4" name="crimeVideo"></button>
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


<jsp:include page="footer.jsp"/>