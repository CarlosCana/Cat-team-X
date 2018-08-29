// Tyle the Stripe payment button
$(document).ready(function(){
    $(".stripe-button-el span").remove();
        $("button.stripe-button-el").removeAttr('style').css({
            "margin":"2px 10px 2px 0",
            "text-transform":"uppercase",
            "letter-spacing":".1125rem",
            "font-size":".75rem",
            "display":"block",
            "width":"100%",
            "color":"#fff",
            "background-color":"#2A39FD",
            "border-color":"#2A39FD",
            "font-weight":"600",
            "text-align":"center",
            "white-space":"nowrap",
            "vertical-align":"middle",
            "-moz-user-select":"none",
            "border":"2px solid transparent",
            "padding":"1rem 1.875rem",
            "line-height":"1.5",
            "border-radius":".1875rem",
            "overflow":"visible",
            "font-family":"inherit" }).html("Pay with Card");

});
