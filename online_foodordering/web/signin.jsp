<%-- 
    Document   : signin
    Created on : Nov 22, 2018, 6:15:23 AM
    Author     : rishav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <style>
        body {
            background-image: url(images1.gif);
            background-repeat: no-repeat;
           background-size: 100%;
           opacity: 0.8;
        }
        input[type=text],input[type=password]{
            color: black;
            font-size: 18px;
            padding: 14px 16px;
            margin-left: 4.5vw;
        }
        b{
            margin-left: 7vw;
            text-align: left;
        }
        .b1{
            padding: 10px 12px;
            margin-left: 10vw;
            margin-top: 2vw;
            font-size: 0.8vw;
        }
        #img1{
            height: 70px;
            width: 80px;
        }
        .b2{
            margin-left: 6.5vw;
            background: transparent;
            color: white;
            font-size: 1.0vw;
            border: none;
        }
    </style>
    </head>
    <body>
    <div style="margin-top: 12vw;margin-left: 36vw; background-color: black; height:30vw;color: white;border: solid 1px;border-radius: 2vw;margin-right: 39vw;">
        <img src="food.jpg" alt="icon" id="img1" style="margin-left:10vw;opacity: 0.9;border-radius: 2vw;margin-top: 2vw;"><br>
        <h2 style="margin-left:10vw;">SIGN IN</h2>
        <form  action="loginser" method="post" style="border: solid 19x;">
                <label for="username"><b>Username</b></label><br>
            <input type="text" name="uname" placeholder="Enter your username" required><br>
            <br>
            <label for="password"><b>Password</b></label><br>
            <input type="password" name="passw" placeholder="Enter your password" required style="color:black;"><br>
            <button type="submit" name="Signin" class="b1">Sign in</button><br>
        </form>
        <br>
        <button type="submit" name="signup" class="b2"><a href="signup.jsp" style="text-decoration: none;color: white;">Don't have account?<br>Sign up</a></button>
        </div>
    </body>
</html>
