<jsp:include page="header.jsp"/>

 <div class="content">
     <div class="row">
         <div class="col-lg-3 col-md-6 col-sm-6">
             <div class="card card-stats">
                 <div class="card-body ">
                     <div class="row">
                         <div class="col-5 col-md-4">
                             <div class="icon-big text-center icon-warning">
                                 <i class="nc-icon nc-calendar-60 text-warning"></i>
                             </div>
                         </div>
                         <div class="col-7 col-md-8">
                             <div class="numbers">
                                 <p class="card-category">Date</p>
                                 <p class="card-title" id="p2" >
                                 </p>
                                 <script>

                                     var today = new Date();

                                     var date = today.getFullYear()+'-'+(today.getMonth()+1)+'-'+today.getDate();
                                     document.getElementById("p2").innerHTML = date;
                                 </script>
                             </div>
                         </div>
                     </div>
                 </div>
                 <div class="card-footer ">
                     <hr>

                     <div class="stats">

                     </div>
                 </div>
             </div>
         </div>
         <div class="col-lg-3 col-md-6 col-sm-6">
             <div class="card card-stats">
                 <div class="card-body ">
                     <div class="row">
                         <div class="col-5 col-md-4">
                             <div class="icon-big text-center icon-warning">
                                 <i class="nc-icon nc-watch-time text-success"></i>
                             </div>
                         </div>
                         <div class="col-7 col-md-8">
                             <div class="numbers">
                                 <p class="card-category">Time</p>
                                 <p class="card-title" id="p1"><p>
                                 <script>
                                     var today = new Date();
                                     var time = today.getHours() + "  :  " + today.getMinutes() + "   :   " + today.getSeconds();
                                     document.getElementById("p1").innerHTML = time;
                                 </script>
                             </div>
                         </div>
                     </div>
                 </div>
                 <div class="card-footer ">
                     <hr>
                     <div class="stats">

                     </div>
                 </div>
             </div>
         </div>
         <div class="col-lg-3 col-md-6 col-sm-6">
             <div class="card card-stats">
                 <div class="card-body ">
                     <div class="row">
                         <div class="col-5 col-md-4">
                             <div class="icon-big text-center icon-warning">
                                 <i class="nc-icon nc-vector text-danger"></i>
                             </div>
                         </div>
                         <div class="col-7 col-md-8">
                             <div class="numbers">
                                 <p class="card-category">Errors</p>
                                 <p class="card-title">23<p>
                             </div>
                         </div>
                     </div>
                 </div>
                 <div class="card-footer ">
                     <hr>
                     <div class="stats">

                     </div>
                 </div>
             </div>
         </div>
     </div>
   <!-- <div class="row" style="height: 100px;">
        <div class="col-md-12">
            <div class="card ">
                <div class="card-header ">
                    <h5 class="card-title"><i class="fas fa-home-lg-alt"></i>&nbsp; Dashboard</h5>
                </div>
                <div class="card-body ">

                </div>

            </div>
        </div>
    </div>
</div> -->
<!--<div class="row">
    <div class="col-md-12">
        <div class="card ">
            <div class="card-header ">
                <h5 class="card-title">Users Behavior</h5>
                <p class="card-category">24 Hours performance</p>
            </div>
            <div class="card-body ">
                <canvas id=chartHours width="400" height="100"></canvas>
            </div>
            <div class="card-footer ">
                <hr>
                <div class="stats">
                    <i class="fa fa-history"></i> Updated 3 minutes ago
                </div>
            </div>
        </div>
    </div>
</div> -->
<div class="row">
    <div class="col-md-8">
        <div class="card card-chart">
            <div class="card-header">
                <h5 class="card-title"><i class="fas fa-analytics text-info"></i>&nbsp;&nbsp; Analysis</h5>
            </div>
            <div class="card-body">
                <canvas class="chart-area" id="speedChart" width="100%" height="200"></canvas>
            </div>
            <div class="card-footer">
                <div class="chart-legend">
                    <i class="fa fa-circle text-info"></i> Criminal
                    <i class="fa fa-circle text-warning"></i> Crime
                </div>
                <hr />
                <div class="card-stats">
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="card ">
            <div class="card-header ">
                <h5 class="card-title"><i class="fas fa-exclamation-circle text-danger"></i>&nbsp;&nbsp;Warning</h5>
            </div>
            <div class="card-body ">
                <div class="alert alert-info alert-with-icon alert-dismissible fade show" data-notify="container">
                    <button type="button" aria-hidden="true" class="close" data-dismiss="alert" aria-label="Close">
                        <i class="nc-icon nc-simple-remove"></i>
                    </button>
                    <span data-notify="icon" class="nc-icon nc-bell-55"></span>
                        <span data-notify="message">One Suspective person detect at 100m area.</span>
                    </div>
                <div class="alert alert-danger alert-with-icon alert-dismissible fade show" data-notify="container">
                    <button type="button" aria-hidden="true" class="close" data-dismiss="alert" aria-label="Close">
                        <i class="nc-icon nc-simple-remove"></i>
                    </button>
                    <span data-notify="icon" class="fas fa-exclamation-circle"></span>
                    <span data-notify="message">2 Criminal are enter the city its found in shivaji nagar area.</span>
                </div>
                <div class="alert alert-danger alert-with-icon alert-dismissible fade show" data-notify="container">
                    <button type="button" aria-hidden="true" class="close" data-dismiss="alert" aria-label="Close">
                        <i class="nc-icon nc-simple-remove"></i>
                    </button>
                    <span data-notify="icon" class="fas fa-exclamation-circle"></span>
                    <span data-notify="message">some supective activity found in vit college area.</span>
                </div>
                <div class="alert alert-danger alert-with-icon alert-dismissible fade show" data-notify="container">
                    <button type="button" aria-hidden="true" class="close" data-dismiss="alert" aria-label="Close">
                        <i class="nc-icon nc-simple-remove"></i>
                    </button>
                    <span data-notify="icon" class="fas fa-exclamation-circle"></span>
                    <span data-notify="message">Warning - </span>
                </div>
                <div class="alert alert-danger alert-with-icon alert-dismissible fade show" data-notify="container">
                    <button type="button" aria-hidden="true" class="close" data-dismiss="alert" aria-label="Close">
                        <i class="nc-icon nc-simple-remove"></i>
                    </button>
                    <span data-notify="icon" class="fas fa-exclamation-circle"></span>
                    <span data-notify="message">arning - </span>
                </div>
            </div>
            <div class="card-footer ">
                <div class="legend">

                </div>
                <hr>
                <div class="stats">

                </div>
            </div>
        </div>
    </div>
</div>
     <script>
         $(document).ready(function() {
             // Javascript method's body can be found in assets/assets-for-demo/js/demo.js
             demo.initChartsPages();
         });
     </script>

<jsp:include page="footer.jsp"/>