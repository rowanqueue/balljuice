if (hover && clicked <= 0)
{ 
	image_blend = make_color_hsv(0,0,240)
} else {
	image_blend = make_color_hsv(0,0,200)
}

draw_set_valign(fa_center);
draw_set_halign(fa_center);
draw_set_color(c_black);

if clicked <= 0 {
	draw_sprite_ext(spr_button,0,x,y+10,image_xscale,image_yscale,0,(make_color_hsv(0,0,130)),1)
	draw_sprite_ext(spr_button,0,x,y,image_xscale,image_yscale,0,image_blend,1)
	draw_text(x+(sprite_width/2),y+(sprite_height/2),text)
} else {
	draw_sprite_ext(spr_button,0,x,y+10,image_xscale,image_yscale,0,image_blend,1)
	draw_text(x+(sprite_width/2),y+(sprite_height/2)+10,text)
}