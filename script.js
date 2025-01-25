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


// ms-5

let item = document.getElementsByClassName("item");
for (let index = 0; index < item.length; index++) {
	item[index].querySelector("img").addEventListener("mouseover", (event) => {
		item[index].querySelector(".inner-text").style.transition = "all 0.3s";
		item[index].querySelector(".inner-text").style.bottom = "-15vh";
		item[index].querySelector(".inner-text").style.visibility = "hidden";
		item[index].querySelector(".inner-text").style.opacity = "0";
	});
	item[index].addEventListener("mouseout", (event) => {
		item[index].querySelector(".inner-text").style.bottom = "8vh";
		item[index].querySelector(".inner-text").style.visibility = "visible";
		item[index].querySelector(".inner-text").style.opacity = "1";
	});
}


//ms-1 block2
function activity1(){
	window.location.href = "EmergencyAmbulance.jsp";
}

function activity2(){
	window.location.href = "childHelplineForm.jsp";
}

function activity3(){
	window.location.href = "womenHelpline.jsp";
}

//footer
function contactus(){
	window.location.href = "contactUs.jsp";
}