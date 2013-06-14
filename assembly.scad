$fn=100;

include <bearing.scad>;
include <c_bar.scad>;
include <razor_blade.scad>;
include <blade_holder.scad>;
include <hinge.scad>;
include <arm.scad>;

module pivot_whole() {
  difference() {
    union() {
      arm();
      translate([7,0,0]) cube(size=[14, arm_depth, 28], center=true);
    }
    translate([0,0,0]) c_bar();
    translate([0,-(arm_depth - bearing_depth + 0.01)/2,0]) bearing();
    translate([0,(arm_depth - bearing_depth + 0.01)/2,0]) bearing();
    rotate([90,0,0]) cylinder(r=hole_radius+0.1, h=50, center=true);
  }
}


translate([80,0,14]) {
  translate([0,-15,-6.35]) rotate([-90,0,0]) blade();
  blade_holder();
}

translate([0,arm_depth/2,0]) hinge();
translate([0,-arm_depth/2,0]) mirror([0,1,0]) hinge();

translate([length/2 + 1,0,14]) c_bar();
translate([15,0,14]) pivot_whole();