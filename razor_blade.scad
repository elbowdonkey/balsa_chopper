$fn=100;

guard_l = 39.58;
guard_h = 6.94;
guard_d = 1;

blade_l = 38.89;
blade_h = 12.46;
blade_d = 0.23;

hole_diam = 2.8;
center_hole_diam = 2.4;


module blade() {
  color("Silver")
  translate([-guard_l/2,-9.7,0])
  difference() {
    union() {
      cube(size=[guard_l, guard_h, guard_d]);
      translate([(guard_l - blade_l)/2,guard_h, (guard_d - blade_d)/2]) cube(size=[blade_l, blade_h, blade_d]);
    }

    translate([0,9.7,0])
    hull() {
      cylinder(r=hole_diam/2, h=10, center=true);
      translate([2.14,0,0]) cylinder(r=hole_diam/2, h=10, center=true);
    }

    translate([0,9.7,0])
    hull() {
      translate([guard_l,0,0]) cylinder(r=hole_diam/2, h=10, center=true);
      translate([guard_l - 2.14,0,0]) cylinder(r=hole_diam/2, h=10, center=true);
    }

    translate([guard_l/2,7.5 + (center_hole_diam/2),0])
    hull() {
      translate([0,0,0]) cylinder(r=center_hole_diam/2, h=10, center=true);
      translate([0,6.17 - center_hole_diam ,0]) cylinder(r=center_hole_diam/2, h=10, center=true);
    }
    translate([guard_l/2,(blade_h  + guard_h),1]) rotate([-10,0,0])  cube(size=[guard_l, guard_d+1, guard_d], center=true);
    translate([guard_l/2,(blade_h  + guard_h),0]) rotate([10,0,0])  cube(size=[guard_l, guard_d+1, guard_d], center=true);
  }
}

//blade();