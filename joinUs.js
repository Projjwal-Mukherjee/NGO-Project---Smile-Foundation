/*              SECTION             */
const choose = document.getElementById('choose')
const sec1 = document.getElementById('sec1')
const sec2 = document.getElementById('sec2')
const sec3 = document.getElementById('sec3')

/*              BUTTONS             */

const btnAdmin = document.getElementById('btn-admin')
const btnUser = document.getElementById('btn-user')

/*          REGISTER Link           */

const register = document.getElementById('register-link')
const login = document.getElementById('login-link')


btnAdmin.addEventListener('click',(event) =>{
    event.preventDefault()

    choose.style.display = 'none'
    sec3.style.display = 'block'
})

btnUser.addEventListener('click',(event) =>{
    event.preventDefault()

    choose.style.display = 'none'
    sec1.style.display = 'block'
})



register.addEventListener('click',(event) =>{
    event.preventDefault()

    sec1.style.display = 'none'
    sec2.style.display = 'block'
})




login.addEventListener('click',(event) =>{
    event.preventDefault()

    sec2.style.display = 'none'
    sec1.style.display = 'block'
})


//PASSWORD CHECKER

function containsUppercase(str) {
	return /[A-Z]/.test(str);
}
function containsLowercase(str) {
	return /[a-z]/.test(str);
}

function containsNumber(str) {
	return /[0-9]/.test(str);
}

function checkPassword(event) {
	const password = document.getElementById("signup-Password").value;
	const confirmPassword = document.getElementById("Re-type Password").value;

	let chkUpper = containsUppercase(password);
	let chkLower = containsLowercase(password);
	let chkNum = containsNumber(password);

	let chcklen = password.length;
	console.log(chcklen);
	if (chcklen < 8) {
		alert("Password Must contain 8 Characters");
		/* document.getElementById('signup-Password').value = ''
        document.getElementById('Re-type Password').value = '' */
		event.preventDefault();
	} else if (chkUpper != true) {
		alert("Password Must contain an Uppercase Character");
		/* document.getElementById('signup-Password').value = ''
        document.getElementById('Re-type Password').value = '' */
		event.preventDefault();
	} else if (chkLower != true) {
		alert(" Password Must contain an Lowercase Character ");

		event.preventDefault();
	} else if (chkNum != true) {
		alert("Password Must contain a Number");

		event.preventDefault();
	} else if (password !== confirmPassword) {
		alert("Passwords do not match. Please try again.");
		event.preventDefault(); // Prevent the form from submitting
	} else {
		//pass
	}
}

