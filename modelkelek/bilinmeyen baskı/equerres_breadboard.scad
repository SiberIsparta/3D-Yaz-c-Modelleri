/*
  Equerre de fixation du breadboard
  Projets DIY - 02/20016 - http://www.projetsdiy.fr
  v1
*/

module equerre(){
    difference(){
        color("Orange") cube([14,7,2]);
    }
    translate([12,0,0]) color("Orange") cube([2,7,11.5]);
    translate([12,0,11.5 - 2]) color("Orange") cube([5,7,2]);
}

// 4 Equerres
for (a=[0:15:45]){
   translate([0,a,0]) rotate([90,0,0]) equerre();
}    