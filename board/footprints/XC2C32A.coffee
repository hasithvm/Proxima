#format 1.2
#name CoolrunnerII
#id XC2C32A
#desc Coolrunner II CPLD

footprint = () ->

  module_side = 9

  n_side = 11
  pad_between = 0.8

  module_gap = 0.8

  pad_length = 1.6
  pad_width = 0.5
  pad_gap = (module_side + module_gap + pad_length / 2) / 2

  pad = new Smd
  pad.dx = pad_length
  pad.dy = pad_width

  l1 = single pad, n_side, pad_between
  adjust_x l1, -pad_gap
  l2 = clone l1
  rotate90 l2
  generate_names l2, n_side
  l3 = clone l2
  rotate90 l3
  generate_names l3, n_side*2
  l4 = clone l3
  rotate90 l4
  generate_names l4, n_side*3

  r1 = make_rect module_side, module_side, 0.1, 'docu'
  r2 = make_rect module_side, module_side, 0.1, 'silk'

  pin1 = new Disc (0.4)
  pin1.x = -(module_side / 2) - 1
  pin1.y = (module_side / 2) + 1

  name = new Name (module_side - 1)

  combine [r1, r2, l1, l2, l3, l4, name, pin1]
