$fn=50;

module screw_hole (height=1000) {
    diameter= 5;
    diameter_top = 8.7;
    union(){
        cylinder(r=diameter/2, h=height);
        cylinder(h=3, r1=diameter_top/2, r2=diameter/2);
    };
};

module base_plate () {
    width_total = 75.75;
    height_total = 120;
    thickness_total = 5.7;
    corner_radius = 5;
    back_inset_depth = 1.2;
    full_inset_depth = 2.5;
    clearance_hole_depth = full_inset_depth + 1.75;
    
    difference() {
        //main_body
       minkowski() {
           cube([width_total-2*corner_radius, height_total-2*corner_radius, 2*thickness_total-2*corner_radius], center=true);
           sphere(r=corner_radius, center=true);
       };
       
       //remove half of box
       translate([0, 0, -thickness_total]) cube([width_total, height_total,    thickness_total*2], center=true);
       
       //remove first inner layer (box rests on this surface
       translate([-(width_total-2 - corner_radius)/2, -(height_total- 2 - corner_radius)/2, -back_inset_depth/2]) minkowski() {
            cube([width_total - 2 - corner_radius, height_total - 2- corner_radius, back_inset_depth]);
            cylinder(r=corner_radius/2, h=back_inset_depth);
        };
        
        //remove inner layer (clearance for plug  components
       translate([-(width_total-5.2 - corner_radius)/2, -(height_total- 5.2 - corner_radius)/2, -full_inset_depth/2]) minkowski() {
           cube([width_total - 5.2 - corner_radius, height_total - 5.2- corner_radius, full_inset_depth]);
           cylinder(r=corner_radius/2, h=full_inset_depth);
       };
    };
    
    
};

module plug_hole(thickness) {
    height=29;
    diameter=34.2;
    
    difference() {
        cylinder(r=diameter/2, h=thickness, center=true);
        translate([0, height, 0]) cube([diameter, height, thickness], center=true);
        translate([0, -height, 0]) cube([diameter, height, thickness], center=true);
    };
};


led_hole = 6.35;
plate_hole_position = (10.1 + 68.0) / 4;
lateral_hole_position = (43 + 52.8)/4;
vertical_hole_position = (88.7 + 78.5)/4;
hole_positions = [ [lateral_hole_position, vertical_hole_position, 5.75], 
                  [-lateral_hole_position, vertical_hole_position, 5.75], 
                  [lateral_hole_position, -vertical_hole_position, 5.75], 
                  [-lateral_hole_position, -vertical_hole_position, 5.75] ];
difference() {
    union() {
        base_plate();
        for (pos = hole_positions) {
            translate([pos[0], pos[1],        
     1.3]) 
                cylinder(r=8.2/2, h=2*1.3);
        }
    };
    //socket holes
    translate([0, plate_hole_position, 0]) plug_hole(100);
    translate([0, -plate_hole_position, 0]) plug_hole(100);
    //led holes
    translate([25, plate_hole_position, 0]) cylinder(r=led_hole/2, h=100);
    translate([25, -plate_hole_position, 0]) cylinder(r=led_hole/2, h=100);
    for (pos = hole_positions) {
        translate(pos) rotate([180, 0, 0]) screw_hole();
        offset_pos = pos;
        //offset_pos[2] = 0.0012;
        translate(offset_pos) 
            cylinder(r=8.2, h=1.17);
    };
    for (pos = [[0, vertical_hole_position, 0], [0, -vertical_hole_position, 0]]) {
        translate (pos) cylinder(r=8.2/2, h=4.6);
    }
    
 };