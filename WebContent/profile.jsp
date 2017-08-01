<html lang = "en">

	<head>
	<title>Pictogram - Profile</title>
	<link rel = "shortcut icon" href = "http://cliparts.co/cliparts/rij/rpj/rijrpj4rT.png">
	<script src = "js/jquery-3.2.1.js"></script>
	<script src = "js/homeScript.js"></script>
	<style>
	html, body {
		background-color: #E5E5E5;
	}
	
	a {
		text-decoration: none;
	}
	
	::-webkit-scrollbar {
		width: 5px;
		background-color: transparent;
	}

	::-webkit-scrollbar-track {
		-webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3); 
		background-color: transparent;
	}

	::-webkit-scrollbar-thumb {
		-webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.5); 
		background-color: transparent;
	}

	::-webkit-scrollbar-thumb:window-inactive {
		background: rgba(255,0,0,0.4); 
		background-color: transparent;
	}
	
	#headerFormat {
		position: fixed;
		right: 0;
		top: 0;
		width: 100%;
		height: 90px;
		border-bottom: 1px solid #e8e8e8;
		background-color: #FBFBFB;
		z-index: 1;
	}

	#header {
		position: relative;
		right: 80;
		top: 3;
		width: 100%;
		height: 50px;
	}
	
	#icon{
		position: relative;
		left: 25%;
		top: 25;
		height: 40px;
		vertical-align: middle;
	}

	#search{
		position: relative;
		left: 35%;
		top: 20;
		width: 380px;   
		height: 30px;
		font-size: 15px;
		text-align: center;
		text-indent: 0px;
		border-top: 0;
		border-left: 0;
		border-right: 0;
		border-bottom: 2px solid #C5C0C0;
		outline: none;
		font-family: Myriad Pro;
		background-color: transparent;
	}
	
	#search:hover, #search:focus {
		border-bottom: 2px solid #454545;
	}
	
	#getProfile {
		position: relative;
		left: 45%;
		top: 20;
		width: 100;
		height: 30;
		border: none;
		background-color: #6D6D6D;
		color: #FBFBFB;
		font-family: Myriad Pro;
	}
	
	#getProfile:hover {
		background-color: #454545;
		cursor: pointer;
		transition: all .15s ease-in-out;
	}
	
	#logout {
		position: relative;
		left: 47%;
		top: 22;
		border: none;
		background-color: transparent;
		color: #6D6D6D;
		font-family: Myriad Pro;
		font-size: 16px;
	}
	
	#logout:hover {
		color: #454545;
		cursor: pointer;
		transition: all .15s ease-in-out;
	}
	
	#articleFormat {
		position: absolute;
		top: 51;
		right: 0;
		width: 100%;
	}

	#article {
		position: relative;
		top: 100;
	}
	
	#articleProfile {
		position: relative;
		width: 47%;
		left: 390;
	}
	
	.dp {
		position: relative;
		margin-top: 20;
		margin-left: 20;
		padding: 1px;
		vertical-align: middle;
		width: 22%;
		height: 20%;
		border-radius: 100px;
	}
	
	.username {
		position: relative;
		font-family: Myriad Pro;
		font-size: 25px;
		color: #454545;
		bottom: 50;
		left: 100;
	}
	
	#editProfile {
		position: relative;
		left: 17%;
		bottom: 60;
		width: 100;
		height: 30;
		border: none;
		background-color: #6D6D6D;
		color: #FBFBFB;
		font-family: Myriad Pro;
		border-radius: 2px;
	}
	
	#editProfile:hover {
		background-color: #454545;
		cursor: pointer;
		transition: all .15s ease-in-out;
	}
	
	.profile-stats {
		position: relative;
		display: inline-block;
		right: 120;
		bottom: 5;
	}
	
	#profile-post {
		font-family: Myriad Pro;
		font-size: 16px;
		color: #454545;
		padding-left: 10;
		padding-bottom: 3;
		padding-right: 40;
		display: inline-block;
		
	}

	#profile-followers {
		font-family: Myriad Pro;
		font-size: 16px;
		color: #454545;
		padding-left: 10;
		padding-bottom: 3;
		padding-right: 40;
		display: inline-block;
	}

	#profile-following {
		font-family: Myriad Pro;
		font-size: 16px;
		color: #454545;
		padding-left: 10;
		padding-bottom: 3;
		padding-right: 5;
		display: inline-block;
	}
	
	#description {
		position: relative;
		font-family: Myriad Pro;
		font-size: 13px;
		color: #454545;
		wdith: 10%;
		bottom: 60;
		margin-left: 282;
		margin-bottom: 10;
	}
	
	#myPhotos {
		position: relative;
		width: 75%;
		height: auto;
		left: 210;
		margin-bottom: 20;
	}
	
	.postPic{
		width: 293px;
		height: 293px;
		position: relative;
		left: 75;
		padding-right: 20;
		padding-top: 20;
	}
	
	.postPic:hover {
		cursor: pointer;
		opacity: 0.5;
	}
	
	</style>
	</head>

	<body>
	<div id = "container">
		<div id = "headerFormat">
			<header id = "header">
				<a href = "home.jsp"><img id = "icon" src = "Assets/pictogramText.png"></a>
				<input type = "text" id = "search" placeholder = "Search tags" />
				<button id = "getProfile">${sessionScope.firstname } ${sessionScope.lastname }</button>
				<a href = "logout"><button id = "logout">Log Out</button></a>
			</header>
		</div>
		<div id = "articleFormat">
			<article id = "article">
				<div id = "articleProfile">
					<img src = "sample2.jpg" class = "dp"><span class = "username">${sessionScope.uname }</span>
					<a href = "#"><button id = "editProfile">Edit Profile</button></a>
					<div class = "profile-stats">
						<p id = "profile-post">0 posts</p>
						<p id = "profile-followers">0 followers</p>
						<p id = "profile-following">0 following</p>
					</div>
					<p id = "description">${sessionScope.description }</p>
				</div>	
				<div id = "myPhotos">
					<img src = "Assets/sample1.jpg" class = "postPic" id = "picP" onClick = "overlay()">
					<img src = "Assets/sample2.jpg" class = "postPic" id = "picP" onClick = "overlay()">
					<img src = "Assets/sample3.jpg" class = "postPic" id = "picP" onClick = "overlay()">
					<img src = "Assets/sample4.jpg" class = "postPic" id = "picP" onClick = "overlay()">
					<img src = "Assets/sample5.jpg" class = "postPic" id = "picP" onClick = "overlay()">
					<img src = "Assets/sample6.jpg" class = "postPic" id = "picP" onClick = "overlay()">
					<img src = "Assets/sample7.jpg" class = "postPic" id = "picP" onClick = "overlay()">
					<img src = "Assets/sample8.jpg" class = "postPic" id = "picP" onClick = "overlay()">
					<img src = "Assets/sample9.jpg" class = "postPic" id = "picP" onClick = "overlay()">
					<img src = "Assets/sample10.jpg" class = "postPic" id = "picP" onClick = "overlay()">
					<img src = "Assets/sample11.jpg" class = "postPic" id = "picP" onClick = "overlay()">
					<img src = "Assets/sample12.jpg" class = "postPic" id = "picP" onClick = "overlay()">
					<img src = "Assets/sample13.jpg" class = "postPic" id = "picP" onClick = "overlay()">
					<img src = "Assets/sample14.jpg" class = "postPic" id = "picP" onClick = "overlay()">
					<img src = "Assets/sample15.jpg" class = "postPic" id = "picP" onClick = "overlay()">
				</div>
			</article>
		</div>
	</div>
	</body>

</html>