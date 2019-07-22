all: bath-hook.stl

%.stl: %.scad
	openscad -o $*.stl $*.scad
