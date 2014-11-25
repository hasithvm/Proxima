#format 1.2
#name CMA-4544
#id CMA-4544
#desc Microphone


footprint = () ->

  module_radius=9.7

  pad_dx = 0.35
  pad_dy = 0.35

  pad_between = 2.54

  r1 = make_rect module_radius, module_radius, 0.1, "docu"
  r2 = new Circle(0.1)
  r2.r = module_radius/2
   
  pad_vadj = (pad_between/2)

  pad = new RoundPad 0.5, 0.5

  pads = rot_single pad, 2, pad_between
  pads = adjust_y pads, 2

  name = new Name(module_radius+1)

  combine [r1, r2, pads, name]