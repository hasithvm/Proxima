#format 1.2
#name DRV8830MSOP
#id DRV8830_MSOP
#desc TI Motor Driver (MSOP)

footprint = () ->
  module_dx = 3
  module_dy = 3

  pad_dx = (5.25 - module_dy) / 2
  pad_dy =0.27

  pad_between = 0.5
  rows_between = module_dy + pad_dx

  n_pins = 10

  pad = new Smd
  pad.dx = pad_dx
  pad.dy = pad_dy

  l1 = dual pad, n_pins, pad_between, rows_between
  rotate90 l1

  ppad = new Smd
  ppad.dy = 1.73
  ppad.dx = 2

  l2 = single ppad, 1, 0
  l2 = generate_names l2, 4

  r1 = make_rect module_dx, module_dy, 0.1, 'docu'
  r2 = make_rect module_dx, module_dy, 0.1, 'silk'

  name= new Name (module_dy + 1)

  pin1 = new Disc (0.45)
  pin1.x = -module_dx / 1.5
  pin1.y = -module_dy / 1.5

  combine [r1, r2, l1, name, pin1, l2]
