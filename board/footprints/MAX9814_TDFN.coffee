#format 1.2
#name MAX9814
#id MAX9814_TDFN
#desc Mic Preamp

footprint = () ->

  module_dx = 3
  module_dy = 3

  pad_dx = 0.7
  pad_dy = 0.2

  n_pins = 14

  pad_between = 2.95

  r1 = make_rect module_dx, module_dy, 0.1, "docu"
  r2 = lines 0.1, [[-module_dx/2-0.1, -module_dy/2],[-module_dx/2-0.1, module_dy/2]]
  r3 = lines 0.1, [[module_dx/2+0.1, -module_dy/2],[module_dx/2+0.1, module_dy/2]]


  pad = new Smd
  pad.dx = pad_dx
  pad.dy = pad_dy

  l1 = rot_dual pad, n_pins, 0.4, pad_between

  cpad = new Smd
  cpad.dx = 2.35
  cpad.dy = 1.78

  l2 = single cpad, 1, 0
  generate_names l2, 6

  pin1 = new Disc(0.4)
  pin1.x = -module_dx/1.5
  pin1.y = -module_dy/1.5

  name = new Name(module_dy)

  combine [r1, r2, r3, l1, l2, pin1, name]
