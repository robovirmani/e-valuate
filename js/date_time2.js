var date2 = "2100-01-01 23:59:59";

//function timeR(date_r)        
//{
        // Set the date we're counting down to
        //date_r = "2019-02-09 23:59:59";
//        date2 = date_r;
//}
        var countDownDate = new Date(date2).getTime();

        // Update the count down every 1 second
        var x = setInterval(function() {

          // Get todays date and time
          var now = new Date().getTime();

          // Find the distance between now and the count down date
          var distance = countDownDate - now;

          // Time calculations for days, hours, minutes and seconds
          var days = Math.floor(distance / (1000 * 60 * 60 * 24));
          var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
          var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
          var seconds = Math.floor((distance % (1000 * 60)) / 1000);

          // Display the result in the element with id="demo"
          document.getElementById("timeRem").innerHTML = "Time Remaining: " + days + "d " + hours + "h "
          + minutes + "m " + seconds + "s ";

          // If the count down is finished, write some text 
          if (distance < 0) {
            clearInterval(x);
            document.getElementById("timeRem").innerHTML = "EXPIRED";
          }
        }, 1000);

       
        