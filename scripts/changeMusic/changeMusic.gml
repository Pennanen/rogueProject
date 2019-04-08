var target = argument0;
var spd = argument1;
var maxG = argument2;
if (instance_exists(obj_change_music)){instance_destroy(obj_change_music)};
c = instance_create_depth(x,y,0,obj_change_music);
c.maxGain = maxG;
c.spd = spd;
c.targetAudio = target;
