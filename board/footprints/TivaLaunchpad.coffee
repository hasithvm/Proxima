#format 1.2
#name TivaC
#id TivaLaunchpad
#desc Tiva C launchpad

footprint = () ->

  pad_between = 100mil

  outer_sep = 1800mil
  inner_sep = 1600mil

  module_dx = outer_sep + pad_between
  module_dy = 10*pad_between

  pad = new RoundPad(0.7, 0.7)
  
  n_outer = 20
  n_inner = 20

  pad_hadj = (2.7)/2

  r1 = make_rect module_dx, module_dy, 0.1, "docu"
  r2 = make_rect module_dx + 0.2, module_dy+0.2, 0.1, "silk"

  louter = dual pad, n_outer, pad_between, outer_sep
  linner = dual pad, n_inner, pad_between, inner_sep
  linner = generate_names linner, n_outer

  name = new Name(module_dy/2+2)
  name = adjust_x name, module_dx/2 - 3

  name2 = new Name(module_dy/2+2)
  name2 = adjust_x name2, -module_dx/2 + 3


  combine [louter, linner, r1, r2, name, name2]
