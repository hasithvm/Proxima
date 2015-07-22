#format 1.2
#name MKE04 
#id MKE04_TSSOP16
#desc Cortex-M0+

footprint = () ->

  module_dx = 4.5
  module_dy = 5.1

  pad_dx = 1.05
  pad_dy = 0.32

  n_left = 8
  n_right = 8

  pad_between = 0.65

  r1 = make_rect module_dx, module_dy, 0.1, "docu"
  r2 = make_rect module_dx, module_dy, 0.1, "silk"

  pad = new Smd
  pad.dx = pad_dx
  pad.dy = pad_dy
  pad.ro = 0

  pad_hadj = 2.4 + (pad_dx/2)

  l1 = single pad, n_left, pad_between
  l1 = adjust_x l1, -pad_hadj

  l2 = single pad, n_right, pad_between
  l2 = reverse l2
  l2 = adjust_x l2, pad_hadj
  l2 = generate_names l2, n_right

  pin1 = new Disc(0.25)
  pin1.x = -module_dx/3
  pin1.y = module_dy/3

  name = new Name(module_dy)

  combine [r1, r2, l1, l2, pin1, name]
