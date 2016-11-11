/**
 * Created by Domen on 10. 11. 2016.
 */
window.addEventListener("load", function () {

    var anchor = document.getElementById("navigationAnchor");
    var navigation = document.getElementsByTagName("nav")[0];

    window.onscroll =function(e) {

        var position = window.pageYOffset;
        var offset = anchor.offsetTop;

        if(position > offset) {
            console.log("je cez");

            navigation.setAttribute("style", "position: fixed; top: 0px; width: 1200px; z-index: 9999;");

        } else {
            console.log("ni cez");

            navigation.style.removeProperty("position");
            navigation.style.removeProperty("top");
            navigation.style.removeProperty("width");
            navigation.style.removeProperty("z-index");

        }

    }

    /*
    // get vars
    var labelEl = document.getElementsByClassName('searchLabel')[0].getElementsByTagName("i")[0];

    // register clicks and show search box
    labelEl.addEventListener("click",function(){
        alert("click");
    });

    // register clicks outisde search box and hide search box
    document.addEventListener("click",function(e){

    var clickedClass = e.target.classList;
        if(clickedClass != "fa fa-search") {
            alert("no click");
        }
    });*/

})