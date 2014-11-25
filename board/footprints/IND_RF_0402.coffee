#format 1.2
#name IND_RF_0402
#id 5f8c208bfdd34b7eaa43078142d54aa6
#desc 0402 INDUCTOR SMD

footprint = () ->

  module_dy = 1
  module_dx = 0.5

  pad_dx = 0.5
  pad_dy = 0.25

  r1 = make_rect module_dx, module_dy, 0.1, "docu"
  r2 = make_rect module_dx+0.1, module_dy+0.2, 0.1, "silk"

  pad = new Smd
  pad.dx = pad_dx
  pad.dy = pad_dy
  pad.ro = 0

  pad_vadj = (module_dy/2) - (pad_dy/2)

  
  p1 = clone pad
  p1.x = 0
  p1.y = pad_vadj


  gp2 = clone p1
  gp2.y = -pad_vadj 


  name = new Name(module_dy+0.9)
  name.dy = 0.4
  name = rotate90 name
  combine [r1, r2, p1, gp2, name]