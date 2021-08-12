<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>Cam On Crime</title>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">
    <meta name="viewport" content="width=device-width, user-scalable=no" />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <script src="https://code.jquery.com/jquery-3.3.1.min.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/lightslider/1.1.6/css/lightslider.min.css">
    <style>  body {
        -webkit-user-select: none; /* Chrome all / Safari all */
        -moz-user-select: none; /* Firefox all */
        -ms-user-select: none; /* IE 10+ */
        user-select: none;
        /* Likely future */
    }

    @media (max-width: 767px){
        .logo-msg {
            display: none !important;
            width: 100%;
            margin-top: 10px;
        }
    </style>
    <script type="text/javascript">
        function Captcha(){
            var alpha = new Array('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z');
            var i;
            for (i=0;i<6;i++){
                var a = alpha[Math.floor(Math.random() * alpha.length)];
                var b = alpha[Math.floor(Math.random() * alpha.length)];
                var c = alpha[Math.floor(Math.random() * alpha.length)];
                var d = alpha[Math.floor(Math.random() * alpha.length)];
                var e = alpha[Math.floor(Math.random() * alpha.length)];
                var f = alpha[Math.floor(Math.random() * alpha.length)];
                var g = alpha[Math.floor(Math.random() * alpha.length)];
            }
            var code = a + ' ' + b + ' ' + ' ' + c + ' ' + d + ' ' + e + ' '+ f + ' ' + g;
            document.getElementById("mainCaptcha").value = code
        }

        function ValidCaptcha(){
            var string1 = removeSpaces(document.getElementById('mainCaptcha').value);
            var string2 = document.getElementById('txtInput').value;
            if (string1 == string2){
                var a = "Captcha is  Correct";
                return a;
            }
            else{
                var b = "Captcha is not Correct";
                return b;
            }
        }
        function removeSpaces(string){
            return string.split(' ').join('');
        }
    </script>
</head>
<body onload="Captcha();">
<div class="container-login">
    <div class="" style="padding: 10px; border: none; box-shadow: none;" >
        <ul class="nav nav-tabs" id="custom-tabs-one-tab" role="tablist" style="border: none; box-shadow: none;">
            <li class="nav-item" >
               &nbsp; &nbsp; &nbsp;   <!--  <img id="logo-mcp" width="50px;" height="50px;"  src="img/punelogo11.png">&nbsp;&nbsp;span class="simple-text logo-normal" style="color: white;font-size: 15px; ">Cam On Crime</span> -->
            </li>
            <li class="nav-item" >
                    <img id="logo-mcp" width="100px;" height="120px;"  src="img/punelogo11.png">&nbsp;&nbsp;<!--<span class="simple-text logo-normal" style="color: white;font-size: 15px; ">Cam On Crime</span> -->
          </li>  &nbsp;&nbsp;
            <li class="nav-item">
                <a class="nav-link active" id="custom-tabs-one-home-tab" data-toggle="pill"
                   href="#custom-tabs-one-home" role="tab" aria-controls="custom-tabs-one-home"
                   aria-selected="true">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="custom-tabs-one-profile-tab" data-toggle="pill"
                   href="#custom-tabs-one-profile" role="tab"
                   aria-controls="custom-tabs-one-profile" aria-selected="false">Contect</a>
            </li>
        </ul>
    </div>

    <div class="row justify-content-center">
        <div class="col-xl-6 col-lg-12 col-md-9">
            <div class="my-5">
                <div class="card-body p-0">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="login-form">
                                <div class="text-left">
                                    <div class="panel-heading" style="text-align: center; margin: 0px;padding: 0px;">

                                    </div>
                                </div>
                                <div class="card shadow-lg"><br>
                                    <div class="text-center">
                                        <p style="font-size: 30px;font-family: Times New Roman" class="text-gray-900 mb-4">Login</p>
                                    </div>
                                    <form class="user"  action="${pageContext.request.contextPath}/loginServlet" method="post">
                                        <div class="col-xl-12 col-lg-12 col-md-12 text-center" style="padding-left:200px;padding-right:200px;">
                                            <div class="form-group">
                                                <label >Email<span style="color: red">*</span> </label>
                                                <input type="email" name="email" class="form-control" id="exampleInputtext">
                                            </div>
                                            <div class="form-group">
                                                <label >Password <span style="color: red">*</span> </label>
                                                <input type="password" name="password" class="form-control" id="exampleInputPassword">
                                            </div>
                                            <div class="form-group text-center">
                                                <label>Captcha <spans style="color: red">*</spans></label><br>
                                                <div class="custom-control d-inline-flex">
                                                    <input type="text" class="form-control" style="font-size: 19px;font-weight: bold;font-family: Times New Roman;width: 150px;" id="mainCaptcha" disabled readonly>&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <input type="text" id="txtInput" class="form-control" style="width: 150px;" maxlength="7" >
                                                    <i onclick="Captcha();" class="fas fa-redo" style="padding: 15px;color: #2e6da4;"></i>
                                                </div>
                                            </div><br>
                                            <div class="form-group text-center">
                                                <button style="width: 200px;background: #2e6da4;" name="submit" value="login" onclick="alert(ValidCaptcha());" class="btn btn-primary"> Login</button>
                                            </div>
                                            <div class="text-center">

                                            </div><br>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
<section class="quick-link hidden-sm hidden-xs" id="">

    <div class="container quick-links" style="width:970px;">
        <h3 title="जलद दुवे">जलद दुवे</h3>
        <hr class="head-border">
        <div class="row equal">
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 lniks-card">
                <a href="" class="card-wrapper">
                    <div class="flex-left-middle">
                        <img src="img/press release.svg" alt="pressReleaseImg" class="iconq" >
                        <h4 title="प्रसिद्धी पत्रक" >प्रसिद्धी पत्रक</h4>
                    </div>
                </a>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 lniks-card">
                <a href="" target="_blank" class="card-wrapper">
                    <div class="flex-left-middle">
                        <img src="img/tenant information.svg" alt="stolenAbandonedVehiclesIcon"  class="iconq">
                        <h4 title="भाडेकरुची माहिती" >भाडेकरुची माहिती</h4>
                    </div>
                </a>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 lniks-card">
                <a href="" class="card-wrapper">
                    <div class="flex-left-middle">
                        <img src="img/recruitment.svg" alt="missingPersonsIcon"  class="iconq">
                        <h4 title="भरती प्रक्रिया" >भरती प्रक्रिया</h4>
                    </div>
                </a>
            </div>

            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 lniks-card">
                <a href=""  class="card-wrapper">
                    <div class="flex-left-middle">
                        <img src="img/lost abd found.svg" alt="firstInformationReport" class="iconq">
                        <h4 title="हरवलेले आणि सापडलेले" >हरवलेले आणि सापडलेले</h4>
                    </div>
                </a>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 lniks-card">
                <a href="" target="_blank" class="card-wrapper">
                    <div class="flex-left-middle">
                        <img src="img/missing person.svg" alt="passportIcon" class="iconq">
                        <h4 title="हरवलेल्या व्यक्ती" >हरवलेल्या व्यक्ती</h4>
                    </div>
                </a>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 lniks-card">
                <a href="" target="_blank" class="card-wrapper">
                    <div class="flex-left-middle">
                        <img src="img/accident comp.svg" alt="verficationUnitImg"  class="iconq">
                        <h4 title="अपघात भरपाई" >अपघात भरपाई</h4>
                    </div>
                </a>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 lniks-card">
                <a href="" target="_blank" class="card-wrapper" >
                    <div class="flex-left-middle">
                        <img src="img/STOLEN CAR.svg" alt="accidentCompensationIcon" class="iconq" >
                        <h4 title="चोरीस गेलेली आणि बेवारस वाहने" >चोरीस गेलेली आणि बेवारस वाहने</h4 >
                    </div>
                </a>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 lniks-card">
                <a href="" target="_blank" class="card-wrapper">
                    <div class="flex-left-middle">
                        <img src="img/fir.svg" alt="grasPaymentImg"  class="iconq">
                        <h4 title="प्रथम खबर अहवाल" >प्रथम खबर अहवाल</h4>
                    </div>
                </a>
            </div>

        </div>
    </div>
</section>
<br>
<br>
<section class=" our-mission" id="">
    <div class="container " >
        <div class="row">
            <h3 title="पोलीस आयुक्तांच्या लेखणीतून">पोलीस आयुक्तांच्या लेखणीतून</h3>

            <hr class="head-border"><br><br><br>
<div class="d-inline-flex">
            <div class="col-lg-8 col-md-8 justify-content-center">
                <p title="कोणतेही भय न बाळगता किंवा कोणत्याही पक्षःपाताशिवाय कायदयाचे राज्य चालविण्यासाठी, या देशाच्या कायद्यांची निःपक्षपणे अंमलबजावणी करण्यासाठी पुणे शहर पोलीस सदैव कटिबद्ध राहतील. तसेच समाजाच्या निकोप वाढीसाठी आणि विकासासाठी अनुकूल, भयमुक्त वातावरण निर्माण करण्याकरीता प्रयत्नांची पराकाष्ठा करतील.">कोणतेही भय न बाळगता किंवा कोणत्याही पक्षःपाताशिवाय कायदयाचे राज्य चालविण्यासाठी, या देशाच्या कायद्यांची निःपक्षपणे अंमलबजावणी करण्यासाठी पुणे शहर पोलीस सदैव कटिबद्ध राहतील. तसेच समाजाच्या निकोप वाढीसाठी आणि विकासासाठी अनुकूल, भयमुक्त वातावरण निर्माण करण्याकरीता प्रयत्नांची पराकाष्ठा करतील.</p>

                <p title="कायदा व सुव्यवस्था राखणे, गुन्हयाचा प्रतिबंध व तपास करणे, संघटीत गुन्हे/असामाजिक तत्वे आणि दहशतवादाविरूध्द कडक कारवाई करणे तसेच जातीय सलोखा राखणे ईत्यादी कामासाठी पुणे शहर पोलीस सदैव कटिबध्द राहतील.">कायदा व सुव्यवस्था राखणे, गुन्हयाचा प्रतिबंध व तपास करणे, संघटीत गुन्हे/असामाजिक तत्वे आणि दहशतवादाविरूध्द कडक कारवाई करणे तसेच जातीय सलोखा राखणे ईत्यादी कामासाठी पुणे शहर पोलीस सदैव कटिबध्द राहतील.</p>

                <span class="ips-name-plate" title="अमिताभ गुप्ता  भापोसे, पोलीस आयुक्त, पुणे शहर">अमिताभ गुप्ता  भापोसे, पोलीस आयुक्त, पुणे शहर</span>
            </div>
            <div class="col-lg-4 col-md-4  text-center">
                <img src="https://punepolice.gov.in/images/Cpdesk/1.png" alt="अमिताभ गुप्ता  भापोसे, पोलीस आयुक्त, पुणे शहर" title="अमिताभ गुप्ता  भापोसे, पोलीस आयुक्त, पुणे शहर" class="sm-mb-20" style="border-radius: 50%; width: 200px;height: 200px; -webkit-box-shadow: 0px 3px 9px 0px rgba(46, 48, 50, 0.32);
-moz-box-shadow:    0px 3px 9px 0px rgba(46, 48, 50, 0.32);
box-shadow:         0px 3px 9px 0px rgba(46, 48, 50, 0.32); ">
            </div>
</div>
        </div>
    </div>
    <br>
</section>
<section class=" our-mission" id="">
    <div class="container " >

    </div>
    <br>
</section>

</body>
</html>