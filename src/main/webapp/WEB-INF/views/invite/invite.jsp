<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>

<div class="header">
	<h2>Invite friends to the Greenhouse</h2>
	<c:if test="${not empty message}">
		<div class="${message.type}">${message.text}</div>
	</c:if>
</div>
		
<ul class="inviteNetworks">
	<li class="inviteNetwork">
		<img src="<c:url value="/resources/social/twitter/logo.png" />" alt="Twitter Logo"/> <a href="<c:url value="/invite/twitter"/>">Find the friends you follow on Twitter</a>
	</li>
	<li class="inviteNetwork">
		<img src="http://static.ak.fbcdn.net/images/fbconnect/login-buttons/connect_light_medium_short.gif" alt="Facebook Connect" width="89" height="21" id="fb_login_image" />
		<a class="button large" href="#" onclick="FB.Connect.requireSession(function() { window.location.href = '<c:url value="/invite/facebook"/>' }); return false;">Find your friends on Facebook</a>
		  <c:if test="${not empty facebookUserId}">
          (you are currently logged into Facebook as <fb:name linked="false" useyou="false" uid="${facebookUserId}"></fb:name>.
          <a onclick="FB.Connect.logoutAndRedirect('<c:url value="/signout"/>'); return false;" href="#">Not you?</a>)
          </c:if>
	</li>
</ul>
