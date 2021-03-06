<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>새로운 리뷰 작성 페이지</title>
	    <meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	    <script>
	        function count(message) {
	            var totalByte = 0;
	
	            for (var index=0, length=message.length; index<length; index++) {
	                var currentByte = message.charCodeAt(index);
	                (currentByte > 256) ? totalByte += 2: totalByte++;
	            }
	            return totalByte;
	        }
	
	        function checkByte(event) {
	            const totalByte = count(event.target.value);
	
	            if(totalByte <= MAX_MESSAGE_BYTE) {
	                countSpan.innerText = totalByte.toString();
	                message= event.target.value;
	            }else {
	                alert(MAX_MESSAGE_BYTE+"바이트까지 작성가능합니다.");
	                countSpan.innerText = count(message).toString();
	                event.target.value = message;
	            }
	        }
	    </script>
	</head>
	<body>
		<div id = "outer1" >
			<jsp:include page="../template/navbar.jsp"></jsp:include>
			<jsp:include page="../template/sidebar.jsp"></jsp:include>
			 <div class="container">
	        <h2>식당이름</h2>
	        
	        <h3>작성자 정보(로그인 한 경우 바로 정보 가져오기)</h3>
	        <form>
	            <div class="form-group">
	                <label for="usr">이름:</label>
	                <input type="text" class="form-control" id="usr" style="width: 300px;">
	            </div>
	            <div class="form-group">
	                <label for="pwd">Id:</label>
	                <input type="password" class="form-control" id="pwd" style="width: 300px;">
	            </div>
	        </form>
	    </div>
	    <div class="container">
	        <h2>리뷰작성하기..</h2>
	        <p>리뷰 내용</p> <!--글자수 제한 js추가-->
	        <form>
	            <div class="form-group">
	                <label for="comment">Comment:</label>
	                <textarea id="text-area" class="form-control" rows="5" id="comment"></textarea>
	                <div><span id="count"></span><span id="max-count"></span></div>
	                <!-- <div id="test_cnt">(0/100)</div> -->
	                <script type="text/javascript">
	                    $(document).ready(function () {
	                        $('#test').on('keyup', function () {
	                            $('#test_cnt').html("(" + $(this).val().length + " /100)");
	
	                            if ($(this).val().length > 200) {
	                                $(this).val($(this).val().substring(0, 100));
	                                $('#test_cnt').html("(100 / 100)");
	                            }
	                        });
	                    });
	
	                    document.getElementById("text-area").addEventListener('keyup', checkByte);
	                    var countSpan = document.getElementById('count');
	                    var massage = '';
	                    var MAX_MESSAGE_BYTE = 500;
	                    var slash = '/';
	                    document.getElementById('max-count').innerHTML = slash.toString()+MAX_MESSAGE_BYTE.toString();
	                    
	                </script>
	            </div>
	        </form>
	    </div>
	    <div class="form-group">
	       
	    </div>
    </div>
	</body>
</html>