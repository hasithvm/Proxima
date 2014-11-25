#format 1.2
#name DaughterBoard
#id DaughterBoard
#desc Board to Board interface for Daughterboard

footprint = () ->

  pad_between = 100mil

  outer_sep = 1400mil
  inner_hadj = outer_sep/2 - 100mil

  module_dx = outer_sep + pad_between
  module_dy = 8*pad_between

  pad = new RoundPad(0.8,1)
  
  n_outer = 16
  n_inner = 8

  r1 = make_rect module_dx, module_dy, 0.1, "docu"
  r2 = make_rect module_dx + 0.2, module_dy+0.2, 0.1, "silk"

  louter = dual pad, n_outer, pad_between, outer_sep
  linner = single pad, n_inner, pad_between
  linner = generate_names linner, n_outer
  linner = adjust_x linner, inner_hadj

  name = new Name(module_dy/2+2)
  name = adjust_x name, module_dx/2 - 3

  name2 = new Name(module_dy/2+2)
  name2 = adjust_x name2, -module_dx/2 + 3

  combine [louter, linner, r1, r2, name, name2]
