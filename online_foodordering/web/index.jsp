<%-- 
    Document   : index
    Created on : Nov 21, 2018, 11:03:32 PM
    Author     : rishav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <title><img src="images1.png">Order online food</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            #div11{
                display: inline-block;
                width:50%;
                float: left;
                background-size: 100vw;
            }
            #b1{
                text-decoration: none;
                background-color:transparent;
                padding: 10px 18px;
                float: right;
                font-size: 20px;
                border: none;
                display: inline-block;
               padding-right: 20px;
            }
            #b1:hover{
                color:orangered;
                border: transparent;
            }
            #b2{
                text-decoration: none;
                background-color: black;
                padding: 10px 20px;
                float: right;
                font-size: 20px;
                border: none;
                display: inline-block;
                color: white;
            }
            select{
                background: transparent;
                width: 350px;
                display: inline-block;
                padding: 10px 30px;
                margin: 8px 0;
                font-size: 17px;
                text-align: left;
            }
            #b3{
                display: inline-block;
                padding: 10px 15px;
                font-size: 17px;
            }
            	b {
  position: absolute;
  transition: opacity 0.2s ease-in;
}

b + b { opacity: 0; }
</style>
<script type="text/javascript">
	var current = 0,
    slides = document.getElementsByTagName("b");

setInterval(function() {
  for (var i = 0; i < slides.length; i++) {
    slides[i].style.opacity = 0;
  }
  current = (current != slides.length - 1) ? current + 1 : 0;
  slides[current].style.opacity = 1;
}, 3500);
</script>
    </head>
    <body>
        <div style="display: inline-block;margin: 0;">
                <div id="div11">
                    <div style=" display: inline-block;padding-top: 90px;padding-bottom: 100px;margin:0;">
                        <img src="food.jpg" style="float:left;display: inline-block; height: 70px;width: 80px;padding-left: 180px;" alt="icon">
                        <form style="padding-left:650px;">
                            <button type="submit" name="signup" value="signup" id="b2" formaction="signup.jsp">Sign up</button>
                        <button type="submit" name="signin" value="signin" id="b1" formaction="signin.jsp">Signin</button>
                    </form>
                    </div>
                    
                    <div style="padding-bottom:30px;">
                    <b><span style="margin-left:10vw;font-family: Helvetica;font-size: 40px;color:#282C3F">Movie marathon?</span></b>
                    <b><span style="margin-left:10vw;font-family: Helvetica;font-size: 40px;color:#282C3F">Cooking gone wrong?</span></b>
                    <b><span style="margin-left:10vw;font-family: Helvetica;font-size: 40px;color:#282C3F">Game night?</span></b>
                    <b><span style="margin-left:10vw;font-family: Helvetica;font-size: 40px;color:#282C3F">Late night at office?</span></b>
                    <b><span style="margin-left:10vw;font-family: Helvetica;font-size: 40px;color:#282C3F">Hungry?</span></b></div><br>
                    <span style="margin-left:10vw;font-size: 25px;color: #686b78">Order food from favourite resturants near you.</span><br>
                    <div style="margin-left:10vw;padding-top: 30px;">
                        <br>
                            <select name="city">
							<option value="1" selected>---choose city---</option>
							<option value="sangamner">Delhi</option>
							<option value="pune">Chandigarh</option>
							<option value="nasik">Mumbai</option>
        </select>
                            <button type="submit" name="locations" id="b3"><a href="signin.jsp" style="text-decoration:none;color:#282C3F;">Location</a></button>
                    </div><br>
                    <div style="text-align:center;">
                        <span style="font-family: sans-serif;font-size:30px;color:#282C3F;font-weight: bold">Cuisines</span>
                    </div><br>
                    <div style="text-align:left;font-size: 20px;padding-left: 80px;padding-right: 40px;color:#969EAB">
                        American . Andhra . Bengali . Breakfast . Burgers . Cakes-Bakery . Chinese . Continental . Desserts . European . Fast Food . Healthy .  Hyderabadi . 
                        Ice creams . Italian . Japanese . Juices . Kebab .  Maharashtrian . Mexican . Mughlai . North Indian . Pan-Asian . Pizza . Punjabi .  Rajasthani
                        . Rolls . Salads . Sandwiches . Saudi Arabian . Seafood . Shakes and Smoothies . Snacks . South Indian . Tea - Coffee . Thai . Tibetan . Vegetarian
     . Wraps

                    </div>
                </div>
                <div style="width: 50%;float: right;display: inline-block;margin: 0px;">
                <img src="pexels.jpeg" style="width:100%;height: 700px;">
                </div>
            <img src="images1.gif" style="width: 100%;height: 500px;"></div>
    </body>
</html>
