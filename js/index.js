function loadAbout(){
  about = document.getElementById('about');
  about.style.visible = "true";
    about.innerHTML = "This website is to view my progress in the gym over a period of time.<br><br>" +
	"I have used what I have learnt in my Introduction to R class to be able to build this project, an this is a display of some things I have learnt throughout the quarter.";
}

function loadSkills(){
  about = document.getElementById('about');
  about.innerHTML = "<iframe src=\"skills.html\", frameBorder=\"0\" style=\"border:0;border-radius: 25px\" width=\"500\", height=\"800\", scrolling=\"no\"></iframe>";
}
