// --------------------------------------------------------------
//  Author: Angel Roman
//  GitHub: https://github.com/legna-namor
//  Purpose: IKEA Skadis Peg For Attachments
// --------------------------------------------------------------
// Define parameters
height1 = 5;
height2 = 5.2;
width = 5;
length1 = 15;
length2 = 7.5;
// --------------------------------------------------------------
// Peg module
module peg(height, width, length) {
    linear_extrude(height) {
        hull() {
            translate([length - width, 0, 0]) circle(d = width);
            circle(d = width);
        }
    }
}
// --------------------------------------------------------------
// Call the peg module with two sets of parameters
peg(height1, width, length1);
translate([0, 0, height1]) peg(height2, width, length2);
// --------------------------------------------------------------