#!/bin/bash

BASE_PATH="export/plate_"
SCAD_FILE="plate.scad"

# Holes
SIZES=(100 125)

for i in ${SIZES[@]}; do
	openscad -D"DIAM=$i" -o "$BASE_PATH${i}mm.dxf" $SCAD_FILE
	openscad -D"DIAM=$i" -o "$BASE_PATH${i}mm.svg" $SCAD_FILE

done
