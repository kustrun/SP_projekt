/**
 * Created by Domen on 10. 11. 2016.
 */
window.addEventListener("load", function () {

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
    });

})