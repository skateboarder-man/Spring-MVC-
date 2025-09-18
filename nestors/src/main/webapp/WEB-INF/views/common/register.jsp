<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<div class="register-container">
    <h2>회원가입</h2>
    <form action="#" method="post">
        <div class="input-group">
            <label for="username">아이디</label>
            <input type="text" id="username" name="username" required>
        </div>
        <div class="input-group">
            <label for="password">비밀번호</label>
            <input type="password" id="password" name="password" required>
        </div>
        <div class="input-group">
            <label for="confirm-password">비밀번호 확인</label>
            <input type="password" id="confirm-password" name="confirm-password" required>
        </div>
        <div class="input-group">
            <label for="email">이메일</label>
            <input type="email" id="email" name="email" required>
        </div>
        <input type="submit" value="가입하기" class="register-button">
    </form>
</div>

<Script type="text/javascript">
</Script>