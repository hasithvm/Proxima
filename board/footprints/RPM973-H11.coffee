#format 1.2
#name RPM973-H11
#id RPM973-H11
#desc IrDA Module

footprint = () ->
  
  module_dx = 6.8
  module_dy = 2.18
  pad_dx = 0.37
  pad_dy = 0.8

  pad_between = 0.95

  pad = new Smd
  pad.dx = pad_dx
  pad.dy = pad_dy

  mount = new Smd
  mount.dx = 2 * pad_between - pad_dx
  mount.dy = 0.7

  line = new Line(0.1)
  line.y1 = -module_dy/2
  line.y2 = module_dy/2

  line2 = new Line(0.1)
  line2.x1 = -module_dx/2
  line2.x2 = module_dx/2
  
  n_down = 7

  pad_vadj = module_dy/2 - 0.16 - 0.4/2 - (0.4 - pad_dy)/2
  mount_vadj = module_dy/2 - mount.dy/2

  r1 = make_rect module_dx, module_dy, 0.1, "docu"
  r2 = rot_single line, 2, module_dx
  r3 = single line2, 1, 0
  r3 = adjust_y r3, module_dy/2

  l1 = rot_single pad, n_down, -pad_between
  l1 = adjust_y l1, -pad_vadj

  l2 = single mount, 1, 0
  l2 = adjust_y l2, mount_vadj

  name = new Name(-module_dy)

  combine [l1, l2, r1, r2, r3, name]
