arm_depth = (bearing_depth*2) + channel_height + 4;

module arm() {
  translate([0,0,0]) rotate([90,0,0]) cylinder(r=14, h=arm_depth, center=true);
}

