/**
 * Created by Domen on 11. 11. 2016.
 */

function openLoginDialog() {

    var loginModal = document.getElementsByClassName("loginModal")[0];

    loginModal.style.display = "block";

}

function closeLoginDialog() {

    var loginModal = document.getElementsByClassName("loginModal")[0];
    loginModal.style.display="";

    var loginDiv = document.getElementsByClassName("loginDiv")[0];
    var registerDiv = document.getElementsByClassName("register")[0];
    var forgotPasswordDiv = document.getElementsByClassName("forgotPassword")[0];

    loginDiv.style.display = "block";
    registerDiv.style.display = "none";
    forgotPasswordDiv.style.display = "none";

    var input = loginModal.getElementsByTagName("input");
    //login
    input[0].value = "";    //username
    input[1].value = "";    //password

    //register
    input[2].value = "";    //email
    input[3].value = "";    //username
    input[4].value = "";    //password

    //forgot password
    input[5].value = "";    //email
}

function showLoginDivDialog() {

    var loginModalForm = document.getElementsByClassName("loginModal")[0].getElementsByTagName("form")[0];

    var loginDiv = document.getElementsByClassName("loginDiv")[0];
    var registerDiv = document.getElementsByClassName("register")[0];
    var forgotPasswordDiv = document.getElementsByClassName("forgotPassword")[0];

    loginDiv.style.display = "block";
    registerDiv.style.display = "none";
    forgotPasswordDiv.style.display = "none";

}

function showRegisterDialog() {

    var loginModalForm = document.getElementsByClassName("loginModal")[0].getElementsByTagName("form")[0];

    var loginDiv = document.getElementsByClassName("loginDiv")[0];
    var registerDiv = document.getElementsByClassName("register")[0];

    loginDiv.style.display = "none";
    registerDiv.style.display = "block";

}

function showForgotPasswordDialog() {

    var loginModalForm = document.getElementsByClassName("loginModal")[0].getElementsByTagName("form")[0];

    var loginDiv = document.getElementsByClassName("loginDiv")[0];
    var forgotPasswordDiv = document.getElementsByClassName("forgotPassword")[0];

    loginDiv.style.display = "none";
    forgotPasswordDiv.style.display = "block";

}
