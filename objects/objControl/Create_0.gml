/// @description Randomize
//randomize();




///Set screen scale variable
//Disable the Application Surface
application_surface_draw_enable(false);
surface_resize(application_surface,__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ))

//set initial scale
scale=1;
if !window_get_fullscreen()
{
window_set_size(__view_get( e__VW.WView, 0 )*scale,__view_get( e__VW.HView, 0 )*scale)
}

//display size
screen_w = display_get_width();
screen_h = display_get_height();

//actual application surface size
app_w = __view_get( e__VW.WView, 0 )
app_h = __view_get( e__VW.HView, 0 )

//rounded scalint for pixel perfect
app_xscal = ceil(screen_w / app_w);
app_yscal = ceil(screen_h / app_h);

//up-scaled surface 
screen_sur = surface_create(app_w * app_xscal, app_h * app_yscal);

    if window_get_fullscreen()
    {
    }
    else
    {
    window_set_fullscreen(true)
    }
    window_set_size(__view_get( e__VW.WView, 0 )*scale,__view_get( e__VW.HView, 0 )*scale)

///Goto next room
room_goto_next();


