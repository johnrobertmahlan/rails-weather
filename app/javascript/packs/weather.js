function domReady(fn) {
    // If we're early to the party
    document.addEventListener("DOMContentLoaded", fn);
    // If late; I mean on time.
    if (document.readyState === "interactive" || document.readyState === "complete" ) {
      fn();
    }
  }
  
  domReady(() => console.log("DOM is ready, come and get it!"));

 document.addEventListener('DOMContentLoaded', function() {
   const searchButton = document.getElementById('weathersearch')
   const searchCity = document.getElementById('searchcity');
   searchButton.addEventListener('click', function() {
     console.log('CLICK!');
     console.log(searchCity.value);
   })
 })