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

module bath_hook_back(gap) {
  hull () {
    translate([-19, gap, 1]) cube([38, 5, 89]);
    translate([-19, gap+0.5, 0]) cube([38, 4, 1]);
    translate([-20, gap+0.5, 1]) cube([40, 4.5, 89]);
    translate([-14, gap+5, 0]) cube([28, 5, 1]);
    translate([-15, gap+5, 1]) cube([30, 5, 79]);
  }
  hull() {
    translate([-14, gap+5, 0]) cube([28, 14.5, 1]);
    translate([-15, gap+5, 1]) cube([30, 14.5, 9]);
  }
  hull() {
    translate([-14, gap+15, 1]) cube([28, 5, 28.5]);
    translate([-14, gap+15.5, 0]) cube([28, 4, 30]);
    translate([-15, gap+15.5, 1]) cube([30, 4, 28.5]);
  }
}

module bath_hook_connection(gap) {
  translate([-20, -5, 80]) cube([40, gap+10, 10]);
  hull() {
    translate([-20, gap/2, 90])
      rotate([0, 90, 0])
        cylinder(h=40, d=gap+9);
    translate([-19.5, gap/2, 90])
      rotate([0, 90, 0])
        cylinder(h=39, d=gap+10);
  }
}

module bath_hook(gap) {
  bath_hook_front();
  bath_hook_back(gap);
  bath_hook_connection(gap);
}

bath_hook(gap=5.1);
