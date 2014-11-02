#format 1.2
#name MCP4902
#id MCP4902
#desc DAC

footprint = () ->
  module_dx = 3.0
  module_dy = 8.65

  pad_dx = 1.45
  pad_dy = 0.45
  pad_between = 1.27

  row_between = 5.4

  pad = new Smd
  pad.dx = pad_dx
  pad.dy = pad_dy

  l1 = dual pad, 14, pad_between, row_between

  r1 = make_rect module_dx, module_dy, 0.1, 'docu'  
  r2 = make_rect module_dx+0.2, module_dy+0.2, 0.1, 'silk'

  name= new Name (module_dy)

  pin1 = new Disc (0.25)
  pin1.x = -module_dx/2 + 0.5
  pin1.y = module_dy/2 - (module_dy - pad_between * 6)/2

  combine [r1, r2, l1, pin1, name]
