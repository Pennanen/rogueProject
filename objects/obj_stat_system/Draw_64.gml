/// @description
/*
*/

var base = 292;
draw_set_color(c_white);
draw_set_font(font0);
draw_set_halign(fa_left);
draw_set_valign(fa_center);
draw_text(16,base,"DMG: "+string(playerDAMAGE));
draw_text(16,base+32,"SPD: "+string(playerSPEED));
draw_text(16,base+64,"GAIN: "+string(manaGAIN));

draw_text(16,base+128,"KNOCKBACK: "+string(musketKNOCKBACK));
draw_text(16,base+160,"Bullet SPD: "+string(bulletSPEED));
draw_text(16,base+192,"CLIP: "+string(musketSHOTS));
draw_text(16,base+224,"BARRELS: "+string(bulletsPerShot));