<html lang = "en">

	<head>
	<title>Pictogram</title>
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
		top: 3;
		width: 100%;
	}
			
	.editButton {
		position: relative;
		top: 50;
		left: 45.7%;
		width: 120px;
		height: 30px;
		background-color: #EEEEEE;
		padding-top: 10px;
		color: #353535;
		border-style: none;
		font-family: Myriad Pro, Sans-serif;
		font-weight: bold;
		font-size: 15px;
		transition: all .15s ease-in-out;
		appearance: button;
	    -webkit-appearance: button;
	    text-align: center;
	    border: 2px outset buttonface;
	}
		
	.editButton:hover {
		cursor: pointer;
	}
	
	#imgInp {
		display: none;
	}
	
	#blah {
		position: relative;
		height: 45%;
		width: 25%;
		top: 100;
		left: 37.5%;
	}
		
	#title {
		position: relative;
		left: 150;
		top: 140;
		height: 35px;
		width: 30%;
		font-size: 16px;
		border-top: 0;
		border-left: 0;
		border-right: 0;
		border-bottom: 1px solid #353535;
		background-color: transparent;
		color: #353535;
		font-family: Myriad Pro, Sans-serif;
		outline: none;
		font-weight: bold;
		text-align: center;
		transition: all .15s ease-in-out;
	}
		
	#tags {
		position: relative;
		left: 150;
		top: 190;
		height: 35px;
		width: 78%;
		font-size: 16px;
		border-top: 0;
		border-left: 0;
		border-right: 0;
		border-bottom: 1px solid #353535;
		background-color: transparent;
		color: #353535;
		font-family: Myriad Pro, Sans-serif;
		outline: none;
		font-weight: bold;
		resize: none;
		transition: all .15s ease-in-out;
	}
			
	#tags:focus {
		border-top: 0;
		border-left: 0;
		border-right: 0;
		border-bottom: 1px solid #353535;
		outline:0px !important;
		transition: all .15s ease-in-out;
	}
		
	#description {
		position: relative;
		left: 150;
		top: 170;
		height: 35px;
		width: 78%;
		font-size: 16px;
		border-top: 0;
		border-left: 0;
		border-right: 0;
		border-bottom: 1px solid #353535;
		background-color: transparent;
		color: #353535;
		font-family: Myriad Pro, Sans-serif;
		outline: none;
		font-weight: bold;
		resize: none;
		transition: all .15s ease-in-out;
	}
			
	#description:focus {
		border-top: 0;
		border-left: 0;
		border-right: 0;
		border-bottom: 1px solid #353535;
		outline: 0px !important;
		transition: all .15s ease-in-out;
	}
		
	#upload {
		position: relative;
		left: 150;
		top: 210;
		width: 90px;
		height: 35px;
		background-color: #353535;
		color: #F8F7F7;
		border: none;
		font-family: Myriad Pro, Sans-serif;
		font-weight: bold;
		font-size: 15px;
		transition: all .15s ease-in-out;
	}
			
	#upload:hover {
		background-color: #454545;
		cursor: pointer;
		transition: all .15s ease-in-out;
	}
		
	#can {
		position: relative;
		left: 160;
		top: 210;
		width: 90px;
		height: 35px;
		background-color: #353535;
		color: #F8F7F7;
		font-size: 15px;
		font-weight: bold;
		border: none;
		font-family: Myriad Pro, Sans-serif;
		transition: all .15s ease-in-out;
		margin-bottom: 20;
	}
		
	#can:hover {
		background-color: #454545;
		cursor: pointer;
		transition: all .15s ease-in-out;
	}
	
	</style>
	</head>

	<body>
	<div id = "container">
		<div id = "headerFormat">
			<header id = "header">
				<a href = "home.jsp"><img id = "icon" src = "Assets/pictogramText.png"></a>
				<input type = "text" id = "search" placeholder = "Search tags" />
				<a href = "profile.jsp"><button id = "getProfile">Zed Macalalad</button></a>
				<a href = "logout"><button id = "logout">Log Out</button></a>
			</header>
		</div>
		<div id = "articleFormat">
			<article id = "article">
				<form action = "upload" method = "POST">
					<input type = "file" id = "imgInp" class = "picker" onChange="readURL(this)" accept = "image/tiff, image/jpeg, image/x-png, image/jpg" name = "imageFile"/>
					<label for = "imgInp" class = "editButton">Choose Photo</label><br>
					<img src ="Assets/picture.png" id = "blah" alt = "your image" />
					<input type = "text" placeholder = "Title" id = "title" name = "imageTitle" />
					<textarea id = "description" placeholder = "Description" name = "imageDesc"></textarea> <br>
					<textarea id = "tags" placeholder = "Tags" name = "imageTags"></textarea> <br>
					<input type = "submit" id = "upload" value = "Upload" onClick = "storePic()" />
					<a href = "home.jsp"><button id = "can">Cancel</button></a>
				</form>
			</article>
		</div>
	</div>
	</body>

</html>