#format 1.2
#name 2.4GHz ANT AH316M245001-T
#id AH316M
#desc WLAN/BT ANT 2.4GHz


footprint = () ->

  module_dy =3.2
  module_dx = 1.6

  gnd_pad_dx = 1.20
  gnd_pad_dy =1


  pad_dx = 0.35
  pad_dy = 0.35

  pad_between = 2.2
  r1 = make_rect module_dx, module_dy, 0.1, "docu"
  r2 = make_rect module_dx+0.2, module_dy+1, 0.1, "silk"

  pad = new Smd
  pad.dx = pad_dx
  pad.dy = pad_dy
  pad.ro = 0

  pad_vadj = (pad_between/2) + (gnd_pad_dy/2)

  
  gp1 = clone pad
  gp1.dx = gnd_pad_dx
  gp1.dy = gnd_pad_dy
  gp1.x = 0
  gp1.y = pad_vadj


  gp2 = clone gp1
  gp2.y = -pad_vadj 

  
  gp3 = clone gp1
  gp3.y = (pad_vadj - 0.5) + 2.3
  gp3.dy = 3
  pin1 = new Disc(0.25)
  pin1.x = -module_dx
  pin1.y = module_dy/2

  name = new Name(module_dy+1)

  combine [r1, r2, gp1, gp2, gp3, pin1, name]