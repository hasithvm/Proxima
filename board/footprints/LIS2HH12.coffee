#format 1.2
#name LIS2HH12
#id LIS2HH12-LGA12
#desc LGA-12 LIS2HH12 Accelerometer

footprint = () ->
    module_dx = 2
    module_dy = 2
    
    module_inner = 9.15
    gnd_pad_side = 1.7
    pad_dx = 0.375
    pad_dy = 0.35
    pad_spacing = 0.5
    pads_per_side = 4
    row_spacing = module_dx/2 - pad_dx/2 - 0.1 
    r1 = make_rect module_dx, module_dy, 0.1, 'docu'
    r2 = make_rect module_dy, module_dx, 0.1, 'silk'
    mask_open =make_rect pad_spacing*3 + pad_dy+0.05, pad_dx+0.05, 0.01, 'stop'
    mask_open_bt = clone mask_open
    mask_open_left = rotate90(clone mask_open)
    mask_open_right = clone mask_open_left 
    adjust_x mask_open_right, row_spacing
    adjust_x mask_open_left, -row_spacing
    adjust_y  mask_open_bt, -row_spacing
    adjust_y mask_open, row_spacing
   

    pin_1 = new Disc(1)
    pin_1.x = - module_dx / 2
    pin_1.y = module_dy / 2
    pin_1.r = 0.1

    gnd_pad = new Smd
    gnd_pad.dx = gnd_pad_side
    gnd_pad.dy = gnd_pad_side
    gnd_pad.name = 16

    pad = new Smd 
    pad.dx = pad_dx
    pad.dy = pad_dy
    pad.ro = 0

    
    top = single pad, 2, pad_spacing
    top = rotate270 top
    top = adjust_y top, row_spacing
    top = generate_names top, 10
    right = single pad, pads_per_side, pad_spacing
    right = reverse right
    right = adjust_x right, row_spacing
    right = generate_names right, 6

    bt = rot_single (rotate90pad clone pad), 2, pad_spacing    
    bt = adjust_y bt, -row_spacing
    bt = generate_names bt, pads_per_side

    left = single pad, pads_per_side, pad_spacing
    left = adjust_x left, -row_spacing
    left = generate_names left, 0


    name = new Name(module_dy)
    combine [r1, r2, top, right, bt, left, pin_1, mask_open, mask_open_bt, mask_open_left, mask_open_right, name]
