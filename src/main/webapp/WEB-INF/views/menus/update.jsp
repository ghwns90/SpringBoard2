<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" type="image/ico" href="/img/favicon.ico" />
<link rel="stylesheet" href="/css/common.css" />

<style>
	td {
		padding : 10px;
		width : 700px;
		text-align : center;
		
		&:nth-of-type(1){
			width : 200px;
		}
	}
	
	td:nth-of-type(1){}
	
	input { width : 100%; }
	input[type="submit"] {
		width : 100px;
	}
</style>
</head>
<body>
  <main>
	<h2>메뉴 수정</h2>
	<form action="/Menus/Update" method="POST">
	  <table>
	    <tr>
	      <td>메뉴 아이디</td>
	      <td><input type="text" name="menu_id" maxlength="6" value = "${ menu.menu_id }" readonly /></td>
	    </tr>
	    <tr>
	      <td>메뉴 이름</td>
	      <td><input type="text" name="menu_name" value = "${ menu.menu_name }" /></td>
	    </tr>
	    <tr>
	      <td>메뉴 순서</td>
	      <td><input type="number" name="menu_seq" value = "${ menu.menu_seq }"/></td>
	    </tr>
	    <tr>	      
	      <td colspan="2">
	      <input type="submit" value="등록" />
	      </td>
	    </tr>
	  </table>
	</form>
  </main>
  
  <script>
  	const formEl = document.querySelector("form");
  	
  	formEl.addEventListener('submit', function(e){
  		//alert('ok')
  		const inputEl1 = document.querySelector('[name="menu_id"]')
  		if( inputEl1.value.trim() == '' ){
  			alert('메뉴 아이디가 입력되지 않았습니다(MENU01)')
  			e.stopPropagation();
  			e.preventDefault();
  			inputEl1.focus();
  			return false;
  		}
  		
  		const inputEl2 = document.querySelector('[name="menu_name"]')
  		if( inputEl2.value.trim() == '' ){
  			alert('메뉴 이름이 입력되지 않았습니다')
  			e.stopPropagation();
  			e.preventDefault();
  			inputEl2.focus();
  			return false;
  		}
  		
  		const inputEl3 = document.querySelector('[name="menu_seq"]')
  		if( inputEl3.value.trim() == '' ){
  			alert('메뉴 순서가 입력되지 않았습니다(MENU01)')
  			e.stopPropagation();
  			e.preventDefault();
  			inputEl3.focus();
  			return false;
  		}
  	})
  </script>	
</body>
</html>



