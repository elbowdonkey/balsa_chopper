hinge_arm_width = 14;
hinge_base_length = 30;
hinge_base_width = 30;
hinge_base_height = 8;
hinge_arm_height = 22;

module hinge() {
  difference() {
    translate([0,0,-2]) cube(size=[hinge_base_length, hinge_base_width, hinge_arm_height+4]);
    translate([(hinge_base_length/2),-20, hinge_arm_height - hole_radius*2]) rotate([-90,0,0])  cylinder(r=hole_radius, h=80);
    translate([5,5,5]) cube(size=[20, hinge_base_width+2, hinge_arm_height+4]);

    rotate([45,0,0]) translate([-2,27,-30]) cube(size=[60, 40, 60]);

    translate([7.75,7.75,-3]) cylinder(r=1.46, h=40);
    translate([7.75,hinge_base_width - 3,-3]) cylinder(r=1.46, h=40);
    translate([hinge_base_length - 7.75 ,7.75,-3]) cylinder(r=1.46, h=40);
    translate([hinge_base_length - 7.75 ,hinge_base_width - 3,-3]) cylinder(r=1.46, h=40);
  }
}