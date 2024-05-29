/*
  Equerre de fixation des montants de l'axe Y
  Projets DIY - 02/20016 - http://www.projetsdiy.fr
  v1
*/

b = 25;  // Profondeur
h = 25;  // Hauteur
w = 15;  // largeur

// Extrusion du triangle
module triangle(){
    rotate(a=[90,0,0])
    linear_extrude(height = w, center = true, convexity = 10, twist = 0)
    polygon(points=[[0,0],[h,0],[0,b]], paths=[[0,1,2]]);
}

// Perçages
module trous(){
    translate([2,-w / 2 + 2,2]) cube([20,w - 4,20]);  
    translate([14,0,-2]) cylinder(r=1,h=10);
    translate([-2,0,14]) rotate([0,90,0]) cylinder(r=2.8,h=10);
    translate([-3,- w / 1.5,0]) rotate([0,45,0]) cube([4,w * 2,4]);
    
}    

// Assemblage de l'equerre
module equerre(){
  difference(){
    triangle();
    trous();
  } 
}   

// Lot d'équerres à imprimer
for (a=[0:40:40]){
    translate([a,0,0]) equerre();
    translate([a,40,0]) equerre();
}    