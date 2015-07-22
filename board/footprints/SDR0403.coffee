#format 1.2
#name SDR0403-2R2
#id SDR0403-2R2 IND PWR
#desc SDR0403-2R2 INDUCTOR SMD

footprint = () ->

  module_dx = 4.5
  module_dy = 5.1
  
  pad_dx = 4.5
  pad_dy = 1.8

  r1 = make_rect 4.5, 4, 0.1, "docu"
  r2 = make_rect 4.5, 4, 0.1, "silk"

  pad = new Smd
  pad.dx = pad_dx
  pad.dy = pad_dy
  pad.ro = 20

  pad_vadj = (module_dy/2) - (pad_dy/2)

  
  p1 = clone pad
  p1.x = 0
  p1.y = pad_vadj


  gp2 = clone p1
  gp2.y = -pad_vadj 


  name = new Name(module_dy+0.5)
  value = new Value(-module_dy - 0.5)

  combine [r1, r2, p1, gp2, name, value]