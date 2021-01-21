document.addEventListener('DOMContentLoaded', () => {

let link = document.querySelector("#termsAndConditions");

let modal = document.querySelector("#myModal");

let span = document.querySelector(".close");


link.addEventListener("click", function () {
	 modal.style.display = "block";
});	


span.addEventListener("click", function (){
	modal.style.display = "none";
});

});