// By GityUpNow(2017). Licensed under the MIT License
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
    difference() {
        base_plate();
        translate([WIDTH/2, HEIGHT/4]) {
            circle(d = diameter);
        }
    }
}


//Object
//Small air hose
//plate(100);

//Big air hose
//plate(125);