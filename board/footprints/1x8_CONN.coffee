#format 1.2
#name 1x8_Headers
#id 1x8_CONN
#desc 1 column, 8 rows of 0.1 headers

footprint = () ->

  nrows = 8
  ncols = 1

  pad_between = 100mil

  module_dx = pad_between * ncols
  module_dy = nrows * pad_between

  pad = new RoundPad(0.7, 0.7)
  
  r1 = make_rect module_dx, module_dy, 0.1, "docu"
  r2 = make_rect module_dx + 0.2, module_dy+0.2, 0.1, "silk"

  cols = []
  for i in [0..ncols-1]
    if i & 1 == 1
      col = single pad, nrows, -pad_between
    else
      col = single pad, nrows, pad_between
    col = generate_names col, i * nrows
    col = adjust_x col, i * pad_between
    cols = combine [cols, col]

  cols[0].shape = "rect"
  cols[0].dx = 1.4
  cols[0].dy = 1.4

  hadj = (ncols - 1)*(pad_between/2)

  cols = adjust_x cols, -hadj

  name = new Name(module_dy/2+2)

  combine [cols, r1, r2, name]
