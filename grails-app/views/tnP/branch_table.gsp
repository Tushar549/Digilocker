<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>
<%
response.setHeader("Cache-Control","no-cache");  

response.setHeader("Cache-Control","no-store");     

response.setDateHeader("Expires", 0); 

response.setHeader("Pragma","no-cache");

%>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>e-IPEC</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <asset:link rel="stylesheet" href="themify-icons.css"/>
    <asset:link rel="stylesheet" href="bootstrap.min.css"/>
    <asset:link rel="stylesheet" href="styles.css"/>
    <asset:link rel="stylesheet" href="responsive.css"/>
    <asset:link rel="stylesheet" href="jquery.dataTables.css"/>
    <asset:link rel="stylesheet" href="dataTables.bootstrap4.min.css"/>
    <asset:link rel="stylesheet" href="responsive.bootstrap.min.css"/>
    <asset:link rel="stylesheet" href="responsive.jqueryui.min.css"/>
    <asset:javascript src="bootstrap.min.js"/>
    <asset:javascript src="jquery-2.2.4.min.js"/>
    <asset:javascript src="jquery.dataTables.js"/>
    <asset:javascript src="jquery.dataTables.min.js"/>
    <asset:javascript src="dataTables.bootstrap4.min.js"/>
    <asset:javascript src="dataTables.responsive.min.js"/>
    <asset:javascript src="responsive.bootstrap.min.js"/>
    <asset:javascript src="plugins.js"/>
    <asset:javascript src="scripts.js"/>
    
   
</head>

<body class="body-bg">
    <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
    <!-- main wrapper start -->
    <div class="horizontal-main-wrapper">
        <!-- main header area start -->
        <div class="mainheader-area">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-md-3">
                        <div class="logo">
                            <a href="#">
                                <g:img dir="images" class="sitelogo" file="logo.png" alt="logo"/></a>
                        </div>
                    </div>
                    <!-- profile info & task notification -->
                    <div class="col-md-9 clearfix text-right">
                        <div class="clearfix d-md-inline-block d-block">
                            <div class="user-profile m-0">
                                <g:img dir="images" class="avatar user-thumb" file="avatar.png" alt="avatar"/>
                                <h4 class="user-name dropdown-toggle" data-toggle="dropdown">Teacher's_Name <i class="fa fa-angle-down"></i></h4>
                                <div class="dropdown-menu">
                                    <a class="dropdown-item" href="#">Change View</a>
                                    <a class="dropdown-item" href="#">Log Out</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- main header area end -->
        <!-- header area start -->
        <div class="header-area header-bottom">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-9  d-none d-lg-block">
                        <div class="horizontal-menu">
                            <nav>
                                <ul id="nav_menu">
                                    <li>
                                        <a href="tnpDashboard"><i class="fa fa-dashboard"></i><span>dashboard</span></a>
                                    </li>
                                    <li class="active">
                                        <a href="javascript:void(0)"><i class="fa fa-list-alt"/></i><span>generate report</span></a>
                                        <ul class="submenu">
                                            <li class="active"><a href="branch_wise">Branch wise</a></li>
                                            <li><a href="#">Section wise</a></li>
                                            <li><a href="#">B.Tech. Percentile wise</a></li>
                                            <li><a href="#">Placement wise</a></li>
                                            <li><a href="#">Year wise</a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)"><i class="fa fa-comment"></i><span>send messages</span></a>
                                        <ul class="submenu">
                                            <li><a href="message">Message Student</a></li>
                                            <li><a href="#">Message Branch</a></li>
                                            <li><a href="#">Message Year</a></li>
                                            <li><a href="#">Untitled</a></li>
                                            <li><a href="#">Untitled</a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)"><i class="fa fa-search"></i><span>Search</span></a>
                                        <ul class="submenu">
                                            <li><a href="#">User Search</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                    <!-- mobile_menu -->
                    <div class="col-12 d-block d-lg-none">
                        <div id="mobile_menu"></div>
                    </div>
                </div>
            </div>
        </div>
        <!-- header area end -->
        <!-- page title area end -->
        <div class="main-content-inner">
                <div class="row">
                    <!-- data table start -->
                    <div class="col-12 mt-5">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="header-title">Data Table Default</h4>
                                <div class="data-tables">
<div class="exportBar pull-right">

