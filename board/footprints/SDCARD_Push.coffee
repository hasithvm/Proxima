#format 1.2
#name SDCARD_Push
#id SDCARD_Push
#desc Push Pull MicroSD Card socket (104031-0811)

footprint = () ->

  module_dx = 11.95
  module_dy = 11.4
  silk_dy = 11.4

  pad_between = 1.1
  n_pad = 8

  pad_dx = 0.85
  pad_dy = 1.1
  pad_hoffset = -7*pad_between/2 +3.105
  pad_voffset = silk_dy/2 - module_dy + pad_dy/2 - 0.3

  r1 = make_rect module_dx, silk_dy, 0.1, 'docu'
  r2 = make_rect module_dx+0.2, silk_dy+0.2, 0.1, 'silk'
  r3 = make_rect module_dx+0.2, module_dy+0.2, 0.1, 'silk'
  r3 = adjust_y r3, (silk_dy - module_dy)/2

  pad = new Smd
  pad.dx = pad_dx
  pad.dy = pad_dy
  pad.ro = 0

  g1pad = new Smd
  g1pad.dx = 1.55
  g1pad.dy = 1.35
  g1pad.ro = 0

  g2pad = new Smd
  g2pad.dx = 1.17
  g2pad.dy = 1.8
  g2pad.ro = 0

  gtoppad = new Smd
  gtoppad.dx = 1.9
  gtoppad.dy = 1.35
  gtoppad.ro = 0

  g1 = single g1pad, 1, 0
  g1 = adjust_x g1, g1pad.dx/2 + 4.79
  g1 = adjust_y g1, pad_voffset - pad_dy/2 + g1pad.dy/2
  g1 = generate_names g1, 5

  g2 = single g2pad, 1, 0
  g2 = adjust_x g2, -g2pad.dx/2 - 5.17
  g2 = adjust_y g2, pad_voffset - pad_dy/2 + g2pad.dy/2
  g2 = generate_names g2, 5

  gtop = rot_single gtoppad, 2, 5.97
  gtop = adjust_x gtop, gtoppad.dx/2 - 2.985 + 1.29
  gtop = adjust_y gtop, silk_dy/2 - gtoppad.dy/2 + 0.35
  for smd in gtop
    smd.name = 6

  dpad = new Smd
  dpad.dx = 1.2
  dpad.dy = 1.0
  dpad.ro = 0

  dpad_between = 9.6-5.9
  d1 = single dpad, 2, dpad_between
  d1 = adjust_x d1, dpad.dx/2 + 5.17
  d1 = adjust_y d1, pad_voffset - pad_dy/2 + dpad.dy/2 + dpad_between/2 + 5.9 + 0.3
  d1 = generate_names d1, n_pad

  l1 = rot_single pad, n_pad, pad_between
  l1 = reverse l1
  l1 = adjust_y l1, pad_voffset
  l1 = adjust_x l1, pad_hoffset
  l1 = generate_names l1, 0
  l1[7].dx = 0.75
  l1[7].x = l1[7].x + 0.05

  name = new Name (module_dy/2 + 1.5)

  combine [r1, r2, l1, name, g1, gtop, g2, d1]