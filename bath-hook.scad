module bath_hook_front() {
  hull() {
    translate([-19, -5, 1]) cube([38, 5, 88]);
    translate([-19, -5, 0]) cube([38, 4.5, 1]);
    translate([-20, -5, 1]) cube([40, 4.5, 88]);
    translate([-15, -10, 1]) cube([30, 5, 79]);
  }
  hull() {
    translate([-19, -10, 0]) cube([38, 9, 5]);
    translate([-19, -10, 1]) cube([38, 10, 3.5]);
    translate([-20, -10, 1]) cube([40, 9, 3.5]);
    translate([-4.5, -49, 0]) cube([9, 9, 5]);
    translate([-5, -50, 1]) cube([10, 10, 3.5]);
  }
  difference() {
    hull() {
      translate([-5, -50, 0]) cube([10, 49.5, 40]);
      translate([-5, -70, 30]) cube([10, 10, 10]);
    }
    translate([-8, -35, 40]) rotate([0, 90, 0]) cylinder(h=6, d1=60, d2=50);
    translate([-10, -35, 40]) rotate([0, 90, 0]) cylinder(h=20, d=50);
    translate([2, -35, 40]) rotate([0, 90, 0]) cylinder(h=6, d1=50, d2=60);
  }
  translate([0, -65, 45]) sphere(9);
}

module bath_hook_back() {
  hull () {
    translate([-19, 5.1, 1]) cube([38, 5, 89]);
    translate([-19, 5.6, 0]) cube([38, 4, 1]);
    translate([-20, 5.6, 1]) cube([40, 4.5, 89]);
    translate([-14, 10.1, 0]) cube([28, 5, 1]);
    translate([-15, 10.1, 1]) cube([30, 5, 79]);
  }
  hull() {
    translate([-14, 10.1, 0]) cube([28, 14.5, 1]);
    translate([-15, 10.1, 1]) cube([30, 14.5, 9]);
  }
  hull() {
    translate([-14, 20.1, 1]) cube([28, 5, 28.5]);
    translate([-14, 20.6, 0]) cube([28, 4, 30]);
    translate([-15, 20.6, 1]) cube([30, 4, 28.5]);
  }
}

module bath_hook_connection() {
  translate([-20, -5, 80]) cube([40, 15.1, 10]);
  hull() {
    translate([-20, 2.55, 90])
      rotate([0, 90, 0])
        cylinder(h=40, d=14.1);
    translate([-19.5, 2.55, 90])
      rotate([0, 90, 0])
        cylinder(h=39, d=15.1);
  }
}

module bath_hook() {
  bath_hook_front();
  bath_hook_back();
  bath_hook_connection();
}

bath_hook();
