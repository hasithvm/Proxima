#format 1.2
#name HeadphoneJack
#id 35RASMT2BHNTRX
#desc Stereo Headphone Jack

footprint = () ->
  
  module_dx = 236mil
  module_dy = 571mil

  pad1_dx = 390mil/2 - 189mil/2
  pad1_dy = 94mil
  pad1_hadj = 189mil/2 + pad1_dx/2
  pad1_vadj = module_dy/2 - 169mil

  pad4_dx = 114mil
  pad4_dy = (390mil/2) - 87mil
  pad4_hadj = -(87mil + pad4_dx/2)
  pad4_vadj = module_dy/2 - 461mil


  pad5_dx = 390mil/2 - 189mil/2
  pad5_dy = 94mil
  pad5_hadj = -189mil/2 - pad5_dx/2
  pad5_vadj = module_dy/2 - 94mil


  pad1 = new Smd
  pad1.dx = pad1_dx
  pad1.dy = pad1_dy

  pad4 = new Smd
  pad4.dx = pad4_dx
  pad4.dy = pad4_dy

  pad5 = new Smd
  pad5.dx = pad5_dx
  pad5.dy = pad5_dy

  hole_between = 276mil
  hole = new Hole(63mil)

  r1 = make_rect module_dx, module_dy, 0.1, "docu"
  r2 = make_rect module_dx - 2, module_dy+0.2, 0.1, "silk"

  p1 = single pad1, 1, 0
  p1 = adjust_x p1, pad1_hadj
  p1 = adjust_y p1, pad1_vadj

  p4 = single pad4, 1, 0
  p4 = adjust_x p4, pad4_hadj
  p4 = adjust_y p4, pad4_vadj
  p4 = generate_names p4, 3

  p5 = single pad5, 1, 0
  p5 = adjust_x p5, pad5_hadj
  p5 = adjust_y p5, pad5_vadj
  p5 = generate_names p5, 4

  holes = single hole, 2, hole_between
  holes = adjust_y holes, module_dy/2 - hole_between/2 - 138mil

  name = new Name(-module_dy/2-1)

  combine [p1, p4, p5, holes, r1, r2, name]
