// NodeBot Head 

// License: BSD 2-Clause
/*
Copyright (c) 2013, Jason R. Huggins
All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/


// Measurements from: http://www.servocity.com/html/hs-311_standard.html
// Original:
//A = 19.82;
// Tweaked to allow for more clearance:
A = 20.5;
B = 13.47;
C = 33.79;
D = 10.17;
E =  9.66;
F = 30.22;
G = 11.68;
H = 26.67;
// Original:
//J = 52.84;
// Tweaked to allow for more clearance:
J = 54;
K =  9.35;
L =  4.38;
// Original:
//M = 39.88;
// Tweaked to allow for more clearance:
M = 41;
X =  3.05;

servo_width = A;
sero_depth = M;
servo_height = H+K;
head_width = 52.84+23;
head_scale = .75;

module servo() {
    union() {
        // Main housing
        cube([servo_width, sero_depth, servo_height]);
        
        // Mounting holes flange
        translate([0, -(J-sero_depth)/2, H])
        cube([servo_width, J, 2.5]);
    }
}

// Attribution: Julien Deveaux, from The Noun Project
// http://thenounproject.com/noun/robot/#icon-No6865
module nodebot_head(){
    difference(){
        scale([head_scale,head_scale,head_scale]){
            difference() {
                union() {
                    cube(size = [81.413,head_width,32.043]);
                    
                    translate([22.6/2,0,0])
                    cube(size = [81.413-22.6,head_width,32.043+22.6/2]);
                    
                    rotate([90,0,0])
                    translate([22.6/2,32.043,-head_width])
                    cylinder(h = head_width, r=22.6/2, $fn=50);
                    
                    rotate([90,0,0])
                    translate([81.413-22.6/2,32.043,-head_width])
                    cylinder(h = head_width, r=22.6/2, $fn=50);
                }
                
                rotate([90,0,0])
                translate([22.6,25.150,-5])
                cylinder(h = 10, r=14.8/2, $fn=50);
                
                rotate([90,0,0])
                translate([81.413-22.6,25.150,-5])
                cylinder(h = 10, r=14.8/2, $fn=50);
                
                translate([(81.413-8.5)/2,head_width-12,-2])
                cube(size = [8.5,16,38.9]);
            }
        }

        rotate([0,180,0])
        translate([-81.413/2*head_scale-A/2,8,-H-2])
        servo();
    }
}

rotate([0,180,0])
nodebot_head();