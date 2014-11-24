#format 1.2
#name HC-49US
#id HC-49US
#desc SMT Crystal Footprint

footprint = () ->
  
  module_dx = 4.7
  module_dy = 12.7
  pad_dx = 2.1
  pad_dy = 5.6

  pad_between = 9.5

  pad = new Smd
  pad.dx = pad_dx
  pad.dy = pad_dy
  
  n_down = 2

  r1 = make_rect module_dx, module_dy, 0.1, "docu"
  silk = new Line(0.1)
  silk.y1 = -module_dy/2
  silk.y2 = module_dy/2

  l1 = single pad, n_down, pad_between

  r2 = rot_single silk, 2, module_dx

  name = new Name(module_dy-3)

  combine [l1, r1, r2, name]
