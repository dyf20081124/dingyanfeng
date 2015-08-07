<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="jquery-1.2.6.min.js"></script>
<title>JQury Test</title>
<script type="text/javascript">
/*   $(document).ready(function(){
	  $("#btn1").click(function(){
		  $('#test').load('demo_test.txt');
		  
	  })
	  
  }) */
  /* $(document).ready(function(){
	  $("button").click(function(){
	    $("#div1").load("/example/jquery/demo_test.txt",function(responseTxt,statusTxt,xhr){
	      if(statusTxt=="success")
	        alert("外部内容加载成功！");
	      if(statusTxt=="error")
	        alert("Error: "+xhr.status+": "+xhr.statusText);
	    });
	  });
	}); */
	
	/* $(document).ready(function (){
		$("button").click(function(){
			$.get("demo_test.asp",function(data,status){
				alert("数据:"+data+"\n状态:"+status);
			});
		});
	}); */
	
	/* $(document).ready(function (){
		$("button").click(function(){
			$.post("demo_test_post.jsp",
					{
						name:"dingyanfeng",
						city:"hangzhou"
					},
					function(data,status){
				alert("数据:"+data+"\n状态:"+status);
			});
		});
	}); */
	
	$(document).ready(function(){
		  $("#b01").click(function(){
		  htmlobj=$.ajax({
			  url:"demo_test.txt",
			  async:false
			  });
		  $("#myDiv").html(htmlobj.responseText);
		  });
		});
</script>
</head>
<body>

<!-- <h3 id="test">请点击下面的按钮，通过 jQuery AJAX 改变这段文本。</h3>
<button id="btn1" type="button">获得外部的内容</button>
</body> -->
<!-- <div id="div1"><h2>使用 jQuery AJAX 来改变文本</h2></div>
<button>获得外部内容</button> -->

<!-- <button>向页面发送 HTTP GET 请求，然后获得返回的结果</button> -->

<!-- <button>向页面发送 HTTP POST 请求，然后获得返回的结果</button> -->
<div id="myDiv"><h2>通过 AJAX 改变文本</h2></div>
<button id="b01" type="button">改变内容</button>


</body>
</html>