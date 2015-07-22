#format 1.2
#name MCP6001R
#id   SOT23-5
#desc MCP6001R | SOT23-5

footprint = () ->
  
  module_dx = 3.1
  module_dy = 1.8
  pad_dx = 1.1
  pad_dy = 0.6

  pad_between_y = 2.8
  pad_between_x =0.95

  pad = new Smd
  pad.dx = pad_dx
  pad.dy = pad_dy
  
  n_down = 2

  r1 = make_rect module_dx, module_dy, 0.1, "docu"
  r1 = make_rect 3.1,1.7, 0.01, "docu"

  r2 = make_rect module_dx - 0.75, module_dy - 0.2, 0.1, "silk"

  l1 = single  pad, 3, pad_between_x
  l1 = generate_names (rotate90 l1)
  adjust_y l1, -pad_between_y / 2
  l2 = rotate270(single pad ,2 , 1.9)
  generate_names l2, 3
  adjust_y l2, pad_between_y / 2
  
  pin_1 = new Disc(0.2)
  pin_1.x = -module_dx / 2 
  pin_1.y = -module_dy / 2

  name = new Name(2*module_dy)

  combine [l1, l2, r1, r2, pin_1, name]
