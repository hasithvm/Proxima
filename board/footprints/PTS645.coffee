#format 1.2
#name PTS645
#id PTS645
#desc Pushbutton Switch

footprint = () ->
  
  module_dx = 6
  module_dy = 6
  pad_dx = (5.8-3.2)/2
  pad_dy = (9.5-6.4)/2

  pad_between_y = 6.4 + pad_dy/2
  pad_between_x = 3.2 + pad_dx/2

  pad = new Smd
  pad.dx = pad_dx
  pad.dy = pad_dy
  
  n_down = 2

  r1 = make_rect module_dx, module_dy, 0.1, "docu"
  r2 = make_rect module_dx - 2, module_dy-2, 0.1, "silk"

  l1 = dual pad, 4, pad_between_y, pad_between_x
  l1 = mirror_y l1

  l1[1].name = 1
  l1[2].name = 2
  l1[3].name = 2

  name = new Name(module_dy)

  combine [l1, r1, r2, name]
