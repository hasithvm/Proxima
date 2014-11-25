#format 1.2
#name CAP_8x6.2
#id CAP_8x6.2
#desc 8mm dia cap, 6.2mm long


footprint = () ->

  module_dy = 8
  module_dx = 8

  pad_dx = 2.5
  pad_dy = 4
  pad_between = 0.8

  pad_between = 0.25
  pad_between_horiz = 0.3
  body = make_rect module_dx, module_dy, 0.1, "docu"

  pad = new Smd
  pad.dx = pad_dx
  pad.dy = pad_dy
  pad.ro = 0

  sline = new Line(0.1)
  sline.x1 = -(module_dx/2)
  sline.y1 = -(module_dy/2)
  sline.x2 = -(module_dx/2)
  sline.y2 = (module_dy/2 - pad_dy/2)

  sline2 = new Line(0.1)
  sline2.x1 = -(module_dx/2)
  sline2.y1 = (module_dy/2 - pad_dy/2)
  sline2.x2 = -(module_dx/2 - pad_dy/2)
  sline2.y2 = (module_dy/2)

  sline3 = new Line(0.1)
  sline3.x1 = (module_dx/2)
  sline3.y1 = -(module_dy/2)
  sline3.x2 = (module_dx/2)
  sline3.y2 = (module_dy/2 - pad_dy/2)

  sline4 = new Line(0.1)
  sline4.x1 = (module_dx/2)
  sline4.y1 = (module_dy/2 - pad_dy/2)
  sline4.x2 = (module_dx/2 - pad_dy/2)
  sline4.y2 = (module_dy/2)

  pads = single pad, 2, pad_between + pad_dy*2

  name = new Name(module_dy+0.5)
  name.dy = 0.8

  combine [sline, sline2, sline3, sline4, body, pads, name]