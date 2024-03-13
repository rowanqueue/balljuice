var topBlend;
var bottomBlend = make_color_hsv(0,0,130);

if (ball.cash_money < cost) {
	topBlend = make_color_hsv(0,100,240);
	bottomBlend = make_color_hsv(0,100,160);
} else {
	if (hover && clicked <= 0) { 
		topBlend = make_color_hsv(0,0,240)
	} else {
		topBlend = make_color_hsv(0,0,200)
	}
}

draw_set_valign(fa_center);
draw_set_halign(fa_center);
draw_set_color(c_black);

var str = text + " (Cost: " + string(cost) + ")";
if clicked <= 0 {
	draw_sprite_ext(spr_button,0,x,y+10,image_xscale,image_yscale,0,bottomBlend,1)
	draw_sprite_ext(spr_button,0,x,y,image_xscale,image_yscale,0,topBlend,1)
	draw_text(x+(sprite_width/2),y+(sprite_height/2),str)
} else {
	draw_sprite_ext(spr_button,0,x,y+10,image_xscale,image_yscale,0,topBlend,1)
	draw_text(x+(sprite_width/2),y+(sprite_height/2)+10,str)
}