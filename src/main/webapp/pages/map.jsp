<jsp:include page="header.jsp"/>


<div class="content">
  <div class="row">
    <div class="col-md-12">
      <div class="card ">
        <div class="card-header ">
          <h5 class="card-title">
            <i class="fas fa-map-marked-alt"></i>&nbsp; Google Maps
          </h5>
        </div>
        <div class="card-body ">
          <div id="map" class="map" >
           <iframe allowfullscreen="" class="maps" width="100%" height="100%" frameborder="1"
                    id="map-layer" name="map-layer"
                    src="https://www.google.com/maps/embed/v1/search?q=GPS+current+location&key=AIzaSyC-5CY9mOCeg5Y3IhPqi_Yd0-DZtWrJl-E&zoom=15">
            </iframe>

          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<jsp:include page="footer.jsp"/>