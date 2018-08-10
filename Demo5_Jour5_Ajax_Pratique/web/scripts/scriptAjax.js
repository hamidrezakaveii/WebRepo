/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function initRequest(){
    if (window.XMLHttpRequest){
        if (navigator.userAgent.indexOf('MSIE') != -1){
            isIE = true;
        }
        return new XMLHttpRequest();
    } else if (window.ActiveXObject){
        isIE = true;
        return new ActiveXObject("Microsoft.XMLHTTP");
    }
        
}

var requete;

function calculer()
{
    //requete = new XMLHttpRequest();
    requete = initRequest();
    url = "ConvertirTemp?vtc="+document.maForm.vtc.value;
    requete.open("GET",url,true);
    requete.onreadystatechange = afficher;
    requete.send(null);
}

function afficher()
{
    if((requete.readyState == 4) && (requete.status == 200))
    {
    alert(requete.responseText);
    document.maForm.resultat.value = requete.responseText;
    document.getElementById("res").innerHTML = requete.responseText;
    }
}