<button class="button" id="btnExport" onclick="javascript:xport.toCSV('dataTable');"> Export to CSV</button> 
</div> 
<div class="tablesearchbar pull-right">
<input type="text"  onkeyup="searchID()" onkeypress='return event.charCode >= 48 && event.charCode <= 57' class="iptablesearch" id="myID" placeholder="Search for ID.." title="Type in Id"></input>
<input type="text" class="iptablesearch" id="myName" onkeyup="searchName()" placeholder="Search for names.." title="Type in a Name">
<input type="text" class="iptablesearch" id="myX" onkeyup="searchX()" placeholder="Search for X%.." title="Type in X%">
<input type="text" class="iptablesearch" id="myXII" onkeyup="searchXII()" placeholder="Search for XII%.." title="Type in XII%">
<input type="text" class="iptablesearch" id="myBTech" onkeyup="searchBTech()" placeholder="Search for B.Tech.%.." title="Type in BTech%">
<input type="text" class="iptablesearch" id="myPackage" onkeyup="searchPackage()" placeholder="Search for Package.." title="Type in a Package">
</div>
								   <table id="dataTable" class="text-center">
                                        <thead class="bg-light text-capitalize">
                                             <tr>
                                                <th>ID</th>
                                                <th>Name</th>
                                                <th>X%</th>
                                                <th>XII%</th>
                                                <th>B.Tech.%</th>
                                                <th>Package</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
												<td>1029357234</td>
                                                <td>Airi Satou</td>
                                                <td>89</td>
                                                <td>92</td>
                                                <td>78</td>
                                                <td>$162,700</td>
                                            </tr>
                                            <tr>
												<td>1253642486</td>
                                                <td>Angelica Ramos</td>
                                                <td>88</td>
                                                <td>89</td>
                                                <td>67</td>
                                                <td>$1,200,000</td>
                                            </tr>
                                            <tr>
                                                <td>7654876512</td>
                                                <td>Ashton Cox</td>
                                                <td>88</td>
                                                <td>98</td>
                                                <td>88</td>
                                                <td>$86,000</td>
                                            </tr>
                                            <tr>
												<td>1029357235</td>
                                                <td>Airi Satou</td>
                                                <td>89</td>
                                                <td>92</td>
                                                <td>78</td>
                                                <td>$162,700</td>
                                            </tr>
                                            <tr>
												<td>1253642482</td>
                                                <td>Angelica Ramos</td>
                                                <td>88</td>
                                                <td>89</td>
                                                <td>67</td>
                                                <td>$1,200,000</td>
                                            </tr>
                                            <tr>
                                                <td>7654876511</td>
                                                <td>Ashton Cox</td>
                                                <td>88</td>
                                                <td>98</td>
                                                <td>88</td>
                                                <td>$86,000</td>
                                            </tr>
                                            <tr>
												<td>1029357234</td>
                                                <td>Airi Satou</td>
                                                <td>89</td>
                                                <td>92</td>
                                                <td>78</td>
                                                <td>$162,700</td>
                                            </tr>
                                            <tr>
												<td>1253642466</td>
                                                <td>Angelica Ramos</td>
                                                <td>88</td>
                                                <td>89</td>
                                                <td>67</td>
                                                <td>$1,200,000</td>
                                            </tr>
                                            <tr>
                                                <td>7654876562</td>
                                                <td>Ashton Cox</td>
                                                <td>88</td>
                                                <td>98</td>
                                                <td>88</td>
                                                <td>$86,000</td>
                                            </tr>
                                            <tr>
                                                <td>7654876512</td>
                                                <td>Ashton Cox</td>
                                                <td>88</td>
                                                <td>98</td>
                                                <td>88</td>
                                                <td>$86,000</td>
                                            </tr>
                                            <tr>
												<td>1029357235</td>
                                                <td>Airi Satou</td>
                                                <td>89</td>
                                                <td>92</td>
                                                <td>78</td>
                                                <td>$162,700</td>
                                            </tr>
                                            <tr>
												<td>1253642482</td>
                                                <td>Angelica Ramos</td>
                                                <td>88</td>
                                                <td>89</td>
                                                <td>67</td>
                                                <td>$1,200,000</td>
                                            </tr>
                                            <tr>
                                                <td>7654876511</td>
                                                <td>Ashton Cox</td>
                                                <td>88</td>
                                                <td>98</td>
                                                <td>88</td>
                                                <td>$86,000</td>
                                            </tr>
                                            <tr>
												<td>1029357234</td>
                                                <td>Airi Satou</td>
                                                <td>89</td>
                                                <td>92</td>
                                                <td>78</td>
                                                <td>$162,700</td>
                                            </tr>
                                            <tr>
												<td>1253642466</td>
                                                <td>Angelica Ramos</td>
                                                <td>88</td>
                                                <td>89</td>
                                                <td>67</td>
                                                <td>$1,200,000</td>
                                            </tr>
                                            <tr>
                                                <td>7654876562</td>
                                                <td>Ashton Cox</td>
                                                <td>88</td>
                                                <td>98</td>
                                                <td>88</td>
                                                <td>$86,000</td>
                                            </tr>
                                            
											<tr>
												<td>1028357234</td>
                                                <td>Airi Satou</td>
                                                <td>89</td>
                                                <td>92</td>
                                                <td>78</td>
                                                <td>$162,700</td>
                                            </tr>
                                            <tr>
												<td>1253642486</td>
                                                <td>Angelica Ramos</td>
                                                <td>88</td>
                                                <td>89</td>
                                                <td>67</td>
                                                <td>$1,200,000</td>
                                            </tr>
                                            <tr>
                                                <td>7654876512</td>
                                                <td>Ashton Cox</td>
                                                <td>88</td>
                                                <td>98</td>
                                                <td>88</td>
                                                <td>$86,000</td>
                                            </tr>
                                            
                                        </tbody>
                                    </table>
								</div>
                            </div>
                        </div>
                    </div>
                    <!-- data table end -->
              
    
        </div>
  </div>
  </div>
 <!-- footer area start-->
        <footer>
            <div class="footer-area">
          e-IPEC
            </div>
        </footer>
        <!-- footer area end-->
        
