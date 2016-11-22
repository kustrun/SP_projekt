/**
 * Created by Domen on 10. 11. 2016.
 */

function navFixed(navigation) {

    navigation.setAttribute("style", "position: fixed; top: 0px; z-index: 1;");

}

function removeNavFixed(navigation) {

    navigation.style.removeProperty("position");
    navigation.style.removeProperty("top");
    navigation.style.removeProperty("width");
    navigation.style.removeProperty("z-index");

}

function escapePressed(e) {

    e = e || window.event;
    if (e.keyCode == 27) {

        //search box
        var search = document.getElementsByClassName("search")[0].getElementsByTagName("input")[0];

        if(search == document.activeElement) {
            search.value = "";
            search.blur();
        }

        //login modal
        var loginModal = document.getElementsByClassName("loginModal")[0];

        if(loginModal.hasAttribute("style")) {
            closeLoginDialog();
        }

    }

}


/* WINDOW AND DOCUMENTS LISTENERS   */
window.addEventListener("load", function () {

    var anchor = document.getElementById("navigationAnchor");
    var navigation = document.getElementsByTagName("nav")[0];

    window.onscroll =function(e) {

        var position = window.pageYOffset;
        var offset = anchor.offsetTop;

        if(position > offset) {
            navFixed(navigation);
        } else {
            removeNavFixed(navigation);
        }
    }

});

document.addEventListener("keydown", escapePressed, false);
