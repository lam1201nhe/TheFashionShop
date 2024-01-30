<%-- Document : addSubject Created on : Oct 7, 2023, 10:58:01 PM Author : Admin --%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <link
            href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600;700&display=swap"
            rel="stylesheet"
            />

        <!-- Icon Font Stylesheet -->
        <link
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
            rel="stylesheet"
            />
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
            rel="stylesheet"
            />

        <!-- Libraries Stylesheet -->
        <link
            href="../lib/owlcarousel/assets/owl.carousel.min.css"
            rel="stylesheet"
            />
        <link
            href="../lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css"
            rel="stylesheet"
            />

        <!-- Customized Bootstrap Stylesheet -->
        <link href="../css/bootstrap.min.css" rel="stylesheet" />

        <!-- Template Stylesheet -->
        <link href="../css/style.css" rel="stylesheet" />
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
                    <div class="col-xl-12">
                        <div class="bg-light rounded h-100 p-4">
                            <form method="post" action="delete">
                                <div >
                                    <h2 class="mb-4">Product Detail</h2>
                                </div>
                                <div class="input-group">
                                    <span class="input-group-text" id="basic-addon1">ID</span>
                                    <input
                                        type="text"
                                        class="form-control"
                                        value="${product.productId}"
                                        readonly
                                        name="id"
                                        aria-describedby="idhelp"
                                        />
                                </div>
                                <div id="idhelp" class="form-text mb-3">
                                    ID will increase automatically.
                                </div>
                                <div class="input-group mb-3">
                                    <!--                                <input type="text" class="form-control" placeholder="Code" />
                                                                    <span class="input-group-text" id="basic-addon1"
                                                                          ><i class="fa-solid fa-code"></i
                                                                        ></span>-->
                                    <span class="input-group-text" id="basic-addon2"
                                          >Product Name</span
                                    >
                                    <input
                                        type="text"
                                        name="productName"
                                        class="form-control"
                                        value="${product.productName}"
                                        />

                                </div>
                                <label for="basic-url" class="form-label">More Detail:</label>
                                <div class="input-group mb-3">
                                    <textarea
                                        class="form-control"
                                        aria-label="With textarea"
                                        name="description"
                                        >${product.description}</textarea>
                                    <span class="input-group-text">Description</span>
                                </div>
                                <div class="input-group mb-3">

                                    <span class="input-group-text" id="basic-addon1">Stock</span>
                                    <input
                                        type="number"
                                        class="form-control"
                                        aria-describedby="idhelp"                                    
                                        value="${product.stock}"
                                        name="stock"
                                        />
                                    <span class="input-group-text" id="basic-addon1">Price</span>
                                    <input
                                        type="number"
                                        class="form-control"
                                        aria-describedby="idhelp"
                                        value="${product.price}"
                                        name="price"
                                        />
                                    <span class="input-group-text">$</span>
                                </div>
                                <div class="input-group mb-3">
                                    <input
                                        type="radio"
                                        class="btn-check"
                                        name="btnradio"
                                        id="btnradio1"
                                        autocomplete="off"
                                        checked
                                        />
                                    <label class="btn btn-outline-success" for="btnradio1"
                                           >Active</label
                                    >
                                    <input
                                        type="radio"
                                        class="btn-check"
                                        name="btnradio"
                                        id="btnradio2"
                                        autocomplete="off"
                                        />
                                    <label class="btn btn-outline-danger" for="btnradio2"
                                           >Deactive</label
                                    >
                                    <span class="input-group-text"
                                          ><i class="fa-solid fa-toggle-on"></i
                                        ></span>
                                </div>
                                <hr />
                                <div class="d-flex justify-content-between mb-3">
                                    <h4>Category</h4>
                                    <button type="button" class="btn btn-outline-success">
                                        <a href="/dimensionDetail" style="color: inherit">
                                            New category
                                        </a>
                                    </button>
                                </div>
                                <div class="input-group mb-3">
                                    <div class="input-group">
                                        <span class="input-group-text" id="basic-addon1">Name</span>
                                        <input
                                            type="text"
                                            class="form-control"
                                            placeholder="${product.category.name}"
                                            aria-describedby="idhelp"
                                            readonly
                                            />
                                    </div>
                                    <!--                                <select class="form-select" aria-label="Default select example">
                                                                        <option selected>Name</option>
                                                                        <option value="1">Listening</option>
                                                                        <option value="2">Speaking</option>
                                                                        <option value="3">Reading</option>
                                                                    </select>-->
                                    <!--                                <span class="input-group-text">@</span>
                                                                    <select class="form-select" aria-label="Default select example">
                                                                        <option selected>Type</option>
                                                                        <option value="1">Skill</option>
                                                                        <option value="2">Domain</option>
                                                                    </select>-->
                                </div>
                                <hr />
                                <div class="mb-2 d-flex justify-content-center" style="gap: 10px">
                                    <button class="btn btn-primary" type="submit">
                                        Delete product
                                    </button>

                                    <div class="btn btn-danger">
                                        <a style="color: white" href="../product/list">Cancel</a>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <%@include file="../layout/footer.jsp" %>
            </div>
            <!-- Content End -->

            <!-- Back to Top -->
            <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"
               ><i class="bi bi-arrow-up"></i
                ></a>
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
        <script
            src="https://kit.fontawesome.com/1d015607ed.js"
            crossorigin="anonymous"
        ></script>
        <!-- Template Javascript -->
        <script src="../js/main.js"></script>
    </body>
</html>
