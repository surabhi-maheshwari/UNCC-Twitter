
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://apis.google.com/js/platform.js" async defer></script>
        <meta name="google-signin-scope" content="profile email">
        <meta name="google-signin-client_id" content="566181778524-salr02jah1nbstnuihf0qntfsb5f6ums.apps.googleusercontent.com">
        
        <title>Login Page</title>
        <link rel="stylesheet" href="styles/logincss.css" type="text/css"/>
    </head>
    <body>
	<%@include file="header.jsp" %>
        <table>
        <tr>
        <td><img ID="HomePageWeb" alt="web" src="images/1.jpg">
        </td>
        
        <td>
        <section class="nav">
        <c:if test="${message != null}">
            <p><i>${message}</i></p>
        </c:if>
        <form action="membershipServlet" method="post">
            
            <input type="hidden" name="action" value="logIn">
			<table>
			<tr><td align="left"><label class="pad_top">Email: </label></td>
            <td align="left"><input type="email" name="email" class="email" placeholder="Email" style="width: 60%;"></td></tr>
            <tr><td align="left"><label class="pad_top">Password: </label></td>
           <td align="left"> <input type="password" class="password" placeholder="password" name="password" style="width: 60%;"></td></tr>
            <!--<input type="submit" value="Login" class="button" ><br>-->
            <tr><td align="left"><input type="submit" value="Login" class="button" ></td>
            <td align="left"><label>
            <input type="checkbox" name="rememberMe" checked>Remember me &nbsp;
            <a href="forgotpassword.jsp">Forgot password?</a></label></td></tr>
            <tr>
            <td></td>
            <td align="left">New ? &nbsp; <a href="signup.jsp">Sign up now</a></td></tr></table>
        </form>
<!--         <div class="g-signin2" data-onsuccess="onSignIn"></div>
        <script>
        function onSignIn(googleUser) {
        	var profile = googleUser.getBasicProfile();
            console.log("ID: " + profile.getId()); // Don't send this directly to your server!
            console.log('Full Name: ' + profile.getName());
            console.log('Given Name: ' + profile.getGivenName());
            console.log('Family Name: ' + profile.getFamilyName());
            console.log("Image URL: " + profile.getImageUrl());
            console.log("Email: " + profile.getEmail());

            // The ID token you need to pass to your backend:
            var id_token = googleUser.getAuthResponse().id_token;
            console.log("ID Token: " + id_token);
        	}
        </script> -->
        
		</section>
		</td></tr>
		</table>
		<%@include file="footer.jsp" %> 
    </body>
</html>
