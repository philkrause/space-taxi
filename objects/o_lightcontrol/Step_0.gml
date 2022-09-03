var surf = surface_create(room_width,room_height);

surface_set_target(surf)

draw_clear(c_black);
surface_reset_target();



with (o_vehiclelight1)
    {

        gpu_set_blendmode(bm_src_color);

        draw_sprite_ext(s_light1,0,x*other.SurfScale,y*other.SurfScale,LightSize*other.SurfScale,LightSize*other.SurfScale,0,c_white,LightStrength);
        gpu_set_blendmode(bm_normal);
    }

surface_reset_target();

draw_surface_ext(surf,0,0,1/SurfScale,1/SurfScale,0,c_white,.8);