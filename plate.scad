// By GityUpNow(2019). Licensed under the MIT License
// All units are in millimeters


//Constants
//Accuracy
$fn = 60;

//Plate
PLATE_WIDTH = 415;
PLATE_HEIGHT= 845;

//Hole
TIGHT_FIT = 2;

//Modules
module base_plate() {
    square([PLATE_WIDTH, PLATE_HEIGHT]);
}

module plate(diameter) {
    rotate([0, 0, 90]) {
        difference() {
            base_plate();
            translate([PLATE_WIDTH/2, PLATE_HEIGHT/4]) {
                circle(d = diameter - TIGHT_FIT);
            }
        }
    }
}

plate(DIAM);
