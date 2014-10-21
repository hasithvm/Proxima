#format 1.2
#name NHD-C12832A1Z-NSW-BBW-3V3
#id NHD-C12832A1Z-NSW-BBW-3V3
#desc GLCD

footprint = () ->
  
  module_dx = 41.4
  module_dy = 24.3
  pad_dx = 0.75
  pad_dy = 1.2

  pad_between = 1.5

  slot_between = 34.6

  slot = new Hole(1.3)
  pad = new RoundPad(0.6,0.7)
  
  n_down = 17

  pad_hadj = module_dy/2-0.6
  slot_hadj = module_dy/2-2.55

  r1 = make_rect module_dx, module_dy, 0.1, "docu"
  r2 = make_rect module_dx + 0.2, module_dy+0.2, 0.1, "silk"

  h1 = rot_single slot, 2,  slot_between
  h1 = adjust_y h1, -slot_hadj

  l1 = rot_single pad, n_down, pad_between
  l1 = adjust_y l1, -pad_hadj
  l1[0].shape = 'rect'
  l1[0].dx = 1.3
  l1[0].dy = 1.3

  name = new Name(module_dy/2 + 2)

  combine [l1, r1, r2, name, h1]
