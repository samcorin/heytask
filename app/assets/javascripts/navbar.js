$(document).ready(function() {
  // Make navbar always transparent
  // if (location.pathname == '/') {
  //   $('.navbar-wagon').addClass("transparent-navbar");
  // } else {
  //   $('.navbar-wagon').removeClass("transparent-navbar");
  // }

  var didScroll;
  var lastScrollTop = 0;
  var delta = 5;
  var navbarHeight = $('.navbar-wagon').outerHeight();
  console.log(navbarHeight)
  // $('header').addClass('header-white');

  $(window).scroll(function(event){
    didScroll = true;
  });

  setInterval(function() {
    if (didScroll) {
        hasScrolled();
        didScroll = false;
    }
  }, 250);

  function hasScrolled() {
    var st = $(this).scrollTop();

    // Change background color / add class / remove class
    // if (st > 500) {
      // $('header').addClass('header-white', 300);
    // } else {
    //   $('header').removeClass('header-white', 300);
    // }

    // Make sure they scroll more than delta
    if(Math.abs(lastScrollTop - st) <= delta)
        return;

    // If they scrolled down and are past the navbar, add class .nav-up.
    // This is necessary so you never see what is "behind" the navbar.
    if (st > lastScrollTop && st > navbarHeight){
      // Scroll Up
      $('.navbar-wagon').addClass('nav-up', 300);

      // if dropdown is open, close, or remove open from this
      $('.dropdown').removeClass('open', 300);
    } else {
      // Scroll Down
      if(st + $(window).height() < $(document).height()) {
      $('.navbar-wagon').removeClass('nav-up', 300);
      }
    }
    lastScrollTop = st;
  }
});
