// Description: "Lego-compatible grid beam"
// Project home: http://bitbeam.org

// Each bitbeam is 8mm inches wide. 
// Center of each hole is 8mm apart from each other
// Holes are 5.1 mm in diameter.

beam_width = 8;
hole_diameter = 5.1;
hole_radius = hole_diameter / 2;

module beam(number_of_holes) {
    beam_length = number_of_holes * 8;
    // Cut the holes...
    for (x=[4 : 8 : beam_length]) {
        translate([x,4,-2])
		 cylinder(r=hole_radius, h=10, $fn=30);
    }
}

// Uncomment 'projection' to create 2D (DXF-able) version
//projection(cut=true) {
	difference(){
		cube([11*beam_width,2*beam_width,beam_width/2]);
		
		beam(11);

		translate([8*4,8,0])
		beam(3);

        translate([-1,8,-1])
	    cube([4*beam_width+1,2*beam_width,beam_width/2+2]);

        translate([8*7,8,-1])
	    cube([4*beam_width+1,2*beam_width,beam_width/2+2]);
	}
//}