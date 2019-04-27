/// @description
/*
*/
if (armed){
e = instance_create_depth(x,y,depth,obj_explosion_red);
e.damage = damage;
instance_destroy();}