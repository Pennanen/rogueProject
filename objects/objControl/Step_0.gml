/// @description Press "F1" for Fullscreen Toggle
if keyboard_check_pressed(vk_f1)
{
    //Toggle Fullscreen
    if window_get_fullscreen()
    {
        window_set_fullscreen(false)
        window_set_size(__view_get( e__VW.WView, 0 )*scale,__view_get( e__VW.HView, 0 )*scale)
        }
        else
        {
         window_set_fullscreen(true)
     }
      window_set_size(__view_get( e__VW.WView, 0 )*scale,__view_get( e__VW.HView, 0 )*scale)
}


