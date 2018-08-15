/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var myObj = {"name": "hami", "job": "student"};

function afficher() {
    for (x in myObj) {
        document.getElementById("demo").innerHTML += myObj[x];
    }
}


