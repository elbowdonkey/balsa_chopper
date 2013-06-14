
module blade_holder() {
  difference() {
    union() {
      translate([0,-2.5,0]) cube(size=[blade_l+2, channel_height+10, channel_height+5], center=true);

      difference() {
        translate([0,-14,-5]) rotate([45,0,0]) color("Red") cube(size=[blade_l+2, 10, 10], center=true);
        translate([0,-19.25,-5]) cube(size=[blade_l+5, 10, 20], center=true);
        translate([0,-10,0]) cube(size=[blade_l+5, 20, 10], center=true);
      }
    }

    translate([0,0,0]) c_bar();
    translate([ 10,4,0]) rotate([90,0,0]) cylinder(r=1.46, h=20, center=true);
    translate([-10,4,0]) rotate([90,0,0]) cylinder(r=1.46, h=20, center=true);
    translate([ 10,16,0]) rotate([90,0,0]) cylinder(r=2.75, h=20, center=true);
    translate([-10,16,0]) rotate([90,0,0]) cylinder(r=2.75, h=20, center=true);
    translate([0,-14,6]) color("orange") cube(size=[blade_l+3, 1, 20], center=true);

    translate([               0,-20,-6.4]) rotate([90,0,0]) cylinder(r=(center_hole_diam/2)-0.2, h=20, center=true);
    translate([(blade_l/2) -1.5,-20,-6.4]) rotate([90,0,0]) cylinder(r=(center_hole_diam/2)-0.2, h=20, center=true);
    translate([(-blade_l/2)+1.5,-20,-6.4]) rotate([90,0,0]) cylinder(r=(center_hole_diam/2)-0.2, h=20, center=true);
  }
}




