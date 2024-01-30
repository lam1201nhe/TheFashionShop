<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">

    <title>Hexashop Ecommerce HTML CSS Template</title>


    <!-- Additional CSS Files -->
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">

    <link rel="stylesheet" type="text/css" href="../css/font-awesome.css">

    <link rel="stylesheet" href="../css/templatemo-hexashop.css">

    <link rel="stylesheet" href="../css/owl-carousel.css">

    <link rel="stylesheet" href="../css/lightbox.css">
<!--

TemplateMo 571 Hexashop

https://templatemo.com/tm-571-hexashop

-->
    </head>
    
    <body>
    
    <!-- ***** Preloader Start ***** -->
    <div id="preloader">
        <div class="jumper">
            <div></div>
            <div></div>
            <div></div>
        </div>
    </div>  
    <!-- ***** Preloader End ***** -->
    
    
    <%@include file="./layout/navbar.jsp" %>

    <div class="main-banner" id="top">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-6">
                    <div>
                        <img src="../images/left-banner-image.jpg"/>
                    </div>
                </div>
                <div class="col-lg-6"> 
                    <div class="row bg-light rounded align-items-center justify-content-between mx-0 ">
                        <div class="text-center">
                            <form method="post" action="userprofile">

                                <div class="left-content d-flex flex-column">
                                    <div style="display: none">
                                        <input type="text" name="user_id" value="${sessionScope.user_id}"/>
                                    </div>
                                    <div class="mb-3 mt-5">
                                        FullName:
                                        <input type="text" name="username" class="border-input" id="usernameInput" value="${requestScope.user.username}"/>
                                    </div>

                                    <div class="mb-3">
                                        Email:
                                        <input type="email" name="email" class="border-input" id="emailInput" value="${requestScope.user.email}"/>
                                    </div>

                                    <div class="mb-3">
                                        Phone:
                                        <input name="phone" type="text" id="phoneInput" class="border-input" value="${requestScope.user.phone_number}"/>
                                    </div>  
                                    <div class="mb-1s">
                                        <h3 style="color: red">${requestScope.message}</h3>
                                    </div>
                                    <div class="mb-4 mt-4">
                                        <div class="btn btn-danger"><a style="color: white" href="index.html">Cancel</a></div>
                                        <button class="btn btn-primary" type="submit">Save Changes</button>
                                        <div class="btn btn-dark"><a style="color: white !important" href="./changepassword">Change Password</a></div>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="col-md-5">
                            <form method="post" action="UploadImage" id="frmUploadImage"
                                  enctype="multipart/form-data">
                                <input type="file" name="avatar_img" id="avatarImage" onchange="handleFileChange()"/>
                            </form>

                        </div>
                    </div>
                </div>
                
            </div>
        </div>
    </div>

    <%@include file="./layout/footer.jsp" %>
    

    <!-- jQuery -->
    <script src="../js/jquery-2.1.0.min.js"></script>

    <!-- Bootstrap -->
    <script src="../js/popper.js"></script>
    <script src="../js/bootstrap.min.js"></script>

    <!-- Plugins -->
    <script src="../js/owl-carousel.js"></script>
    <script src="../js/accordions.js"></script>
    <script src="../js/datepicker.js"></script>
    <script src="../js/scrollreveal.min.js"></script>
    <script src="../js/waypoints.min.js"></script>
    <script src="../js/jquery.counterup.min.js"></script>
    <script src="../js/imgfix.min.js"></script> 
    <script src="../js/slick.js"></script> 
    <script src="../js/lightbox.js"></script> 
    <script src="../js/isotope.js"></script> 
    
    <!-- Global Init -->
    <script src="../js/custom.js"></script>

    <script>

        $(function() {
            var selectedClass = "";
            $("p").click(function(){
            selectedClass = $(this).attr("data-rel");
            $("#portfolio").fadeTo(50, 0.1);
                $("#portfolio div").not("."+selectedClass).fadeOut();
            setTimeout(function() {
              $("."+selectedClass).fadeIn();
              $("#portfolio").fadeTo(50, 1);
            }, 500);
                
            });
        });

    </script>

  </body>
</html>
