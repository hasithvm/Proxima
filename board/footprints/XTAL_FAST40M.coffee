#format 1.2
#name ABM3B-40.000MHZ-10-1-U-T
#id ABM3B-40MHZ-4SMD
#desc WLAN Fast XTAL - 40MHz


footprint = () ->

  module_dx =3.2
  module_dy = 5

  pad_dx = 1.2
  pad_dy = 1.8

  n_left = 2
  n_right = 2

  pad_between = 4
  pad_between_horiz = 2.4
  r1 = make_rect module_dx, module_dy, 0.1, "docu"
  r2 = make_rect module_dx+0.5, module_dy+0.7, 0.1, "silk"

  pad = new Smd
  pad.dx = pad_dx
  pad.dy = pad_dy
  pad.ro = 0

  pad_hadj = (pad_between_horiz/2)

  l1 = single pad, n_left, pad_between
  l1 = adjust_x l1, -pad_hadj

  l2 = single pad, n_right, pad_between
  l2 = reverse l2
  l2 = adjust_x l2, pad_hadj
  l2 = generate_names l2, n_right

  pin1 = new Disc(0.5)
  pin1.x = -module_dx
  pin1.y = module_dy/2

  name = new Name(module_dy)

  combine [r1, r2, l1, l2, pin1, name]