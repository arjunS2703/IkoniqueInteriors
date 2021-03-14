<!DOCTYPE html>
<%@page import="com.ikonique.bean.Offer"%>
<%@page import="com.ikonique.bean.Category"%>
<%@page import="java.util.List"%>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="au theme template">
    <meta name="author" content="Hau Nguyen">
    <meta name="keywords" content="au theme template">

    <!-- Title Page-->
    <title>Tables</title>

   <%@include file="FontFaces.jsp"%>
	<%@include file="commoncss.jsp"%>

</head>
<body class="animsition">
<jsp:include page="/SelectOfferDetails"/>
<%List<Offer> offerList =(List)request.getAttribute("offerList"); %>
<%@include file="adminsidebar.jsp"%>
<%@include file="adminheader.jsp"%>
    <div class="page-wrapper">
		<!-- PAGE CONTAINER-->
		<div class="page-container">
		<!-- MAIN CONTENT-->
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row">
                        <div class="row">
                            <div class="col-md-12">
                                <!-- DATA TABLE -->
                                <h3 class="title-5 m-b-35">Offer Details Table</h3>
                                <div class="table-data__tool">
                                    <div class="table-data__tool-left">
<!--                                         <div class="rs-select2--light rs-select2--md"> -->
<!--                                             <select class="js-select2" name="property"> -->
<!--                                                 <option selected="selected">All Properties</option> -->
<!--                                                 <option value="">Option 1</option> -->
<!--                                                 <option value="">Option 2</option> -->
<!--                                             </select> -->
<!--                                             <div class="dropDownSelect2"></div> -->
<!--                                         </div> -->
<!--                                         <div class="rs-select2--light rs-select2--sm"> -->
<!--                                             <select class="js-select2" name="time"> -->
<!--                                                 <option selected="selected">Today</option> -->
<!--                                                 <option value="">3 Days</option> -->
<!--                                                 <option value="">1 Week</option> -->
<!--                                             </select> -->
<!--                                             <div class="dropDownSelect2"></div> -->
<!--                                         </div> -->
                                        <button class="au-btn-filter">
                                            <i class="zmdi zmdi-filter-list"></i>filters</button>
                                    </div>
<!--                                     <div class="table-data__tool-right"> -->
<!--                                         <button class="au-btn au-btn-icon au-btn--green au-btn--small"> -->
<!--                                             <i class="zmdi zmdi-plus"></i>add item</button> -->
<!--                                         <div class="rs-select2--dark rs-select2--sm rs-select2--dark2"> -->
<!--                                             <select class="js-select2" name="type"> -->
<!--                                                 <option selected="selected">Export</option> -->
<!--                                                 <option value="">Option 1</option> -->
<!--                                                 <option value="">Option 2</option> -->
<!--                                             </select> -->
<!--                                             <div class="dropDownSelect2"></div> -->
<!--                                         </div> -->
<!--                                     </div> -->
                                </div>
                                <div class="col-lg-9">
                                <div class="table-responsive table-responsive-data2" style="overflow-x: scroll !important;">
                                    <table class="table  table-data2">
                                        <thead>
                                            <tr>
                                                <th>
                                                    <label class="au-checkbox">
                                                        <input type="checkbox">
                                                        <span class="au-checkmark"></span>
                                                    </label>
                                                </th>
                                                <th>Offer-ID</th>
                                                <th>Offer Name</th>
                                                <th>Offer Discount</th>
                                                <th>Offer Valid Or Not</th>
                                                <th><a class="item" data-toggle="tooltip" data-placement="top" title="Add Offer" href="insertproduct.jsp">
                                                            <i class="fa fa-plus"></i>
                                                        </a></th>
                                               
                                            </tr>
                                        </thead>
                                         <%for(Offer offer:offerList) { %>
                                        <tbody>
                                            <tr class="tr-shadow">
                                                <td>
                                                    <label class="au-checkbox">
                                                        <input type="checkbox">
                                                        <span class="au-checkmark"></span>
                                                    </label>
                                                </td>
                                                <td><%=offer.getOfferid() %></td>
                                                <td>
                                                    <%=offer.getOffername() %>
                                                </td>
                                                <td><%=offer.getDiscount() %> %</td>
                                                <td><%=offer.getValidoffer() %></td>
                                                <td>
                                                    <div class="table-data-feature">
                                                    	
                                                        <button class="item" data-toggle="tooltip" data-placement="top" title="Send">
                                                            <i class="zmdi zmdi-mail-send"></i>
                                                        </button>
                                                        <button class="item" data-toggle="tooltip" data-placement="top" title="Edit">
                                                            <i class="zmdi zmdi-edit"></i>
                                                        </button>
                                                        <a href="DeleteOfferDetails?offerid=<%=offer.getOfferid() %>" class="item" data-toggle="tooltip" data-placement="top" title="Delete">
                                                            <i class="zmdi zmdi-delete"></i>
                                                        </a>
                                                        <button class="item" data-toggle="tooltip" data-placement="top" title="More">
                                                            <i class="zmdi zmdi-more"></i>
                                                        </button>
                                                    </div>
                                                </td>
                                            </tr>
                                            
                                            <tr class="spacer"></tr>
                                       </tbody>
                                       <%} %>
                                    </table>
                                </div>
                                </div>
                                <br>
                                <br>
                               <!-- END DATA TABLE -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

     </div>

 
	<%@include file="commonjs.jsp"%>


</body>

</html>
<!-- end document-->