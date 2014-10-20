#format 1.2
#name DRV8830
#id DRV8830_PPAD
#desc TI Motor Driver

footprint = () ->

  module_dx = 3  
  module_dy = 3

  pad_dx = 0.27
  pad_dy = 0.7

  thermal_dx = 2.1
  thermal_dy = 1.83

  pad_between = 0.5
  pad_sep = 0.275

  pad_vadj = module_dy/2 + pad_dy / 2 + pad_sep

  n_up = 5
  n_down = 5

  r1 = make_rect module_dx, module_dy, 0.1, 'docu'
  r2 = make_rect module_dx+0.2, module_dy+0.2, 0.1, 'silk'

  pad = new Smd
  pad.dx = pad_dx
  pad.dy = pad_dy
  pad.ro = 0

  thermal = new Smd
  thermal.dx = thermal_dx
  thermal.dy = thermal_dy
  thermal.ro = 0

  l1 = rot_single pad, n_up, pad_between
  l1 = reverse l1
  l1 = generate_names l1, 0
  l1 = adjust_y l1, pad_vadj

  l2 = rot_single pad, n_down, pad_between
  l2 = generate_names l2, n_up
  l2 = adjust_y l2, -pad_vadj

  t1 = single thermal, 1, 0
  t1 = generate_names t1, 4

  name = new Name(module_dy + 0.5)

  pin1 = new Disc(0.25)
  pin1.x = module_dx/2 + 0.25
  pin1.y = module_dy/2 + 0.75

  combine [l1, l2, r1, r2, name, t1, pin1]
