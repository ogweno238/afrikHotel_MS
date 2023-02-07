<html>
<head>
<link href="css/style.css" media="screen" rel="stylesheet" type="text/css" /><!--sa poip up-->
<link href="admin/src/facebox.css" media="screen" rel="stylesheet" type="text/css" />
<script src="admin/lib/jquery.js" type="text/javascript"></script>
<script src="admin/src/facebox.js" type="text/javascript"></script>
<script type="text/javascript">
  jQuery(document).ready(function($) {
    $('a[rel*=facebox]').facebox({
      loadingImage : 'admin/src/loading.gif',
      closeImage   : 'admin/src/closelabel.png'
    })
  })
</script>



<script language="javascript">
function Clickheretoprint()
{ 
  var disp_setting="toolbar=yes,location=no,directories=yes,menubar=yes,"; 
      disp_setting+="scrollbars=yes,width=700, height=400, left=100, top=25"; 
  var content_vlue = document.getElementById("content").innerHTML; 
  
  var docprint=window.open("","",disp_setting); 
   docprint.document.open(); 
   docprint.document.write('</head><body onLoad="self.print()" style="width: 700px; font-size:11px; font-family:arial; font-weight:normal;">');          
   docprint.document.write(content_vlue); 
   docprint.document.close(); 
   docprint.focus(); 
}
</script>
</head>
<body style="background-image:url(images/print.png);">
<div class="row-top" style="margin-bottom: 20px;">
	<div class="main">
		<div class="wrapper">
			<h1><a href="">Afrik Hotel <br><span style="font-family: arial; font-size: 15px;"> management system</span></a></h1>
		</div>
	</div>
</div>


<div class="content" id="content" style="width: 700px; font-size:11px; font-family:arial; font-weight:normal; margin:0 auto;">
<div style="text-align:center; font-size:14px;">
<strong style="font-size:18px;"></strong><br>
<strong style="font-size:14px;">AFRIK HOTEL</strong><br>
Afrik Hotel , Along Juja Road , Isili, Nairobi<br>
Tel. No.07- 5947-8072<br />
<div style="text-align:center; color:#FFFF00; font-style:italic;">(Please Make Your Payments Through The M-PESA PAY BILL given Bellow.)</div>
<br><br><br><br><br>
<li>GO TO M-PESA  </li>
<li>BUY GOODS AND SERVICES </li>

<li>ENTER TILL NO:  <font color="#FFFF00">:0759478072</font></li>
</div><br><br><br><br><br><br><br><br><br><br><br><br>

<p align="center"><a href="index.php" style="font-size:20px; text-decoration:none; color:#FFFFFF; padding: 10px; border:1px solid grey; background-color:#333333; margin-top:40px;">Finish</a>

</div>
</body>
</html>