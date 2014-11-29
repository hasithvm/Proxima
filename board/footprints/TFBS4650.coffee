#format 1.2
#name TFBS4650
#id TFBS4650
#desc IrDA Module (Vishay)

footprint = () ->
  
  module_dx = 6.8
  module_dy = 1.65
  pad_dx = 0.64
  pad_dy = 1.27

  pad_between = 0.95

  pad = new Smd
  pad.dx = pad_dx
  pad.dy = pad_dy

  line = new Line(0.1)
  line.y1 = -module_dy/2
  line.y2 = module_dy/2

  line2 = new Line(0.1)
  line2.x1 = -module_dx/2
  line2.x2 = module_dx/2

  ledarc = new Arc(0.1)
  ledarc.x1 = -1
  ledarc.x2 = 1
  ledarc.curve = 180

  pdarc = new Arc(0.1)
  pdarc.x1 = -1.2
  pdarc.x2 = 1.2
  pdarc.curve = 180
  
  n_down = 7

  pad_vadj = module_dy/2 - pad_dy/2 + 0.4

  r1 = make_rect module_dx, module_dy, 0.1, "docu"
  r2 = rot_single line, 2, module_dx
  r3 = single line2, 1, 0
  r3 = adjust_y r3, -module_dy/2

  l1 = rot_single pad, n_down, pad_between
  l1 = adjust_y l1, pad_vadj

  a1 = single ledarc, 1, 0
  a1 = adjust_x a1, -module_dx/2 + 1.1
  a1 = adjust_y a1, -module_dy/2

  a2 = single pdarc, 1, 0
  a2 = adjust_x a2, module_dx/2 - 1.3
  a2 = adjust_y a2, -module_dy/2


  name = new Name(module_dy+1)

  combine [l1, r1, r2, r3, a1, a2, name]
