



$("document").ready(function(){
    $("#prov").click(function(){
                $.ajax({
                dataType: 'json',
                url:"RechercheServlet",
                success: function(res){
                   
                                        $.each(res, function( i ) {
                                        var s = res[i].nomMarque ;
                                        document.getElementById("input_prov").innerHTML += "<input name='popupProv' id='input_prov' value="+s+" onclick='hideElements(this.id, this.name, this.value)'>";
                                                                            });}
                
                //document.getElementById("input_prov").innerHTML += "<input name='popupProv' id='input_prov' value='test' onclick='hideElements(this.id, this.name, this.value)'>";
                });
        //document.getElementById("input_prov").innerHTML += "<input name='popupProv' id='input_prov' value='test' onclick='hideElements(this.id, this.name, this.value)'>";
        //alert("toto"); onclick='hideElements(this.id, this.name, this.value)'
    });
});



function hideElements(elemId,elemName,elemValue){
    if (elemId === 'input_prov') elemId = 'prov';
    
    document.getElementById(elemId).value = elemValue;
    
    var x = document.getElementsByName(elemName);
    for(var i=0; x.length; i++){
        x[i].setAttribute('type', 'hidden');
    }
    
}