difference(){
union(){
difference(){
    cube([73.5,53.5,20]);
    translate([1.5,1.5,1.5])cube([70.5,50.5,20]);
}

translate([0,0,0])cube([8,8,5]);
translate([65.5,0,0])cube([8,8,5]);
translate([0,45.5,0])cube([8,8,5]);
translate([65.5,45.5,0])cube([8,8,5]);
}
translate([4,4,1])cylinder(d=2,h=5,$fn=12);
translate([69.5,4,1])cylinder(d=2,h=5,$fn=12);
translate([4,49,1])cylinder(d=2,h=5,$fn=12);
translate([69.5,49,1])cylinder(d=2,h=5,$fn=12);

translate([-1,9.5,6.5])cube([5,11.5,20]);
translate([-1,32,6.5])cube([5,11.5,20]);
translate([72,22,6.5])cube([5,11.5,20]);
}

scale([1,1,0.49])translate([-8,26.5,0])meccano(8);

module meccano(n=2){
difference(){
    minkowski(){
        cylinder(d=12.7,h=3,$fn=30);
        cube([(n-1)*12.7,.001,0.001]);
    }
    for (i=[0:n-1]){
        translate([i*12.7,0,-1])cylinder(d=4.5,h=5,$fn=18);
    }
}
}
