//**************************
// Defines
$fn=64;

width_total = 73;
height_total = 117;
thickness_total = 68;
wall_thickness = 4; //can fit an m6 machine nut

center= [width_total/2, height_total/2];

lateral_hole_position = (43 + 52.8)/4;
vertical_hole_position = (88.7 + 78.5)/4;

hole_positions = [ [lateral_hole_position + center[0], vertical_hole_position + center[1], 0], 
                  [-lateral_hole_position + center[0], vertical_hole_position + center[1], 0], 
                  [lateral_hole_position + center[0], -vertical_hole_position + center[1], 0], 
                  [-lateral_hole_position + center[0], -vertical_hole_position + center[1], 0] ];
   
board_xoff = 28;
board_yoff = 32;
board_hole_positions = [ [board_xoff + center[0], board_yoff + center[1], 0], 
                  [-board_xoff + center[0], board_yoff + center[1], 0], 
                  [board_xoff + center[0], -board_yoff + center[1], 0], 
                  [-board_xoff + center[0], -board_yoff + center[1], 0] ];
   
//Grommet clearance hole.
main_wire_hole_r = 18/2;

//For the #6 machine screws. May be different thread forms.
hole_clearance = 4/2;
nut_size = 5/16 * 25.4 + 0.5; 

//board_sizes
b_width = width_total - 2*wall_thickness +2 ;
b_height = height_total - 2*hole_positions[3][1] - 2*wall_thickness-4 ;

//***************************
// Actions
main_body();
//translate([width_total/2, height_total/2, 2*wall_thickness]) 
//projection(cut=true) 
//board();

//***************************
// Modules

module board() {
    board_thickness = 1.6;
    color ("green", 1)
    difference () {
        linear_extrude (board_thickness) offset(2) square ([b_width-4, b_height-4], center=true);
      
        //remove mounting holes and hex nuts
        for (i = board_hole_positions) {
            translate([-center[0], -center[1], 0]) translate (i) cylinder (r = hole_clearance, h = 10000, center = true);
        }  
    };
}

module main_body () {
    mounting_hole_extra = 5;
    
    difference() {
        union () {
            //base
            linear_extrude (height=wall_thickness) translate ([             wall_thickness, wall_thickness, 0 ]) offset (             wall_thickness ) square ([width_total - 2*             wall_thickness, height_total - 2*wall_thickness]);

            //wall
            linear_extrude (height=thickness_total)  
            difference () {
                translate ([ wall_thickness, wall_thickness, 0 ]) offset (              wall_thickness ) square ([width_total - 2*              wall_thickness, height_total - 2*wall_thickness]);
                translate ([ 3/2*wall_thickness, 3/2*wall_thickness, 0 ])              offset( wall_thickness ) square ([width_total - 3*              wall_thickness, height_total - 3*wall_thickness]);
            };
       
            //blocks for mounting holes.
            for (i = [[0, 0], 
                    [width_total - hole_positions[3][0] - mounting_hole_extra, 0],
                    [0, height_total-hole_positions[3][1]-mounting_hole_extra], 
                    [width_total - hole_positions[3][0]-mounting_hole_extra, height_total- hole_positions[3][1]- mounting_hole_extra]]) {
                translate([i[0], i[1], 0]) linear_extrude (height=              thickness_total) translate ([ wall_thickness,              wall_thickness, 0 ]) offset ( wall_thickness ) square              ([hole_positions[3][0] - 2*wall_thickness+mounting_hole_extra, hole_positions[3][1] - 2*wall_thickness + mounting_hole_extra]);
            };
            
            translate ([width_total/2, (hole_positions[3][1] + mounting_hole_extra)/2, thickness_total - wall_thickness]) cube ([width_total - hole_positions[3][0], hole_positions[3][1] + mounting_hole_extra, 2*wall_thickness], center=true);
            translate ([width_total/2, height_total - (hole_positions[3][1] + mounting_hole_extra)/2, thickness_total - wall_thickness]) cube ([width_total - hole_positions[3][0], hole_positions[3][1] + mounting_hole_extra, 2*wall_thickness], center=true);
            
            //board_mount_posts
            for (i = board_hole_positions) {
                translate (i) cylinder (r=nut_size, h=2*wall_thickness);
            }
         
        };
        
        //remove mounting holes and hex nuts
        for (i = hole_positions) {
            translate (i) cylinder (r = hole_clearance, h = 10000, center = true);
            translate ([0, 0, -1]) translate(i) hex_flat_to_flat (nut_size, 0.2, thickness_total-2*wall_thickness);
        }
        
        translate ([width_total/2, hole_positions[3][1], thickness_total]) cylinder (r=hole_clearance, h=4*wall_thickness+1, center=true);
        translate ([width_total/2, hole_positions[0][1], thickness_total]) cylinder (r=hole_clearance, h=4*wall_thickness+1, center=true);
        
        
        translate ([width_total/2, wall_thickness, thickness_total/2 ]) rotate (90, [1, 0, 0]) cylinder(r=main_wire_hole_r, h = 2*wall_thickness, center=true);
        
        //remove mounting holes
        for (i = board_hole_positions) {
                translate (i) cylinder (r=hole_clearance, h=10*wall_thickness);
                translate([i[0], i[1], -1]) hex_flat_to_flat(nut_size, 0.2, wall_thickness+1);
            }
    };
    
};

module hex_flat_to_flat ( distance, corner_radius, thickness ) {
    h = distance / 2;
    d = h/cos(30);
    hull () {
        for ( i = [0:60:359] ) {
            rotate(i, [0, 0, 1]) translate ([d-corner_radius, 0, 0]) cylinder (h=thickness, r = corner_radius);
        }
    }
};