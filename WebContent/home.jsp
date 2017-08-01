<html lang = "en">

	<head>
	<title>Pictogram - Home</title>
	<link rel = "shortcut icon" href = "http://cliparts.co/cliparts/rij/rpj/rijrpj4rT.png">
	<script src = "js/jquery-3.2.1.js"></script>
	<script src = "js/homeScript.js"></script>
	<style>
	html, body {
		background-color: #E5E5E5;
	}
	
	.pictureB{
		position: relative;
		max-height: 500px;
		max-width: 900px;
		left: 3%;
	}
	
	.texts{
		position: relative;
		float:right;
		display: block;
		left: 170px;
	}
	
	.oDesc{
		
		color: white;
		font-size: 32px;
		
	}
	
	.oCaption{
		
		color: white;
		font-size: 24px;
		
	}
	
	.oTags{
		
		color: white;
		font-size: 16px;
	
	}
	
	.overlay{
	    top: 0;
	    bottom: 0;
	    position: fixed;
	    height: 98%;
	    width: 99%;
	    background-color: rgba(0,0,0,0.9);
	    z-index: 999;
	    align-items: center;
	    color: white;
	    display: flex;
	}
	
	#close{
	    position:fixed;
	    color: white;
	  	right: 5%;
	  	top: 5%;
	}
	
	body.noscroll{
	    position: fixed; 
	    overflow-y: scroll;
	    width: 100%;
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
		right: 90;
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
	}
	
	.feedPost{
		position: relative;
		top: 60;
		right: 10;
		background-color: #FBFBFB;
		border-style: solid;
		border-width: 0.01em;
		border-color: #ccc;
		border-radius: 2px;
		width: 40%;
		height: auto;
		margin: auto;
		margin-bottom: 20;
	}
	
	.dp {
		position: relative;
		margin-top: 20;
		margin-left: 20;
		padding: 1px;
		vertical-align: middle;
		width: 7%;
	}
	
	.title {
		position: relative;
		font-family: Myriad Pro;
		font-size: 18px;
		color: #353535;
		font-weight: bold;
		margin-left: 75;
		bottom: 25;
		width: 80%;
	}

	.name {
		position: relative;
		font-family: Myriad Pro;
		font-size: 14px;
		color: #353535;
		font-weight: bold;
		bottom: 5;
		margin-left: 9;
	}
	
	.name:hover {
		text-decoration: underline;
	}

	.postPic{
		width: 85%;
		position: relative;
		left: 75;
		bottom: 30;
		border-radius: 5px;
	}
	
	.postPic:hover {
		cursor: pointer;
	}

	.username {
		position: relative;
		font-family: Myriad Pro;
		font-size: 11px;
		color: #6D6D6D;
		bottom: 5;
		left: 10;
	}
	
	.username:hover {
		text-decoration: underline;
	}

	.caption {
		position: relative;
		font-family: Myriad Pro;
		font-size: 14px;
		color: #353535;
		left: 75;
		bottom: 40;
		width: 80%
	}
	
	.tags {
		width: 80%;
	}

	.tag {
		display: inline-block;
		color: #7D7777;
		font-family: Myriad Pro;
		font-size: 12px;
		position: relative;
		bottom: 25;
		left: 75;
	}
	
	.tag:hover {
		text-decoration: underline;
	}
	
	#footerFormat {
		position: fixed;
		right: 0;
		top: 665;
		width: 100%;
		height: 90px;
		border-bottom: 1px solid #e8e8e8;
		z-index: 1;
	}

	#footer {
		position: relative;
		width: 100%;
		height: 50px;
	}
	
	#uploadImg {
		position: fixed;
		width: 5%;
		float: right;
		right: 10;
		transition: all .30s ease-in-out;
	}
	
	#uploadImg:hover {
		opacity: 1.0;
		transition: all .30s ease-in-out;
	}
	
	.uploadMsg {
		position: fixed;
		float: right;
		bottom: 45;
		right: 125;
		font-family: Myriad Pro;
	}
	
	#close {
		cursor: pointer;
	}
	
	</style>
	</head>

	<body>
	<div id = "container">
		<div id = "headerFormat">
			<header id = "header">
				<a href = "home.jsp"><img id = "icon" src = "Assets/pictogramText.png"></a>
				<input type = "text" id = "search" placeholder = "Search tags" />
				<a href = "profile.jsp"><button id = "getProfile">${sessionScope.firstname } ${sessionScope.lastname }</button></a>
				<a href = "logout"><button id = "logout">Log Out</button></a>
			</header>
		</div>
		<div id = "articleFormat">
			<article id = "article">
				<div class = "feedPost"  onClick = "overlay(1)">
					<img src = "Assets/003-user.png" class = "dp"><a href = "#"><span class = "name">Zed Macalalad</span></a>
					<a href = "#"><span class = "username">@IMM_Zed</span></a>
					<p class = "caption">Beautiful Sunset!</p>
					<img src = "Assets/sample1.jpg" class = "postPic" id = "picP1">
					<p class = "title" id = "desc">Sunset at the beach</p>
					<div class = "tags">
						<a href = "#" class = "tag">#Boracay </a>
						<a href = "#" class = "tag">#Beach Day </a>
						<a href = "#" class = "tag">#Sunset </a>
					</div>
				</div>
				<div class = "feedPost"  onClick = "overlay(2)">
					<img src = "Assets/003-user.png" class = "dp"><a href = "#"><span class = "name">Zed Macalalad</span></a>
					<a href = "#"><span class = "username">@IMM_Zed</span></a>
					<p class = "caption">Balloons!</p>
					<img src = "Assets/sample2.jpg" class = "postPic" id = "picP2">
					<p class = "title">Balloon Strolling</p>
					<div class = "tags">
						<a href = "#" class = "tag">#Balloons </a>
						<a href = "#" class = "tag">#Sunny Day </a>
						<a href = "#" class = "tag">#Strolling </a>
						<a href = "#" class = "tag">#NoCare </a>
					</div>
				</div>
				<div class = "feedPost"  onClick = "overlay(3)">
					<img src = "Assets/003-user.png" class = "dp"><a href = "#"><span class = "name">Zed Macalalad</span></a>
					<a href = "#"><span class = "username">@IMM_Zed</span></a>
					<p class = "caption">So much sample, so amaze, such sampleness, much wow!</p>
					<img src = "Assets/sample3.jpg" class = "postPic" id = "picP3">
					<p class = "title">Sample Pic</p>
					<div class = "tags">
						<a href = "#" class = "tag">#Sample </a>
		                <a href = "#" class = "tag">#Waow </a>
		                <a href = "#" class = "tag">#Amazeballs </a>
		                <a href = "#" class = "tag">#Doge </a>
					</div>
				</div>
				<div class = "feedPost"  onClick = "overlay(4)">
					<img src = "Assets/003-user.png" class = "dp"><a href = "#"><span class = "name">Zed Macalalad</span></a>
					<a href = "#"><span class = "username">@IMM_Zed</span></a>
					<p class = "caption">Chilling with my wheat.</p>
					<img src = "Assets/sample4.jpg" class = "postPic" id = "picP4">
					<p class = "title">Chill Wheat</p>
					<div class = "tags">
						<a href = "#" class = "tag">#Wheat </a>
		                <a href = "#" class = "tag">#Chill </a>
		                <a href = "#" class = "tag">#Afternoon </a>
		                <a href = "#" class = "tag">#NoCare </a>
		                <a href = "#" class = "tag">#background </a>
					</div>
				</div>
				<div class = "feedPost"  onClick = "overlay(5)">
					<img src = "Assets/003-user.png" class = "dp"><a href = "#"><span class = "name">Zed Macalalad</span></a>
					<a href = "#"><span class = "username">@IMM_Zed</span></a>
					<p class = "caption">Glad to see Big Ben!</p>
					<img src = "Assets/sample5.jpg" class = "postPic" id = "picP5">
					<p class = "title">London, England</p>
					<div class = "tags">
						<a href = "#" class = "tag">#Big Ben </a>
		                <a href = "#" class = "tag">#Lights </a>
		                <a href = "#" class = "tag">#London </a>
		                <a href = "#" class = "tag">#background </a>
					</div>
				</div>
				<div class = "feedPost" onClick = "overlay(6)">
					<img src = "Assets/003-user.png" class = "dp"><a href = "#"><span class = "name">Zed Macalalad</span></a>
					<a href = "#"><span class = "username">@IMM_Zed</span></a>
					<p class = "caption">Away from the city, enjoy the nature.</p>
					<img src = "Assets/sample6.jpg" class = "postPic" id = "picP6" >
					<p class = "title">Peaceful Driving</p>
					<div class = "tags">
						<a href = "#" class = "tag">#Nature </a>
		                <a href = "#" class = "tag">#Stress Free </a>
		                <a href = "#" class = "tag">#Chill </a>
		                <a href = "#" class = "tag">#Afternoon </a>
		                <a href = "#" class = "tag">#Drive </a>
					</div>
				</div>
				<div class = "feedPost" onClick = "overlay(7)">
					<img src = "Assets/003-user.png" class = "dp"><a href = "#"><span class = "name">Zed Macalalad</span></a>
					<a href = "#"><span class = "username">@IMM_Zed</span></a>
					<p class = "caption">Pretty flowers.</p>
					<img src = "Assets/sample7.jpg" class = "postPic" id = "picP7" >
					<p class = "title">Pink Flowers</p>
					<div class = "tags">
						<a href = "#" class = "tag">#Pink </a>
		                <a href = "#" class = "tag">#Violet </a>
		                <a href = "#" class = "tag">#Nature </a>
					</div>
				</div>
				<div class = "feedPost" onClick = "overlay(8)">
					<img src = "Assets/003-user.png" class = "dp"><a href = "#"><span class = "name">Zed Macalalad</span></a>
					<a href = "#"><span class = "username">@IMM_Zed</span></a>
					<p class = "caption">Shadow-like trees! Cool!</p>
					<img src = "Assets/sample8.jpg" class = "postPic" id = "picP8" >
					<p class = "title">Shadow Trees</p>
					<div class = "tags">
						<a href = "#" class = "tag">#Shadows </a>
		                <a href = "#" class = "tag">#Sunset </a>
		                <a href = "#" class = "tag">#background </a>
		                <a href = "#" class = "tag">#Palm </a>
		                <a href = "#" class = "tag">#Trees </a>
					</div>
				</div>
				<div class = "feedPost" onClick = "overlay(9)">
					<img src = "Assets/003-user.png" class = "dp"><a href = "#"><span class = "name">Zed Macalalad</span></a>
					<a href = "#"><span class = "username">@IMM_Zed</span></a>
					<p class = "caption">Resting under the sun beneath the tree.</p>
					<img src = "Assets/sample9.jpg" class = "postPic" id = "picP9" >
					<p class = "title">Tree Shade</p>
					<div class = "tags">
						<a href = "#" class = "tag">#Trees </a>
		                <a href = "#" class = "tag">#Chilling </a>
		                <a href = "#" class = "tag">#Sun </a>
		                <a href = "#" class = "tag">#Shade </a>
					</div>
				</div>
				<div class = "feedPost"  onClick = "overlay(10)">
					<img src = "Assets/003-user.png" class = "dp"><a href = "#"><span class = "name">Zed Macalalad</span></a>
					<a href = "#"><span class = "username">@IMM_Zed</span></a>
					<p class = "caption">Street blur at night.</p>
					<img src = "Assets/sample10.jpg" class = "postPic" id = "picP10">
					<p class = "title">Blurs</p>
					<div class = "tags">
						<a href = "#" class = "tag">#blur </a>
		                <a href = "#" class = "tag">#background </a>
		                <a href = "#" class = "tag">#busystreets </a>
		                <a href = "#" class = "tag">#almostnight </a>
					</div>
				</div>
				<div class = "feedPost" onClick = "overlay(11)">
					<img src = "Assets/003-user.png" class = "dp"><a href = "#"><span class = "name">Zed Macalalad</span></a>
					<a href = "#"><span class = "username">@IMM_Zed</span></a>
					<p class = "caption">Unique water under the sunset.</p>
					<img src = "Assets/sample11.jpg" class = "postPic" id = "picP11" >
					<p class = "title">Ocean Background</p>
					<div class = "tags">
						<a href = "#" class = "tag">#background </a>
		                <a href = "#" class = "tag">#uniquewater </a>
		                <a href = "#" class = "tag">#Rocky </a>
		                <a href = "#" class = "tag">#Sunset </a>
					</div>
				</div>
				<div class = "feedPost" onClick = "overlay(12)">
					<img src = "Assets/003-user.png" class = "dp"><a href = "#"><span class = "name">Zed Macalalad</span></a>
					<a href = "#"><span class = "username">@IMM_Zed</span></a>
					<p class = "caption">Beautiful scenery from the ocean!</p>
					<img src = "Assets/sample12.jpg" class = "postPic" id = "picP12" >
					<p class = "title">Island Background</p>
					<div class = "tags">
						<a href = "#" class = "tag">#island </a>
		                <a href = "#" class = "tag">#background </a>
		                <a href = "#" class = "tag">#Shadows </a>
		                <a href = "#" class = "tag">#almostsunrise </a>
					</div>
				</div>
				<div class = "feedPost" onClick = "overlay(13)">
					<img src = "Assets/003-user.png" class = "dp"><a href = "#"><span class = "name">Zed Macalalad</span></a>
					<a href = "#"><span class = "username">@IMM_Zed</span></a>
					<p class = "caption">Summer time beach fun!</p>
					<img src = "Assets/sample13.jpg" class = "postPic" id = "picP13" >
					<p class = "title">Summer Beach</p>
					<div class = "tags">
						<a href = "#" class = "tag">#Summer </a>
                		<a href = "#" class = "tag">#Sunny Day </a>
					</div>
				</div>
				<div class = "feedPost" onClick = "overlay(14)">
					<img src = "Assets/003-user.png" class = "dp"><a href = "#"><span class = "name">Zed Macalalad</span></a>
					<a href = "#"><span class = "username">@IMM_Zed</span></a>
					<p class = "caption">Let it snow, let it snow!</p>
					<img src = "Assets/sample14.jpg" class = "postPic" id = "picP14">
					<p class = "title">Almost Christmas!!</p>
					<div class = "tags">
						<a href = "#" class = "tag">#Snow </a>
		                <a href = "#" class = "tag">#HBD Jesus </a>
		                <a href = "#" class = "tag">#Trees </a>
					</div>
				</div>
				<div class = "feedPost" onClick = "overlay(15)">
					<img src = "Assets/003-user.png" class = "dp"><a href = "#"><span class = "name">Zed Macalalad</span></a>
					<a href = "#"><span class = "username">@IMM_Zed</span></a>
					<p class = "caption">Quiet City!</p>
					<img src = "Assets/sample15.jpg" class = "postPic" id = "picP15">
					<p class = "title">City landscape</p>
					<div class = "tags">
						<a href = "#" class = "tag">#City </a>
		                <a href = "#" class = "tag">#Shadows </a>
		                <a href = "#" class = "tag">#NightandDay </a>
		                <a href = "#" class = "tag">#Busy </a>
					</div>
				</div>
			</article>
		</div>
		<div id = "footerFormat">
			<footer id = "footer">
				<a href = "upload.jsp"><img src = "Assets/001-plus.png" id = "uploadImg" onmouseover = "reveal()" onmouseout = "removeReveal()"></a>
			</footer>
		</div>
	</div>
	</body>

</html>