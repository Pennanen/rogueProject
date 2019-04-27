/// @description
/*
*/
viewx = camera_get_view_x(view_camera[0]);
viewy = camera_get_view_y(view_camera[0]);

vieww = camera_get_view_width(view_camera[0]);
viewh = camera_get_view_height(view_camera[0]);


activex[0] = viewx+vieww/2-81;
activey[0] = viewy+viewh-32;

activex[1] = viewx+vieww/2-27;
activey[1] = viewy+viewh-32;

activex[2] = viewx+vieww/2+27;
activey[2] = viewy+viewh-32;

activex[3] = viewx+vieww/2+81;
activey[3] = viewy+viewh-32;

for(i=0;i<inventorySize;i++)
{
invx[i] = viewx+vieww/2-230+i*44;
invy[i] = viewy+viewh-32;
}