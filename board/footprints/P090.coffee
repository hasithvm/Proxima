#format 1.2
#name P090_Potentiometer
#id P090
#desc Top adjustable Potentiometer

footprint = () ->

  pad_between = 100mil

  module_dx = 11.4
  module_dy = 5.5+7

  pad = new RoundPad(0.85, 1)
  r1 = make_rect module_dx, module_dy, 0.1, "docu"
  r2 = make_rect module_dx+0.2, module_dy+1.2, 0.1, "silk"

  r1 = adjust_y r1, module_dy/2 - 7
  r2 = adjust_y r2, module_dy/2 - 7.5

  hole = new Hole(2.2)

  pins = rot_single pad, 3, 5/2
  pins = adjust_y pins, -7

  holes = rot_single hole, 2, 10.6 - 1.9

  name = new Name(module_dy/2+2)

  combine [pins, holes, r1, r2, name]
