#format 1.2
#name IRLML6402
#id   IRLML6402 P-Type
#desc IRLML6402 | SOT-23

footprint = () ->
  
  module_dx = 3
  module_dy = 1.4
  pad_dx = 0.802
  pad_dy = 0.972

  pad_between_y = 2.742 - pad_dy
  pad_between_x = 1.9

  pad = new Smd
  pad.dx = pad_dx
  pad.dy = pad_dy
  
  n_down = 2

  r1 = make_rect module_dx, module_dy, 0.1, "docu"
  r1 = make_rect module_dx, 2.742, 0.1, "docu"

  r2 = make_rect module_dx, module_dy, 0.1, "silk"

  l1 = single  pad, 2, pad_between_x
  l1 = generate_names (rotate90 l1)
  adjust_y l1, -pad_between_y / 2
  l2 = clone pad
  adjust_y l2, pad_between_y / 2
  l2.name = "3"
 

  name = new Name(2*module_dy)

  combine [l1, l2, r1, r2, name]
