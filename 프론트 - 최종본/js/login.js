const loginForm = document.querySelector("#loginForm");


function loginSubmit(event){
	const loginIDInput = document.getElementById("idInput").value;
	const loginPasswordInput = document.getElementById("passwordInput").value;
  	
  	event.preventDefault();
  	
	  if (loginIDInput == ""){
	          alert("아이디를 입력하세요.");
	          return;
	  }
	  if (loginIDInput.length < 4 || loginIDInput.length > 12){
	    alert("아이디는 4~12자 이내로 입력하세요."); 
	    return;
	  }
	  if (!isNaN(loginIDInput.substr(0,1))){
	          alert("아이디는 숫자로 시작할 수 없습니다.");
	          return;
	    }

    if (loginPasswordInput == "")    {
          alert("패스워드를 입력하세요.");
          return;
    }
   	if (loginPasswordInput.length < 4 || loginPasswordInput.length > 12)	{
          alert("비밀번호는 4~12자 이내로 입력하세요.");
          return;
    }
    loginForm.submit();
    window.location.href = "index.html"

}

loginForm.addEventListener("submit", loginSubmit)