<!-- jquery latest version -->
    <asset:javascript src="jquery-2.2.4.min.js"/>
    <!-- bootstrap 4 js -->
    <asset:javascript src="popper.min.js"/>
    <asset:javascript src="bootstrap.min.js"/>
    <asset:javascript src="jquery.slimscroll.min.js"/>
    <asset:javascript src="jquery.slicknav.min.js"/>
    <asset:javascript src="plugins.js"/>
    <asset:javascript src="scripts.js"/>

 <script>

function searchID() {
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myID");
  filter = input.value.toUpperCase();
  table = document.getElementById("dataTable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[0];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}
function searchName() {
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myName");
  filter = input.value.toUpperCase();
  table = document.getElementById("dataTable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[1];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}
function searchX() {
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myX");
  filter = input.value.toUpperCase();
  table = document.getElementById("dataTable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[2];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}
function searchXII() {
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myXII");
  filter = input.value.toUpperCase();
  table = document.getElementById("dataTable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[3];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}
function searchBTech() {
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myBTech");
  filter = input.value.toUpperCase();
  table = document.getElementById("dataTable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[4];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}
function searchPackage() {
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myPackage");
  filter = input.value.toUpperCase();
  table = document.getElementById("dataTable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[5];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}

var xport = {
  _fallbacktoCSV: true,  
  toXLS: function(tableId, filename) {   
    this._filename = (typeof filename == 'undefined') ? tableId : filename;
    
    //var ieVersion = this._getMsieVersion();
    //Fallback to CSV for IE & Edge
    if ((this._getMsieVersion() || this._isFirefox()) && this._fallbacktoCSV) {
      return this.toCSV(tableId);
    } else if (this._getMsieVersion() || this._isFirefox()) {
      alert("Not supported browser");
    }

    //Other Browser can download xls
    var htmltable = document.getElementById(tableId);
    var html = htmltable.outerHTML;

    this._downloadAnchor("data:application/vnd.ms-excel" + encodeURIComponent(html), 'xls'); 
  },
  toCSV: function(tableId, filename) {
    this._filename = (typeof filename === 'undefined') ? tableId : filename;
    // Generate our CSV string from out HTML Table
    var csv = this._tableToCSV(document.getElementById(tableId));
    // Create a CSV Blob
    var blob = new Blob([csv], { type: "text/csv" });

    // Determine which approach to take for the download
    if (navigator.msSaveOrOpenBlob) {
      // Works for Internet Explorer and Microsoft Edge
      navigator.msSaveOrOpenBlob(blob, this._filename + ".csv");
    } else {      
      this._downloadAnchor(URL.createObjectURL(blob), 'csv');      
    }
  },
  _getMsieVersion: function() {
    var ua = window.navigator.userAgent;

    var msie = ua.indexOf("MSIE ");
    if (msie > 0) {
      // IE 10 or older => return version number
      return parseInt(ua.substring(msie + 5, ua.indexOf(".", msie)), 10);
    }

    var trident = ua.indexOf("Trident/");
    if (trident > 0) {
      // IE 11 => return version number
      var rv = ua.indexOf("rv:");
      return parseInt(ua.substring(rv + 3, ua.indexOf(".", rv)), 10);
    }

    var edge = ua.indexOf("Edge/");
    if (edge > 0) {
      // Edge (IE 12+) => return version number
      return parseInt(ua.substring(edge + 5, ua.indexOf(".", edge)), 10);
    }

    // other browser
    return false;
  },
  _isFirefox: function(){
    if (navigator.userAgent.indexOf("Firefox") > 0) {
      return 1;
    }
    
    return 0;
  },
  _downloadAnchor: function(content, ext) {
      var anchor = document.createElement("a");
      anchor.style = "display:none !important";
      anchor.id = "downloadanchor";
      document.body.appendChild(anchor);

      // If the [download] attribute is supported, try to use it
      
      if ("download" in anchor) {
        anchor.download = this._filename + "." + ext;
      }
      anchor.href = content;
      anchor.click();
      anchor.remove();
  },
  _tableToCSV: function(table) {
    // We'll be co-opting `slice` to create arrays
    var slice = Array.prototype.slice;

    return slice
      .call(table.rows)
      .map(function(row) {
        return slice
          .call(row.cells)
          .map(function(cell) {
            return '"t"'.replace("t", cell.textContent);
          })
          .join(",");
      })
      .join("\r\n");
  }};
</script>
</body>

</html>
