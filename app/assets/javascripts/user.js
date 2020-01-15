document.addEventListener("turbolinks:load", function(){
  $('#user_postal_number').jpostal({
    postcode : [
      "#user_postal_number"
    ],
    address : {
     "#user_prefecture_code" : "%3",
                  "#user_adress"            : "%4",
                  "#user_street"          : "%5%6%7"
    }
  });
});


