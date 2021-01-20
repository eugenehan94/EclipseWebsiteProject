document.addEventListener('DOMContentLoaded', () => {

let link = document.querySelector("#termsAndConditions");

let modal = document.querySelector("#myModal");

let span = document.querySelector(".close");

console.log(link);
console.log(modal);
console.log(span);


link.addEventListener("click", function () {
	 modal.style.display = "block";
});	


span.addEventListener("click", function (){
	modal.style.display = "none";
});

});