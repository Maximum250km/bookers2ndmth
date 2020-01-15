# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$ ->
  $("#user_postal_number").jpostal({
    postcode : [ "#user_postal_number" ],
    address  : {
                  "#user_prefecture_code" : "%3",
                  "#user_adress"            : "%4",
                  "#user_street"          : "%5%6%7"
                }
  })

  