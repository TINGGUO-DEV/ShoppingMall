
function PasswordEye(PwdId, eyeIconId) {
    let Pwd = document.getElementById(PwdId);
    let eyeIcon = document.getElementById(eyeIconId);

    if (Pwd.type === "password") {
        Pwd.type = "text";
        eyeIcon.src = "../image/icons/eye-open.png";
        eyeIcon.alt = "Show Password";
    } else {
        Pwd.type = "password";
        eyeIcon.src = "../image/icons/eye-close.png";
        eyeIcon.alt = "Hide Password";
    }
}

function OpenPopUp(PopUpId) {
    var PopUp = document.getElementById(PopUpId);
    PopUp.style.display = "block";
}

function ClosePopUp(PopUpId) {
    var PopUp = document.getElementById(PopUpId);
    PopUp.style.display = "none";
}



