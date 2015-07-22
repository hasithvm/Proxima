#format 1.2
#name ZXBM5210 
#id ZXBM5120-SOIC8-EP
#desc ZXBM5210 H-bridge w/thermal pad

footprint = () ->

  module_dx = 3.95
  module_dy = 4.95

  pad_dx = 1.505
  pad_dy = 0.802

  n_left = 4
  n_right = 4
  fp_y = 4.612
  fp_x = 6.5

  pad_between = 1.27
  pad_between_horiz = fp_x  -  pad_dx
  r1 = make_rect 6.5, module_dy, 0.1, "docu"
  r2 = make_rect module_dx, module_dy+0.2, 0.1, "silk"

  pad = new Smd
  pad.dx = pad_dx
  pad.dy = pad_dy
  pad.ro = 0
  gnd_pad = new Smd
  gnd_pad.dx = 2.613
  gnd_pad.dy = 3.502
  gnd_pad.ro = 0
  gnd_pad.name = "8"

  pad_hadj = (pad_between_horiz/2)

  l1 = single pad, n_left, pad_between
  l1 = adjust_x l1, -pad_hadj

  l2 = single pad, n_right, pad_between
  l2 = reverse l2
  l2 = adjust_x l2, pad_hadj
  l2 = generate_names l2, n_right

  pin1 = new Disc(0.25)
  pin1.x = -module_dx
  pin1.y = module_dy/2

  name = new Name(module_dy*0.75)

  combine [r1, r2, l1, l2, pin1, gnd_pad, name]
