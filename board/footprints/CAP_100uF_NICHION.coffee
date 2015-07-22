#format 1.2
#name CAP SMD 100uF  
#id CAP_SMD NICH
#desc Nichion Aluminum Polymer Capacitor SMD WJ-6.3mm

footprint = () ->

  module_dy = 6.6
  module_dx = 6.6

  pad_dx = 1.6
  pad_dy = 3.5
  pad_between = 1.9
  r1 = make_rect module_dx, module_dy, 0.1, "docu"
  r2 = make_rect module_dx+0.1, module_dy+0.2, 0.1, "silk"

  pad = new Smd
  pad.dx = pad_dx
  pad.dy = pad_dy
  pad.ro = 0

  pad_vadj = (pad_between/2) + (pad_dy/2)

  
  p1 = clone pad
  p1.y = -pad_vadj


  gp2 = clone p1
  gp2.y = pad_vadj 

  pin1 = new Disc(0.3)
  pin1.x = -module_dx/2 + pad_dx/2
  pin1.y = -module_dy/1.5

  name = new Name(module_dy)
  name.dy = 0.4
  name = rotate90 name
  combine [r1, r2, p1, gp2, pin1, name]
