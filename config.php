require_once('stripe-php/init.php');
 
$stripe = array(
  "secret_key"      => "sk_test_456456546hgjhg",
  "publishable_key" => "pk_test_567hjhgjghgjhg"
);
 
\Stripe\Stripe::setApiKey($stripe['secret_key']);
?>