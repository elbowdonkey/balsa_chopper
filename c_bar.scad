channel_height = 13.5;
channel_width = 13.5;
wall_thickness = 2.5;
bottom_thickness = 3;

length = 200;

module c_bar() {
  color("Silver")
  rotate([-90,0,0])
  difference() {
    cube(size=[length, channel_width, channel_height], center=true);
    translate([0,0,bottom_thickness]) cube(size=[length+1, channel_width-(wall_thickness*2), channel_height], center=true);
  }
}

