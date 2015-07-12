#format 1.2
#name CC3200MOD
#id CC3200R1M2AMOB
#desc Footprint for CC3200R1M2 MOB

footprint = () ->
    module_dx = 20.5
    module_dy = 17.5
    module_inner = 9.15
    gnd_pad_side = 7.25
    pad_dx = 0.8
    pad_dy = 0.8
    pad_inner_dx = 2
    pad_inner_dy = 2
    pad_spacing = 1.27
    pad_inner_spacing = 1 + pad_inner_dx
    pads_per_side_x = 16
    pads_per_side_y = 11


    r1 = make_rect module_dx, module_dy, 0.1, 'docu'
    r2 = make_rect module_dx, module_dy, 0.1, 'silk'
    
    pin_1 = new Disc(1)
    pin_1.x = -module_dx / 2 - 0.5
    pin_1.y = -module_dy / 2- 0.5
    pin_1.r = 0.6

    pad = new Smd 
    pad.dx = pad_dx
    pad.dy = pad_dy

    
    bt = single pad, pads_per_side_x, pad_spacing
    bt = rotate90 bt
    bt = adjust_y bt, -(module_dy/2 - 0.3 - pad_dy/2)

    right = single pad, pads_per_side_y, pad_spacing
    right = adjust_x right, -(module_dx/2 - 0.3 - pad_dx/2)
    right = generate_names right, 2*pads_per_side_x + pads_per_side_y


    top = single pad, pads_per_side_x, pad_spacing
    top = rotate270 top
    top = adjust_y top, (module_dy/2 - 0.3 - pad_dy/2)
    top = generate_names top, pads_per_side_x+pads_per_side_y

    left = reverse (single pad, pads_per_side_y, pad_spacing)
    left = adjust_x left, module_dx/2 -0.3 - pad_dx/2
    left = generate_names left, pads_per_side_x
    
    pad_inner = new Smd
    pad_inner.dx = pad_inner_dx
    pad_inner.dy = pad_inner_dy
 
   
    pad_grid = grid pad_inner, 3,3, pad_inner_spacing
    pad_grid = pad_grid
    pad_grid = adjust_y (adjust_x pad_grid, -pad_inner_dx/2 - 0.5), -(pad_inner_dy/2 + 0.5)
    pad_grid = generate_names pad_grid, 2*pads_per_side_x + 2*pads_per_side_y

    name = new Name(module_dy * 0.6)
    combine [r1, r2, right, bt, top,left, pin_1, pad_grid, name]