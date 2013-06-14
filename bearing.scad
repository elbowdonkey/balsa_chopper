bearing_radius = 11.7;
hole_radius = 7.95/2;
bearing_depth = 7;

module bearing() {
  color("Silver")
  rotate([90,0,0])
  difference() {
    cylinder(r=bearing_radius, h=bearing_depth, center=true);
    cylinder(r=hole_radius, h=10, center=true);
  }
}