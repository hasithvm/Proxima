#format 1.2
#name LM4808
#id LM4808_SOIC8
#desc Headphone Preamp

footprint = () ->

  module_dx = 3
  module_dy = 3


  pad_dx = (5.15 - 2.9) / 2
  pad_dy = 0.38

  n_pins = 8

  pad_between = 0.68
  pad_gap = 3.1 + pad_dx / 2

  r1 = make_rect module_dx, module_dy, 0.1, "docu"
  r2 = make_rect module_dx+0.1, module_dy+0.1, 0.1, "silk"

  pad = new Smd
  pad.dx = pad_dx
  pad.dy = pad_dy
  pad.ro = 0

  l1 = rot_dual pad, n_pins, pad_between, pad_gap 

  pin1 = new Disc(0.4)
  pin1.x = -module_dx/1.5
  pin1.y = -module_dy/1.5

  name = new Name(module_dy+0.5)

  combine [r1, r2, l1, pin1, name]
