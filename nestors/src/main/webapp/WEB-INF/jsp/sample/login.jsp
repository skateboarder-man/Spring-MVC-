<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
  /**
  * @Class Name : egovSampleList.jsp
  * @Description : Sample List 화면
  * @Modification Information
  *
  *   수정일         수정자                   수정내용
  *  -------    --------    ---------------------------
  *  2009.02.01            최초 생성
  *
  * author 실행환경 개발팀
  * since 2009.02.01
  *
  * Copyright (C) 2009 by MOPAS  All right reserved.
  */
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
    
   
</head>

<body>
    <h1>로그인</h1>
    
    <form id="loginForm">
        <div>
            <label for="id">아이디</label>
            <input type="text" id="id" name="id" required>
        </div>
        <div>
            <label for="password">비밀번호</label>
            <input type="password" id="password" name="password" required>
        </div>
        
        <button type="submit">로그인</button>
    </form>
    
    <button id="signupButton">회원가입</button>

    <div id="messageBox" style="display:none;"></div>

    <script>
        document.getElementById('loginForm').addEventListener('submit', function(event) {
            event.preventDefault();

            const username = document.getElementById('username').value;
            const messageBox = document.getElementById('messageBox');

            if (username.toLowerCase() === 'admin') {
                messageBox.textContent = '로그인 성공!';
                messageBox.style.color = 'green';
            } else {
                messageBox.textContent = '로그인 실패: 잘못된 아이디 또는 비밀번호입니다.';
                messageBox.style.color = 'red';
            }
            messageBox.style.display = 'block';
        });

        document.getElementById('signupButton').addEventListener('click', function() {
            const messageBox = document.getElementById('messageBox');
            messageBox.textContent = '회원가입 페이지로 이동합니다.';
            messageBox.style.color = 'blue';
            messageBox.style.display = 'block';
            // 실제로는 여기에 회원가입 페이지로 리디렉션하는 코드가 들어갑니다.
            // 예: window.location.href = 'signup.html';
        });
    </script>
</body>
</html>
