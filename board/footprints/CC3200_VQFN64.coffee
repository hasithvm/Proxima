#format 1.2
#name CC3200R1M2RGCR
#id VQFN64
#desc Footprint for CC3200R1M2RGCR

footprint = () ->
    module_dx = 9.8
    module_dy = 9.8
    module_inner = 9.15
    gnd_pad_side = 7.25
    pad_dx = 0.85
    pad_dy = 0.28
    pad_spacing = 0.5
    pads_per_side = 16
    r1 = make_rect module_dx, module_dy, 0.1, 'docu'
    r2 = make_rect module_dy, module_dx, 0.1, 'silk'
    mask_open = make_rect module_inner , module_inner, 0.1, 'stop'
    
    pin_1 = new Disc(1)
    pin_1.x = module_dx / 2
    pin_1.y = module_dy / 2
    pin_1.r = 0.3

    gnd_pad = new Smd
    gnd_pad.dx = gnd_pad_side
    gnd_pad.dy = gnd_pad_side
    gnd_pad.name = 65

    pad = new Smd 
    pad.dx = pad_dx
    pad.dy = pad_dy
    pad.ro = 100

    
    top = single pad, pads_per_side, pad_spacing
    top = rotate270 top
    top = adjust_y top, module_dy/2 - 0.5
    #top = generate_names top, 3*pads_per_side

    right = single pad, pads_per_side, pad_spacing
    right = reverse right
    right = adjust_x right, module_dx/2 - 0.5
    right = generate_names right, 48

    bt = rot_single (rotate90pad clone pad), pads_per_side, pad_spacing    
    bt = adjust_y bt, -module_dy/2 + 0.5
    bt = generate_names bt, pads_per_side*2

    left = single pad, pads_per_side, pad_spacing
    left = adjust_x left, -module_dx/2 + 0.5
    left = generate_names left, pads_per_side
    t_via = new SquarePad(0.254, 0.3556)
    t_vias = single t_via, 7, 1
 

    name = new Name(module_dy * 0.75)
    combine [r1, r2, top, right, bt, left, mask_open, pin_1, t_vias, name]
