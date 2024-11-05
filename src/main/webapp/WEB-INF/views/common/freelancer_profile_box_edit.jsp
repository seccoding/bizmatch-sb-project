<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <link rel="stylesheet" href="/css/profile_box.css" />
    <title>BizMatch | 마이페이지</title>
  </head>
  <body>
    <section class="profile">
      <div class="profile-box">
        <div class="img">
          <img src="/img/profile.svg" alt="profile-img" />
        </div>
        <div class="information">
          <input
            class="name"
            id="mbrNm"
            name="mbrNm"
            value="${sessionScope._LOGIN_USER_.mbrNm}"
          />
          <div class="star">
            <!-- 전체 별 -->
            <c:forEach var="i" begin="1" end="${averageRate}" step="1">
              <i class="fas fa-star"></i>
            </c:forEach>
            <!-- 반 별 -->
            <c:if test="${averageRate % 1 >= 0.5}">
              <i class="fas fa-star-half-alt"></i>
            </c:if>
            <!-- 빈 별 -->
            <c:forEach var="i" begin="1" end="${5 - averageRate}" step="1">
              <i class="far fa-star"></i>
            </c:forEach>
          </div>
          <div class="category">
            ${sessionScope._LOGIN_USER_.mjrId}>${sessionScope._LOGIN_USER_.smjrId}
          </div>
          <div class="homepage-button">
            <div class="button-box">
              <button class="edit-button" id="mypageeditbutton">저장</button>
            </div>
          </div>
        </div>
      </div>
    </section>
  </body>
</html>