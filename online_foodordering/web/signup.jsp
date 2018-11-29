<%-- 
    Document   : signup
    Created on : Nov 22, 2018, 6:20:20 AM
    Author     : rishav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>signup</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            body {
                background-image: url(images1.gif);
                background-repeat: no-repeat;
                background-size: 100%;
            }
            input[type=text],input[type=password]{
                 color: black;
            font-size: 18px;
            padding: 9px 14px;
            margin-left: 4.5vw;
            margin-bottom: 0.3vw;
            }
             #img1{
            height: 4vw;
            width:  4vw;
        }
        label{
            margin-left: 5vw;
            
        }
        .b1{
            padding: 10px 12px;
            margin-left: 10vw;
            margin-top: 2vw;
            font-size: 0.8vw;
        }
        </style>
        <script>
            var check = function() {
  if (document.getElementById('password').value ==
    document.getElementById('confirm_password').value) {
    document.getElementById('message').style.color = 'green';
    document.getElementById('message').innerHTML = 'matching';
  } else {
    document.getElementById('message').style.color = 'red';
    document.getElementById('message').innerHTML = 'not matching';
  }
}
        </script>
    </head>
    <body>
     <div style="margin-top: 10vw;margin-left: 36vw; background-color: black; height:34vw;opacity: 0.8;color: white;border: solid 1px;border-radius: 2vw;margin-right: 39vw;">
        <img src="food.jpg" alt="icon" id="img1" style="margin-left:10vw;opacity: 0.9;border-radius: 2vw;margin-top: 2vw;"><br>
        <h2 style="margin-left:10vw;">SIGN IN</h2>
            <form action="signup" method="post" >
                <label for="name"><b>Name</b></label><br>
                <input type="text" name="name" placeholder="Enter your name" required><br>
                <label for="username">Username</label><br>
                <input type="text" name="username" placeholder="Enter your username" required><br>
                <label for="email">Email</label><br>
                <input type="text" name="email" placeholder="Enter your email" required><br>
                <label for="password">Password</label><br>
                <input type="password" name="passw" placeholder="Enter your password" id="password" onkeyup='check();' required><br>
                <label for="pass">Confirm Password</label><br>
                <input type="password" placeholder="Confirm your password" id="confirm_password" onkeyup='check();' required><br>
                <button type="submit" name="signup" class="b1">Sign up</button>
            </form>
        </div>
    </body>
</html>
