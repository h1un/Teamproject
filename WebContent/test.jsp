<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="contextPath" />
<!DOCTYPE html>
<html lang="zxx">
<head>
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		//핸드폰번호
		var c_phone = RegExp(/^(010|011)[-\s]?\d{3,4}[-\s]?\d{4}$/);
		$('#phone')
				.keyup(
						function() {
							if (!c_phone.test($("#phone").val())) {
								$('span[name=c_phone]').text('');
								$('span[name=c_phone]')
										.html(
												"<span style='color:red;'><i class='fa fa-remove'></i></span>");
							} else {
								$('span[name=c_phone]').text('');
								$('span[name=c_phone]')
										.html(
												"<span style='color:blue;'><i class='fa fa-check'></i></span>");
							}
						});
		$("#phone").blur(function() {
			if (!c_phone.test($("#phone").val())) {
				$("#phone").val("");
			}
		});
	});
</script>
<meta charset="UTF-8">
<meta name="description" content="Directing Template">
<meta name="keywords" content="Directing, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Zogin | Template</title>
</head>
<style>
</style>
<body>
								<span name="c_phone"></span>
									<input type="tel" class="form-control" id="phone" placeholder="- 없이 입력해 주세요" name="phone">
</body>
</html>