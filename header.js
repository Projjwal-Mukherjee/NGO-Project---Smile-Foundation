const menu = document.getElementById("menu");
const navbarMenu = document.getElementById("navbar-menu");

const body = document.getElementById("body");

navbarMenu.style.visibility = "hidden";
let f = 0;
menu.addEventListener("click", (event) => {
	event.preventDefault();
	if (f == 1) {
		navbarMenu.style.visibility = "hidden"; /* NAVBAR-MENU */
		body.style.height = "fit-content";
		body.style.overflow = "scroll";

		f = 0;
	} else {
		navbarMenu.style.visibility = "visible"; /* NAVBAR-MENU */
		body.style.height = "80vh";
		body.style.overflowY = "hidden";

		f = 1;
	}
});


//footer
function contactus(){
	window.location.href = "contactUs.jsp";
}


function donateAmount(){
	window.location.href = "Donation/qrCode.jsp";
}
		