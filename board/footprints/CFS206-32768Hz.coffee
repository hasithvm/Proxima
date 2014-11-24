#format 1.2
#name XTAL-32K
#id CFS206-32.768KDZBB
#desc 32.768KHz XTAL


footprint = () ->

  module_radius=1.9
  module_dy= 6

  pad_dx = 0.35
  pad_dy = 0.35

  pad_between = 0.7
  r1 = make_rect module_radius, module_dy+module_radius, 0.1, "docu"
  r2 = make_rect module_radius, module_dy, 0.1, "silk"
  r2 = rotate90 r2
  r1 = rotate90 r1
  r1 = adjust_x r1, (module_dy/2)
  r2 = adjust_x r2, (module_radius/2)+(module_dy/2)
 
  pad_vadj = (pad_between/2)

  pad = new RoundPad 0.3, 0.26
  pad.dx = 0
  pad.y = -pad_vadj

  pad2 = clone pad
  pad.y = pad_vadj

  pin1 = new Disc(0.25)
  pin1.x = -module_radius
  pin1.y = module_radius /2
  base = new Circle(0.1)
  base.r = module_radius / 2
  name = new Name(module_radius+1)



  combine [r1, r2, pad, pad2, base, pin1, name]