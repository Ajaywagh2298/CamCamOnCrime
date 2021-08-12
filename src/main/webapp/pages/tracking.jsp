<jsp:include page="header.jsp"/>
<style>
  /* CSS comes here */
  #video {
    width: 100%;
    height: 600px;

  }

  #photo {
    border: 1px solid black;
    width: 320px;
    height: 240px;
  }

  #canvas {
    display: none;
  }

  .camera {
    width: 340px;
    display: inline-block;
  }

  .output {
    width: 340px;
    display: inline-block;
  }

  /* #startbutton {
    display: block;
    position: relative;
    margin-left: auto;
    margin-right: auto;
    bottom: 36px;
    padding: 5px;
    background-color: #6a67ce;
    border: 1px solid rgba(255, 255, 255, 0.7);
    font-size: 14px;
    color: rgba(255, 255, 255, 1.0);
    cursor: pointer;
  } */

  .contentarea {
    font-size: 16px;
    font-family: Arial;
    text-align: center;
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
          <div class="card">
            <div class="card-group">
              <video id="video" class="col-md-12">Video stream not available.</video>
            </div>
            <div><button id="startbutton" class="btn btn-info btn-block">Take photo</button></div>
            <canvas id="canvas"></canvas>
            <div style="display: none;" class="output">
              <img id="photo" alt="The screen capture will appear in this box.">
            </div>
          </div>
          <!--  <canvas id="canvas"></canvas>
            <div class="output">
              <img id="photo" alt="The screen capture will appear in this box.">
            </div>
          </div> -->

          <script>
            /* JS comes here */
            (function() {

              var width = 320; // We will scale the photo width to this
              var height = 0; // This will be computed based on the input stream

              var streaming = false;

              var video = null;
              var canvas = null;
              var photo = null;
              var startbutton = null;

              function startup() {
                video = document.getElementById('video');
                canvas = document.getElementById('canvas');
                photo = document.getElementById('photo');
                startbutton = document.getElementById('startbutton');

                navigator.mediaDevices.getUserMedia({
                  video: true,
                  audio: false
                })
                        .then(function(stream) {
                          video.srcObject = stream;
                          video.play();
                        })
                        .catch(function(err) {
                          console.log("An error occurred: " + err);
                        });

                video.addEventListener('canplay', function(ev) {
                  if (!streaming) {
                    height = video.videoHeight / (video.videoWidth / width);

                    if (isNaN(height)) {
                      height = width / (4 / 3);
                    }

                    video.setAttribute('width', width);
                    video.setAttribute('height', height);
                    canvas.setAttribute('width', width);
                    canvas.setAttribute('height', height);
                    streaming = true;
                  }
                }, false);

                startbutton.addEventListener('click', function(ev) {
                  takepicture();
                  ev.preventDefault();
                }, false);

                clearphoto();
              }


              function clearphoto() {
                var context = canvas.getContext('2d');
                context.fillStyle = "#AAA";
                context.fillRect(0, 0, canvas.width, canvas.height);

                var data = canvas.toDataURL('image/png');
                photo.setAttribute('src', data);
              }

              function takepicture() {
                var context = canvas.getContext('2d');
                if (width && height) {
                  canvas.width = width;
                  canvas.height = height;
                  context.drawImage(video, 0, 0, width, height);

                  var data = canvas.toDataURL('image/png');
                  photo.setAttribute('src', data);
                } else {
                  clearphoto();
                }
              }

              window.addEventListener('load', startup, false);
            })()

          </script>
        </div>
      </div>
    </div>
  </div>
</div>


<jsp:include page="footer.jsp"/>