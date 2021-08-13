<jsp:include page="header.jsp"/>
<style>
  canvas {
    position: absolute;
  }
  .container {
    display: flex;
    width: 100%;
    justify-content: center;
    align-items: center;
  }
  .result-container {
    display: flex;
    width: 100%;
    justify-content: center;
    align-items: center;
    flex-direction: column;
  }
  .result-container > div {
    font-size: 1.3rem;
    padding: 0.5rem;
    margin: 5px 0;
    color: white;
    text-transform: capitalize;
  }
  #age {
    background: #1e94be;
  }
  #emotion {
    background: #8a1025;
  }
  #gender {
    background: #62d8a5;
  }
  video {
    width: 100%;
  }
  header {
    background: #42a5f5;
    color: white;
    width: 100%;
    font-size: 2rem;
    padding: 1rem;
    font-size: 2rem;
  }
</style>
<div class="content">

  <div class="row" style="height: 100px;">
    <div class="col-md-8">
      <div class="card ">
        <div class="card-header ">
          <h5 class="card-title"><i class="fas fa-webcam"></i>&nbsp; Face Recognition</h5>
        </div>
        <div class="card-body ">
          <div class="container">
            <video id="video" height="500" width="500" autoplay muted></video>
          </div>
          <div class="result-container">
         <!--   <div id="gender">Gender</div>
            <div id="age">Age</div>
            <div id="emotion">Emotion</div> -->
          </div>
        </div>
      </div>
    </div>
  </div>
</div>



<jsp:include page="footer.jsp"/>