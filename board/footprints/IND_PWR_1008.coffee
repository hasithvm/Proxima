#format 1.2
#name IND_PWR_1008
#id 567b2a9939944781b7a17ced37460d5a
#desc 1008 INDUCTOR SMD

footprint = () ->

  module_dy = 2.5
  module_dx = 2

  pad_dx = 2
  pad_dy = 0.6

  r1 = make_rect module_dx, module_dy, 0.1, "docu"
  r2 = make_rect module_dx+0.2, module_dy+0.2, 0.1, "silk"

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


  name = new Name(module_dy+0.5)
  value = new Value(-module_dy - 0.5)

  combine [r1, r2, p1, gp2, name, value]