$fn=50;

module screw_hole (height=1) {
    diameter= 5/1000;
    diameter_top = 8.7/1000;
    union(){
        cylinder(r=diameter/2, h=height);
        cylinder(h=3/1000, r1=diameter_top/2, r2=diameter/2);
    };
};

module base_plate () {
    width_total = 0.07575;
    height_total = 0.120;
    thickness_total = 0.0057;
    corner_radius = 0.005;
    back_inset_depth = 0.0012;
    full_inset_depth = 0.0025;
    clearance_hole_depth = full_inset_depth + 1.75/1000;
    
    difference() {
        //main_body
       minkowski() {
           cube([width_total-2*corner_radius, height_total-2*corner_radius, 2*thickness_total-2*corner_radius], center=true);
           sphere(r=corner_radius, center=true);
       };
       
       //remove half of box
       translate([0, 0, -thickness_total]) cube([width_total, height_total,    thickness_total*2], center=true);
       
       //remove first inner layer (box rests on this surface
       translate([-(width_total-0.002 - corner_radius)/2, -(height_total- 0.002 - corner_radius)/2, -back_inset_depth/2]) minkowski() {
            cube([width_total - 2/1000 - corner_radius, height_total - 2/1000- corner_radius, back_inset_depth]);
            cylinder(r=corner_radius/2, h=back_inset_depth);
        };
        
        //remove inner layer (clearance for plug  components
       translate([-(width_total-0.0052 - corner_radius)/2, -(height_total- 0.0052 - corner_radius)/2, -full_inset_depth/2]) minkowski() {
           cube([width_total - 5.2/1000 - corner_radius, height_total - 5.2/1000- corner_radius, full_inset_depth]);
           cylinder(r=corner_radius/2, h=full_inset_depth);
       };
    };
    
    
};

module plug_hole(thickness) {
    height=0.029;
    diameter=0.0342;
    
    difference() {
        cylinder(r=diameter/2, h=thickness, center=true);
        translate([0, height, 0]) cube([diameter, height, thickness], center=true);
        translate([0, -height, 0]) cube([diameter, height, thickness], center=true);
    };
};


led_hole = 6.35/1000;
plate_hole_position = (0.0101 + 0.0680) / 4;
lateral_hole_position = (43 + 52.8)/4/1000;
vertical_hole_position = (88.7 + 78.5)/4/1000;
hole_positions = [ [lateral_hole_position, vertical_hole_position, 0.00575], 
                  [-lateral_hole_position, vertical_hole_position, 0.00575], 
                  [lateral_hole_position, -vertical_hole_position, 0.00575], 
                  [-lateral_hole_position, -vertical_hole_position, 0.00575] ];
difference() {
    union() {
        base_plate();
        for (pos = hole_positions) {
            translate([pos[0], pos[1],        
     0.0013]) 
                cylinder(r=8.2/2/1000, h=2*1.3/1000);
        }
    };
    //socket holes
    translate([0, plate_hole_position, 0]) plug_hole(0.1);
    translate([0, -plate_hole_position, 0]) plug_hole(0.1);
    //led holes
    translate([0.025, plate_hole_position, 0]) cylinder(r=led_hole/2, h=0.1);
    translate([0.025, -plate_hole_position, 0]) cylinder(r=led_hole/2, h=0.1);
    for (pos = hole_positions) {
        translate(pos) rotate([180, 0, 0]) screw_hole();
        offset_pos = pos;
        //offset_pos[2] = 0.0012;
        translate(offset_pos) 
            cylinder(r=8.2/1000, h=1.17/1000);
    };
    for (pos = [[0, vertical_hole_position, 0], [0, -vertical_hole_position, 0]]) {
        translate (pos) cylinder(r=8.2/2/1000, h=4.6/1000);
    }
    
 };