#format 1.2
#name TLV5626
#id TLV5626_SSOP8
#desc Digital to Analog converter 2 ch.

footprint = () ->

  module_dx = 4
  module_dy = 5

  pad_dx = 1.1
  pad_dy = 0.5

  n_left = 4
  n_right = 4

  pad_between = 1.27

  r1 = make_rect module_dx, module_dy, 0.1, "docu"
  r2 = make_rect module_dx+0.2, module_dy+0.2, 0.1, "silk"

  ln1 = new Line(0.1)
  ln1.x1 = -module_dx/2 + 0.4
  ln1.x2 = -module_dx/2 + 0.4
  ln1.y1 = module_dy/2 + 0.1
  ln1.y2 = -module_dy/2 - 0.1

  pad = new Smd
  pad.dx = pad_dx
  pad.dy = pad_dy
  pad.ro = 0

  pad_hadj = 2.08 + (pad_dx/2)

  l1 = single pad, n_left, pad_between
  l1 = adjust_x l1, -pad_hadj

  l2 = single pad, n_right, pad_between
  l2 = reverse l2
  l2 = adjust_x l2, pad_hadj
  l2 = generate_names l2, n_right

  pin1 = new Disc(0.25)
  pin1.x = -module_dx
  pin1.y = module_dy/2

  name = new Name(module_dy-1)

  combine [r1, r2, ln1, l1, l2, pin1, name]
