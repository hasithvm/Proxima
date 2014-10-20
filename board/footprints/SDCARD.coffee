#format 1.2
#name SDCARD
#id SDCARD
#desc MicroSD Card socket

footprint = () ->
  
  module_dx = 13.75
  module_dy = 14.5

  gpad_between = 8.3
  n_gpad = 4

  gpad_dx = 1.45
  gpad_dy = 2
  gpad_offset = -gpad_between/2 + gpad_dy/2 + 2.55

  pad_between = 1.1
  n_pad = 8

  pad_dx = 0.8
  pad_dy = 1.5
  pad_hoffset = -module_dx/2 + 3.5*pad_between + 2.38
  pad_voffset = gpad_offset - gpad_between/2 + 2.6

  r1 = make_rect module_dx-gpad_dx-0.2, module_dy, 0.1, 'docu'
  r2 = make_rect module_dx-gpad_dx, module_dy+0.2, 0.1, 'silk'

  gpad = new Smd
  gpad.dx = gpad_dx
  gpad.dy = gpad_dy
  gpad.ro = 0

  pad = new Smd
  pad.dx = pad_dx
  pad.dy = pad_dy
  pad.ro = 0

  l1 = rot_single pad, n_pad, pad_between
  l1 = reverse l1
  l1 = adjust_y l1, pad_voffset
  l1 = adjust_x l1, pad_hoffset
  l1 = generate_names l1, 0

  name = new Name (module_dy/2 - 1)

  g1 = dual gpad, n_gpad, gpad_between, module_dx
  g1 = adjust_y g1, gpad_offset
  for smd in g1
    smd.name = 6

  combine [g1, r1, r2, l1, name]
