function overlay(x){
    startYOffSet = $("#container").width();
    
    console.log(x);
    
    var string = "picP" + x;
    
    console.log(string);
    
    var imgS = document.getElementById(string);
    var imgSrc = imgS.getAttribute("src");
    var imgDesc = document.getElementsByClassName("title");
    var tags = document.getElementsByClassName("tags");
    var caption = document.getElementsByClassName("caption");
    var index = x - 1;
    console.log(caption[index].textContent);
    console.log(tags[x-1].textContent);
    console.log(imgDesc[x].textContent);
    console.log(imgSrc);

    $('#container').addClass('noscroll');
    $("#container").append("<div class = 'overlay' id = 'oLay'><img src = "+imgSrc+" class = 'pictureB'><div class = 'texts'><div class = 'oDesc'><b>"+imgDesc[index].textContent+"</b></div><div class = 'oCaption'>"+caption[index].textContent+"</div><div class = 'oTags'>"+tags[index].textContent+"</div></div><a id = 'close' onClick = 'closeOLay()'>X</div>");
}


function reveal() {
    var reveal;
    $("#footer").append("<div class = 'uploadMsg' id = 'msg'>Upload a photo</div>");
}

function closeOLay(){
    var oLay = document.getElementById("oLay");
    endYOffSet = document.getElementById("oLay").style.width;
    
    var newOffSet = endYOffSet - startYOffSet;
    
    oLay.remove();
    
    $('#container').removeClass('noscroll');
    $('#container').css("padding-right", newOffSet);
}

function removeReveal(){
    var toRemove = document.getElementById("msg");
    toRemove.remove();
}

function readURL(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e) {
            $("#blah").attr("src", e.target.result);
        }

        reader.readAsDataURL(input.files[0]);
    }
}

function storePic(){
    var url = $("#imgInp").val();
    localStorage.setItem("src", url);
}

function getPic(){
	var tag = document.getElementsByTagName("img");
	var img = tag?tag[tag.length-1]:0;
	if(img)
		img.src = localStorage.getItem("src");
}