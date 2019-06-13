// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require_tree .

// When the user scrolls down 20px from the top of the document, show the button

window.onscroll = function() {scrollFunction()};

function scrollFunction() {
  if (document.body.scrollTop > 400 || document.documentElement.scrollTop > 400) {
    document.getElementById("myBtn").style.display = "block";
  } else {
    document.getElementById("myBtn").style.display = "none";
  }
}

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
  document.body.scrollTop = 0; // For Safari
  document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE and Opera
}

function select() {
  let selected = document.getElementById("formSelect").value;
  alert("You selected " + selected);


  // document.getElementById("main").innerHTML = 
  //   "<h2 id=\"<%= item[\"Material\"]  %>\"><%= item[\"Material\"] %></h2>" + 
  //   "<h5>Is Material accepted in Chicago's Blue Cart Program or at Recycling Drop-Off Centers?</h5>" +
  //   "<p><%= item[\"Is Material accepted in Chicago's Blue Cart Program or at Recycling Drop-Off Centers?\"] %></p>" +
  //  "<h5>Alternative Recycling Outlet</h5>" +
  //   "<p><%= item[\"Alternative Recycling Outlet\"] %></p>" +
  //   "<h5>Mail or Drop-Off Program?</h5>" +
  //   "<p><%= item[\"Mail or Drop-Off Program?\"] %></p> " +
  //   "<h5>Address</h5>" +
  //   "<p><%= item[\"Address\"] %></p>" +
  //   "<h5>Phone</h5>" +
  //   "<p><%= item[\"Phone\"] %></p>" +
  //   "<h5>Website</h5>" +
  //   "<p><%= item[\"Website\"] %></p>" +
  //   "<h5>Details and/or restrictions</h5>" +
  //   "<p><%= item[\"Details and/or Restrictions\"] %></p>";
}