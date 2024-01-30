<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8" />
        <title>DASHMIN - Bootstrap Admin Template</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport" />
        <meta content="" name="keywords" />
        <meta content="" name="description" />

        <!-- Favicon -->
        <link href="../img/favicon.ico" rel="icon" />

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600;700&display=swap"
              rel="stylesheet" />

        <!-- Icon Font Stylesheet -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet" />

        <!-- Libraries Stylesheet -->
        <link href="../lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet" />
        <link href="../lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

        <!-- Customized Bootstrap Stylesheet -->
        <link href="../css/bootstrap.min.css" rel="stylesheet" />

        <!-- Template Stylesheet -->
        <link href="../css/style.css" rel="stylesheet" />
        <link href="../css/toggleSwitch.css" rel="stylesheet" />
        <style>
            .btn-outline-success:hover {
                color: #fff;
            }
        </style>
    </head>

    <body>
        <div class="container-xxl position-relative bg-white d-flex p-0">
            <%@include file="../layout/spinner.jsp" %>
            <%@include file="../layout/sidebar.jsp" %>
            <!-- Content Start -->
            <div class="content">
                <%@include file="../layout/navbar.jsp" %>
                <!-- Blank Start -->
                <div class="container-fluid pt-4 px-4">
                    <div class="col-sm-12 col-xl-12">
                        <div class="bg-light rounded h-100 p-4">
                            <h3 class="mb-4">LIST OF PRODUCT</h3>
                            <div class="d-flex justify-content-between">
                                <div class="subcategory-form mb-3">
                                    <form method="post">
                                        <!<!-- CHUA SUA -->
                                        <input id="searchEngine" type="text" name="category" id="category"
                                               placeholder="Search Product" />
                                        <button class="btn btn-outline-primary" type="submit">Search</button>
                                    </form>
                                </div>
                                <!-- <h3>${error}</h3> -->
                                <button type="button" class="btn btn-outline-success mb-3">
                                    <a href="../product/create" style="color: inherit">
                                        New Product
                                    </a>
                                </button>
                            </div>
                            <div class="table-responsive">
                                <table class="table table-hover table-bordered">
                                    <thead>
                                        <tr>
                                            <th scope="col">ID</th>
                                            <th scope="col">Name</th>
                                            <th scope="col">Description</th>
                                            <th scope="col">Category</th>
                                            <th scope="col">Price</th>
                                            <th scope="col">Stock</th>
                                            <th scope="col">Status</th>
                                            <th scope="col">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="pro" items="${listProduct}">
                                            <tr>
                                                <td>${pro.productId}</td>
                                                <td>
                                                    <a
                                                        href="./detail?proID=${pro.productId}">${pro.productName}</a>
                                                </td>
                                                <td>${pro.description}</td>
                                                <td>${pro.category.name}</td>
                                                <td>${pro.price}$</td>
                                                <td>${pro.stock}</td>
                                                <td>
                                                    <div class="btn-group" role="group">
                                                        <div class="btn btn-danger"> <a class="text-white" href="./delete?proID=${pro.productId}">Remove</a></div>
                                                    </div>
                                                </td>
                                                <c:choose>
                                                    <c:when test="${sub.status==true}">
                                                        <td class="d-flex justify-content-center">
                                                            <div class="form-check form-switch">
                                                                <input class="form-check-input" type="checkbox" role="switch"
                                                                       checked>

                                                            </div>
                                                        </td>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <td class="d-flex justify-content-center">
                                                            <div class="form-check form-switch">
                                                                <input class="form-check-input" type="checkbox" role="switch"
                                                                       >

                                                            </div>
                                                        </td>
                                                    </c:otherwise>
                                                </c:choose>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <%@include file="../layout/footer.jsp" %>
            </div>
            <!-- Content End -->

            <!-- Back to Top -->
            <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i
                    class="bi bi-arrow-up"></i></a>
        </div>

        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="../lib/chart/chart.min.js"></script>
        <script src="../lib/easing/easing.min.js"></script>
        <script src="../lib/waypoints/waypoints.min.js"></script>
        <script src="../lib/owlcarousel/owl.carousel.min.js"></script>
        <script src="../lib/tempusdominus/js/moment.min.js"></script>
        <script src="../lib/tempusdominus/js/moment-timezone.min.js"></script>
        <script src="../lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

        <!-- Template Javascript -->
        <script src="../js/main.js"></script>
    </body>

</html>