#format 1.2
#name TMP100
#id TMP100_SOT32-6
#desc Temperature Sensor

footprint = () ->
  
  module_dx = 3.05
  module_dy = 1.75
  pad_dx = 0.75
  pad_dy = 1.2

  pad_between = 0.95

  pad = new Smd
  pad.dx = pad_dx
  pad.dy = pad_dy
  
  n_down = 3
  n_up = 3

  pad_hadj = (2.7)/2

  r1 = make_rect module_dx, module_dy, 0.1, "docu"
  r2 = make_rect module_dx + 0.2, module_dy+0.2, 0.1, "silk"

  l1 = rot_single pad, n_down, pad_between
  l1 = adjust_y l1, -pad_hadj

  l2 = rot_single pad, n_up, pad_between
  l2 = reverse l2
  l2 = adjust_y l2, pad_hadj
  l2 = generate_names l2, n_down

  name = new Name(module_dy+3)

  combine [l1, l2, r1, r2, name]
