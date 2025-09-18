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
    <h1>회원가입</h1>
    
    <form id="signupForm">
        <div>
            <label for="username">사용자명</label>
            <input type="text" id="username" name="username" required>
        </div>
        <div>
            <label for="email">이메일</label>
            <input type="email" id="email" name="email" required>
        </div>
        <div>
            <label for="password">비밀번호</label>
            <input type="password" id="password" name="password" required>
        </div>
        
        <button type="submit">가입하기</button>
    </form>

    <div id="messageBox" style="display:none;"></div>

    <script>
        document.getElementById('signupForm').addEventListener('submit', function(event) {
            event.preventDefault();

            const username = document.getElementById('username').value;
            const messageBox = document.getElementById('messageBox');

            // 간단한 유효성 검사 (예: 사용자명이 비어있지 않은지)
            if (username.trim() !== '') {
                messageBox.textContent = `${username}님, 회원가입이 완료되었습니다!`;
                messageBox.style.color = 'green';
            } else {
                messageBox.textContent = '회원가입 실패: 사용자명을 입력해주세요.';
                messageBox.style.color = 'red';
            }
            messageBox.style.display = 'block';
        });
    </script>
</body>
</html>
