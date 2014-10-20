#format 1.2
#name WM8731
#id WM8731_SSOP28
#desc Audio Codec (Not Oriented for Tape)

footprint = () ->

  module_dx = 10.2
  module_dy = 5.3

  pad_dx = 0.3
  pad_dy = 1.1

  n_down = 14
  n_up = 14

  pad_between = 0.65

  pad_vadj = module_dy/2 + pad_dy/2 + 0.15

  r1 = make_rect module_dx, module_dy, 0.1, 'docu'
  r2 = make_rect module_dx+0.2, module_dy+0.2, 0.1, 'silk'

  name = rotate90 (new Name(module_dx-2))

  pad = new Smd
  pad.dx = pad_dx
  pad.dy = pad_dy
  pad.ro = 0

  l1 = rot_single pad, n_down, pad_between
  l1 = adjust_y l1, -pad_vadj

  l2 = rot_single pad, n_up, pad_between
  l2 = reverse l2
  l2 = adjust_y l2, pad_vadj
  l2 = generate_names l2, n_down

  pin1 = new Disc(0.25)
  pin1.x = -module_dx/2
  pin1.y = -module_dy/2 - 1

  combine [l1, l2, r1, r2, name, pin1]