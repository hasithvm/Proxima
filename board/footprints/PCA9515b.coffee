#format 1.2
#name PCA9515B
#id PCA9515B_DGK8
#desc Temperature Sensor

footprint = () ->
  
  module_dx = 3.0
  module_dy = 3.0
  pad_dx = 1.45
  pad_dy = 0.45

  pad_between = 0.65

  pad = new Smd
  pad.dx = pad_dx
  pad.dy = pad_dy
  
  n_right = 4
  n_left = 4

  pad_hadj = (4.4)/2

  r1 = make_rect module_dx, module_dy, 0.1, "docu"
  r2 = make_rect module_dx + 0.2, module_dy+0.2, 0.1, "silk"

  l1 = single pad, n_left, pad_between
  l1 = adjust_x l1, -pad_hadj

  l2 = single pad, n_right, pad_between
  l2 = reverse l2
  l2 = adjust_x l2, pad_hadj
  l2 = generate_names l2, n_left

  name = new Name(module_dy)

  combine [l1, l2, r1, r2, name]
