// By GityUpNow(2017). Licensed under the MIT License

//All units are in millimeters
// Plate
TOLERANCE   =  2;
PLATE_WIDTH = 42;
PLATE_HEIGHT= 84;

module base_plate() {
    square([PLATE_WIDTH-TOLERANCE, PLATE_HEIGHT-TOLERANCE]);
}