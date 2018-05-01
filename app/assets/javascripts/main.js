document.addEventListener("turbolinks:load", function() {
    var elem = document.querySelector(".sidenav");
    var instance = M.Sidenav.init(elem, {});
    var tooltips = document.querySelectorAll('.tooltipped');
    tooltips.forEach(function(t) {
        var instance = M.Tooltip.init(t, {});
    });

    var notice = document.getElementById('notice');
    setTimeout(function() {
        notice.parentNode.removeChild(notice);
    }, 5000);
});
