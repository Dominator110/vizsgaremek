// Sport menü elrejtése
$("#sportnavbar").hide();
//sport menu megjelenítése és a töbi elrejtése
$("#sport").click(function(){
    $("#egeszsegmenu").hide();
    $("#Politikamenu").hide();
    $("#Hirekmenu").hide();
    $("#kulturalismenu").hide();
    $("#sportnavbar").toggle();
})
// Hirek menü elrejtése
 $("#Hirekmenu").hide();
 //sport menu megjelenítése és a töbi elrejtése
 $("#hirek").click(function(){
    $("#egeszsegmenu").hide();
    $("#Politikamenu").hide();
    $("#sportnavbar").hide();
    $("#kulturalismenu").hide();
     $("#Hirekmenu").toggle();  
 })
// Politika menü elrejtése
 $("#Politikamenu").hide();
 //Politika menu megjelenítése és a töbi elrejtése
 $("#politika").click(function(){
    $("#egeszsegmenu").hide();
    $("#Hirekmenu").hide();
    $("#sportnavbar").hide();
    $("#kulturalismenu").hide();
     $("#Politikamenu").toggle();  
 })
 // Egészség menü elrejtése
 $("#egeszsegmenu").hide();
 //Egészség menu megjelenítése és a töbi elrejtése
 $("#egeszseg").click(function(){
    $("#Hirekmenu").hide();
    $("#Politikamenu").hide();
    $("#sportnavbar").hide();
    $("#kulturalismenu").hide();
     $("#egeszsegmenu").toggle();  
 })
 // Kultura menü elrejtése
 $("#kulturalismenu").hide();
 //Kultura menu megjelenítése és a töbi elrejtése
 $("#kulturalis").click(function(){
    $("#egeszsegmenu").hide();
    $("#Hirekmenu").hide();
    $("#Politikamenu").hide();
    $("#sportnavbar").hide();
     $("#kulturalismenu").toggle();  
 })




