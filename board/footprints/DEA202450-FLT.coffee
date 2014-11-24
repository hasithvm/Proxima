#format 1.2
#name DEA202450B
#id DEA202450BT
#desc DEA WLAN/BT FLT 2.4GHz


footprint = () ->

  module_dy =2
  module_dx = 1.25

  gnd_pad_dx = 1
  gnd_pad_dy = 0.45


  pad_dx = 0.35
  pad_dy = 0.35

  pad_between = 0.25
  pad_between_horiz = 0.3
  r1 = make_rect module_dx, module_dy, 0.1, "docu"
  r2 = make_rect module_dx+0.2, module_dy+0.2, 0.1, "silk"

  pad = new Smd
  pad.dx = pad_dx
  pad.dy = pad_dy
  pad.ro = 0

  pad_hadj = (pad_between_horiz/2) + (pad_dx/2)
  pad_vadj = (pad_between) + (pad_dy/2) + (gnd_pad_dy/2)
  lp = pad
  lp = adjust_x lp, -pad_hadj
  lp = generate_names lp, 1

  rp = clone lp 
  rp.x = pad_hadj
  
  gp1 = clone pad
  gp1.dx = gnd_pad_dx
  gp1.dy = gnd_pad_dy
  gp1.x = 0
  gp1.y = pad_vadj


  gp2 = clone gp1
  gp2.y = -pad_vadj 


  pin1 = new Disc(0.25)
  pin1.x = -module_dx
  pin1.y = module_dy/2

  name = new Name(module_dy+1)
  name.dy = 0.8

  combine [r1, r2, lp,gp1, rp,gp2, pin1, name]