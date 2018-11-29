
         <!DOCTYPE html PUBLIC ?-//W3C//DTD HTML 4.01 Transitional//EN? ?http://www.w3.org/TR/html4/loose.dtd?>
         <html>
             <head>
                 <meta http-equiv=?Content-Type? content=?text/html; charset=ISO-8859-1?>
                 <title> Insert title here</title>
         <meta http-equiv=?X-UA-Compatible? content=?IE=edge? />
         <script src=?https://www.paypalobjects.com/api/checkout.js?></script>
             </head>
             <body>
<h2>hello siddhu</h2>
<div id=?paypal-button?></div>
    <script>        paypal.Button.render({
            env: ?production?, // Or ?sandbox?,
            commit: true, // Show a ?Pay Now? button
            payment: function() {                // Set up the payment here            },
            onAuthorize: function(data, actions) {                // Execute the payment here           }
        }, ?#paypal-button?);    </script></body></html>

