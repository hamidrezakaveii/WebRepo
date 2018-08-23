$('document').ready(maFunction);
var count = 0; 

function maFunction(){

if(count == 1){
$("button").click(
    function(){
         $("p").hide();
         count = 1;
     }
             );
}
else{
    $("button").click(
    function(){
         $("p").toggle();
         count = 0;
         
     }
             );
}
}

function cacher() {
    $('#p1').hide();
}

            