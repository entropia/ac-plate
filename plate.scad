// By GityUpNow(2019). Licensed under the MIT License
// All units are in millimeters


//Constants
//Accuracy
$fn = 60;

//Plate
PLATE_WIDTH = 420;
PLATE_HEIGHT= 840;

//Modules
module base_plate() {
    square([PLATE_WIDTH, PLATE_HEIGHT]);
}

module plate(diameter) {
    rotate([0, 0, 90]) {
        difference() {
            base_plate();
            translate([PLATE_WIDTH/2, PLATE_HEIGHT/4]) {
                circle(d = diameter);
            }
        }
    }
}

plate(DIAM);
