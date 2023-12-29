function PasswordEye(imgEye) {
    let pwdInput = imgEye.previousElementSibling;                 // previousElementSibling是dom元素，用於找到與圖示元素（imgEye）相關聯的密碼輸入框元素

    if (pwdInput.type === "password") {
        pwdInput.type = "text";
        imgEye.src = "../image/icons/eye-open.png";
        imgEye.alt = "Show Password";
    } else {
        pwdInput.type = "password";
        imgEye.src = "../image/icons/eye-close.png";
        imgEye.alt = "Hide Password";
    }
}

function OpenPopUp(popUpId) {
    var popUp = document.getElementById(popUpId);
    popUp.style.display = "block";
}

function ClosePopUp(popUpId) {
    var popUp = document.getElementById(popUpId);
    popUp.style.display = "none";
}
