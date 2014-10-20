#format 1.2
#name MPU9150
#id MPU9150
#desc Accelerometer, Gyroscope, Magnetometer combo (Everything Bagel)

footprint = () ->
  module_dx = 4
  module_dy = 4

  pad_dx = 0.35
  land_dx = 0.8
  pad_dy = 0.35

  pad_hadj = (3.06+land_dx)/2

  pad_between = 0.5

  n_left = 6
  n_down = 6
  n_up = 6
  n_right = 6

  lr_pad_from_bottom = 0.75
  ud_pad_from_bottom = 0.125

  lrpad_vadj = ((n_left - 1)/2)*pad_between
  lrpad_vadj -= module_dy/2
  lrpad_vadj += lr_pad_from_bottom

  udpad_vadj = (module_dy/2)
  udpad_vadj -= (pad_dx / 2) + ud_pad_from_bottom - (land_dx - pad_dx)/2

  r1 = make_rect module_dx, module_dy, 0.1, 'docu'
  r2 = make_rect module_dx + 0.2, module_dy+0.2, 0.1, 'silk'

  pad = new Smd
  pad.dx = land_dx
  pad.dy = pad_dy
  pad.ro = 0

  l1 = single pad, n_left, pad_between
  l1 = adjust_x l1, -pad_hadj
  l1 = adjust_y l1, lrpad_vadj

  l2 = rot_single (rotate90pad clone pad), n_down, pad_between
  l2 = adjust_y l2, -udpad_vadj
  l2 = generate_names l2, n_left

  l3 = single pad, n_left, pad_between
  l3 = reverse l3
  l3 = adjust_x l3, pad_hadj
  l3 = adjust_y l3, lrpad_vadj
  l3 = generate_names l3, n_left+n_down

  l4 = rot_single (rotate90pad clone pad), n_down, pad_between
  l4 = reverse l4
  l4 = adjust_y l4, udpad_vadj
  l4 = generate_names l4, n_left + n_down + n_right

  name= new Name (module_dy-0.5)

  pin1 = new Disc (0.25)
  pin1.x = -(module_dx / 2) - 6*ud_pad_from_bottom
  pin1.y = (module_dy / 2) - 6*ud_pad_from_bottom

  combine [r1, r2, l1, l2, l3, l4, name, pin1]