#format 1.2
#name 2x5 Debug Header
#id 2x5 1.27mm TH
#desc Debug Header for Cortex-M JTAG/SWD

footprint = () ->

  nrows = 5
  ncols = 2

  pad_between = 1.27

  module_dx = pad_between * ncols
  module_dy = nrows * pad_between

  pad = new RoundPad(0.5, 0.65)
  r1 = make_rect module_dx, module_dy, 0.1, "docu"
  r2 = make_rect module_dx + 0.2, module_dy+0.2, 0.1, "silk"

  cols = []
  for i in [0...nrows]
    col = single pad, ncols, pad_between
    col = rotate90 col
    col = generate_names col, i*ncols
    col = adjust_y col, -i*pad_between
    cols = combine [cols, col]
  
  cols[0].shape = "rect"
  cols[0].dx = 1
  cols[0].dy = 1

  vadj = (nrows - 1)*(pad_between/2)

  cols = adjust_y cols, vadj

  name = new Name(module_dy/2+2)

  combine [cols, r1, r2, name]
