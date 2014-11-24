#format 1.2
#name TPS63001
#id TPS63001
#desc Buck-boost power regulator

footprint = () ->
  module_dx = 3
  module_dy = 3

  pad_dx = (3.8 - 2.1)/2
  land_dx = 0.3
  pad_dy = (3.8 - 2.1)/2

  pad_hadj = (3.06+land_dx)/2

  pad_between = 0.5

  n_left = 5
  n_right = 5

  lr_pad_from_bottom = 0.75
  ud_pad_from_bottom = 0.125

  lrpad_vadj = pad_dy/2 + 2.1/2

  r1 = make_rect module_dx, module_dy, 0.1, 'docu'

  pad = new Smd
  pad.dx = land_dx
  pad.dy = pad_dy
  pad.ro = 0

  tpad = new Smd
  tpad.dx = 2.4
  tpad.dy = 1.65

  tpad_arm = new Smd
  tpad_arm.dx = 0.7
  tpad_arm.dy = 0.28

  l1 = rot_single pad, n_left, -pad_between
  l1 = adjust_y l1, lrpad_vadj

  l3 = rot_single pad, n_left, -pad_between
  l3 = reverse l3
  l3 = adjust_y l3, -lrpad_vadj
  l3 = generate_names l3, n_left

  t1 = single tpad, 1, 0
  t1 = generate_names t1, n_left - 1

  arm_between = 2.4 + tpad_arm.dx
  t2 = dual tpad_arm, 4, 0.5, arm_between

  for smd in t2
    smd.name = n_left

  sline = new Line(0.1)
  sline.y1=-0.4
  sline.y2=0.4

  sline_gap = module_dy - (sline.y2 - sline.y1)
  s1 = dual sline, 4, sline_gap, module_dx

  name= new Name (module_dy)

  pin1 = new Disc (0.25)
  pin1.x = (module_dx / 2) + 6*ud_pad_from_bottom
  pin1.y = (module_dy / 2) - 6*ud_pad_from_bottom

  combine [r1, l1, l3, name, pin1, t1, t2, s1]
