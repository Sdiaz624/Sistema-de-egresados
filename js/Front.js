/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function mostrarTab(tab1, tab2, tab3,li1,li2,li3) {

    document.getElementById(tab1).style.display = "block";
    document.getElementById(tab2).style.display = "none";
    document.getElementById(tab3).style.display = "none";
    document.getElementById(li1).className="active";
    document.getElementById(li2).className="";
    document.getElementById(li3).className="";
}


