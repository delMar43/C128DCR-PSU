$fn=15;

//translate([0,0,1]) rueckwand();
//baseplate();
//translate([15,0,-10]) leiste(); //leiste

translate([-200,0,0]) dc_podest();

//translate([120,-120,0]) coil_holder();

module dc_podest() {
	difference() {
    cube([139,110,5],center=false); //DC-podest
	  translate([10,13,-1]) cylinder(h=7,d=5,center=false);
	  translate([132,98,-1]) cylinder(h=7,d=5,center=false);
  }
}

module baseplate() {
	cube([210,145,1],center=false); //bodenplatte
	translate([1,144,0])  cube([209,1,10],center=false); //seitenwand
	translate([209,0,0]) cube([1,145,10],center=false); //vorderwand
	translate([1,0,1]) cube([5,144,5],center=false); //stabilisator
}

module coil_holder() {
  difference() {
	  cube([72,50,6],center=false);
    translate([12,12,1]) cube([49,26,7],center=false);
	}
}

module rueckwand() {
//  translate([1,0,0]) cube([10,1,60],center=false);
//  translate([1,1,0]) cube([5,2,60],center=false);
  difference() {
		translate([-4,0,0]) cube([5,160,60],center=false);
		
		translate([-5,6,22]) cube([7,12,27],center=false);
		translate([-5,3,19]) cube([5,18,34],center=false);

		translate([-5,35,22]) cube([7,27,20],center=false);
		#translate([-5,32,19]) cube([5,33,27],center=false);
		
		translate([-5,154,21]) rotate([0,90,0]) cylinder(h=7,d=5,center=false);
    translate([-5,154,52]) rotate([0,90,0]) cylinder(h=7,d=5,center=false);
  }
}

module leiste() {
	difference() {
		cube([195,5,10]);
		translate([6,6,6]) rotate([90,0,0]) cylinder(h=7,d=4,center=false);
		translate([176,6,6]) rotate([90,0,0]) cylinder(h=7,d=4,center=false);
	}

}