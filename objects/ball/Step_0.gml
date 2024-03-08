/// @description Insert description here
// You can write your code in this editor
if(x <= 0 || x >= room_width-sprite_width){
	vel_x *= -1
	earn_money()
}
if(y <= 0 || y >= room_height-sprite_height){
	vel_y *= -1
	earn_money()
}

if(keyboard_check_pressed(vk_anykey)){
	vel_x*= click_boost
	vel_y*= click_boost
	if(vel_x == 0 and vel_y == 0){
		vel_x = random_range(-1,1)*initial_speed
		vel_y = random_range(-1,1)*initial_speed
	}
}

vel_x*=my_friction
vel_y*=my_friction

x+=vel_x
y+=vel_y