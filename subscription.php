<?php 
session_start();
include('includes/config.php');

    ?>

<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Muscat Daily | Home Page</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/modern-business.css" rel="stylesheet">

  </head>

  <body>

    <!-- Navigation -->
   <?php include('includes/header.php');?>

    <!-- Page Content -->
    <style>
* {
    box-sizing: border-box;
}
body {
    margin:50px 0; 
    padding:0;
    text-align:center;
}

.content {
     
    margin:0 auto;
    text-align:left;
    padding:15px;
     
}

.columns {
    float: left;
    width: 33.3%;
    padding: 8px;
}

.price {
    list-style-type: none;
    border: 1px solid #eee;
    margin: 0;
    padding: 0;
    -webkit-transition: 0.3s;
    transition: 0.3s;
}

.price:hover {
    box-shadow: 0 8px 12px 0 rgba(0,0,0,0.2)
}

.price .header {
    background-color: #111;
    color: white;
    font-size: 25px;
}

.price li {
    border-bottom: 1px solid #eee;
    padding: 20px;
    text-align: center;
}

.price .grey {
    background-color: #eee;
    font-size: 20px;
}

.button {
    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 10px 25px;
    text-align: center;
    text-decoration: none;
    font-size: 18px;
}

@media only screen and (max-width: 600px) {
    .columns {
        width: 100%;
    }
}
</style>
<?php 
  // Load Stripe's PHP library and set your secret keys
  require_once("config.php"); 
  // Create the subscription
  require_once("create-subscription.php"); 
?>
 
<div class="content" style="width:60%;">
<h2 style="text-align:center">Membership Subscription</h2>
<p style="text-align:center"> Pricing Tables</p>

<div class="columns">
  <ul class="price">
    <li class="header">Basic</li>
    <li class="grey">$ 9.99 / year</li>
    <li class="grey">

        <form action="" method="POST" class="spacing">
        <input name="plan" type="hidden" value="Basic" />         
        <input name="interval" type="hidden" value="year" />         
        <input name="price" type="hidden" value="9.99" />         
        <input name="currency" type="hidden" value="usd" />         
        <script
          src="https://checkout.stripe.com/checkout.js" class="stripe-button"
          data-key="<?php echo $stripe['publishable_key']; ?>"
          data-image="https://www.w3school.info/wp-content/uploads/2017/08/w3school_logo.png"
          data-name="BASIC PLAN"
          data-description="Start with basic plan"
          data-panel-label="Subscribe Now"
          data-label="Subscribe Now"
          data-locale="auto">
        </script>
      </form>
   

    </li>
  </ul>
</div>

<div class="columns">
  <ul class="price">
    <li class="header" style="background-color:#4CAF50">Pro</li>
    <li class="grey">$ 24.99 / year</li>
    <li class="grey">
       <form action="" method="POST" class="spacing">
         
        <input name="plan" type="hidden" value="Pro" />         
        <input name="interval" type="hidden" value="year" />         
        <input name="price" type="hidden" value="24.99" />         
        <input name="currency" type="hidden" value="usd" />               
        <script
          src="https://checkout.stripe.com/checkout.js" class="stripe-button"
          data-key="<?php echo $stripe['publishable_key']; ?>"
          data-image="https://www.w3school.info/wp-content/uploads/2017/08/w3school_logo.png"
          data-name="Pro PLAN"
          data-description="Start with Pro plan"
          data-panel-label="Subscribe Now"
          data-label="Subscribe Now"
          data-locale="auto">
        </script>
      </form>
    </li>
  </ul>
</div>

<div class="columns">
  <ul class="price">
    <li class="header">Premium</li>
    <li class="grey">$ 49.99 / year</li>
    <li class="grey">
<form action="" method="POST" class="spacing">     
        <input name="plan" type="hidden" value="Premium" />         
        <input name="interval" type="hidden" value="year" />         
        <input name="price" type="hidden" value="49.99" />         
        <input name="currency" type="hidden" value="usd" />           
        <script
          src="https://checkout.stripe.com/checkout.js" class="stripe-button"
          data-key="<?php echo $stripe['publishable_key']; ?>"
          data-image="https://www.w3school.info/wp-content/uploads/2017/08/w3school_logo.png"
          data-name="Premium PLAN"
          data-description="Start with Premium plan"
          data-panel-label="Subscribe Now"
          data-label="Subscribe Now"
          data-locale="auto">
        </script>
      </form>
    </li>
  </ul>
</div>

</body>
 
 </html>