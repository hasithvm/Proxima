#format 1.2
#name QRE1113
#id 7b17f32b0c2f4aeaa962b4badeef0048
#desc Photodetector LED combo

footprint = () ->
  
  module_dx = 3.4
  module_dy = 2.7
  pad_dx = 1.1
  pad_dy = 1.0

  pad_between = 0.8
  pad_across = 2.8

  pad = new Smd
  pad.dx = pad_dx
  pad.dy = pad_dy
  
  n_left = 2
  n_right = 2

  pad_hadj = ((0.8 + pad_dy)/2)

  body = make_rect module_dx, module_dy, 0.1, "docu"
  gap = make_rect module_dx + 0.2, module_dy+0.2, 0.1, "silk"

  right = single pad, n_right, pad_across + pad_dx
  left = single pad, n_left, pad_across + pad_dx

  right = reverse right
  right = generate_names right, 0
  right = adjust_x right, (pad_between + pad_dx)/2

  left = adjust_x left, -(pad_between + pad_dx)/2
  left = generate_names left, n_right

  pin1 = new Disc(0.25)
  pin1.x = module_dx/2 + 1
  pin1.y = -(module_dy/2 + 1)

  name = new Name(module_dy+1)

  combine [body, gap, left, right, name, pin1]