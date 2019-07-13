// By GityUpNow(2019). Licensed under the MIT License
// All units are in millimeters


//Constants
//Accuracy
$fn = 30;

//Plate
TOLERANCE   =  20;
PLATE_WIDTH = 420;
PLATE_HEIGHT= 840;

WIDTH  = PLATE_WIDTH  - TOLERANCE;
HEIGHT = PLATE_HEIGHT - TOLERANCE;


//Modules
module base_plate() {
    square([WIDTH, HEIGHT]);
}

module plate(diameter) {
    rotate([0, 0, 90]) {
        difference() {
            base_plate();
            translate([WIDTH/2, HEIGHT/4]) {
                circle(d = diameter + 2);
            }
        }
    }
}

plate(DIAM);
