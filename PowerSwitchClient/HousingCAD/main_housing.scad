$fn=50;

width_total = 75.75;
height_total = 120;
thickness_total = 68;
corner_radius = 5;
wall_thickness = 3.7;

module main_body () {
    
    difference() {
    difference() {
        //main_body
       translate ([-(width_total - 2*corner_radius)/2, -(height_total - 2*corner_radius)/2, 0]) 
       minkowski() {
           cube([width_total-2*corner_radius, height_total-2*corner_radius, thickness_total-2*corner_radius]);
           sphere(r=corner_radius, center=true);
       };
       
       //remove half of box
       translate ([-(width_total), -(height_total), -thickness_total]) cube([2*width_total, 2*height_total, thickness_total]);   
   };
   translate([-(width_total - 2*corner_radius - 2*wall_thickness)/2, -(height_total - 2*corner_radius - 2*wall_thickness)/2, 0])
        minkowski() {
            cube([(width_total - 2*corner_radius - 2*wall_thickness), (height_total - 2*corner_radius - 2*wall_thickness),thickness_total - 2*corner_radius - 2*wall_thickness ]);
            sphere(r=corner_radius, center=true);
        };
   };
};

lateral_hole_position = (43 + 52.8)/4;
vertical_hole_position = (88.7 + 78.5)/4;
hole_positions = [ [lateral_hole_position, vertical_hole_position, 0], 
                  [-lateral_hole_position, vertical_hole_position, 0], 
                  [lateral_hole_position, -vertical_hole_position, 0], 
                  [-lateral_hole_position, -vertical_hole_position, 0] ];

union() {
main_body();
for ( pos = hole_positions) {
    translate(pos) cylinder(r=5, h=thickness_total);
}
};

