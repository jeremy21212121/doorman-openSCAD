intersection() {
    difference() {
        union() {
            difference() {
                
                // outside tapered cylinder shell
                cylinder(h=48,r1=23,r2=26.5,center=true);
                
                // the hollow center
                cylinder(h=44,r1=22,r2=25.5,center=true);
                
                translate([0,0,-23]) {
                    // rear z-axis hole
                    cylinder(h=2,r=19,center=true);
                    }
                    
                translate([0,0,23]) {
                    // front z-axis hole
                    cylinder(h=2,r=18,center=true);
                    }
            }
            
            // standoffs for mounting stepper motor
            translate([9,19,30]) {
                
                cylinder(h=12,r=3,center=true);
                }
                
            translate([9,-19,30]) {
                cylinder(h=12,r=3,center=true);
                }
        }
        // split whole object in two
        translate([0,1,24]) {
                cube([100,1,100], center = true);
        }
    }
}