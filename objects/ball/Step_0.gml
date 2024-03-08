if(x <= sprite_width / 2 || x >= room_width-(sprite_width/2)){
    vel_x *= -1
    image_angle = bounce_angle * sign(vel_x);
    earn_money()
}
if(y <= sprite_height / 2 || y >= room_height-(sprite_height / 2)){
    vel_y *= -1
    image_angle = bounce_angle * -sign(vel_y);
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


image_angle = lerp(image_angle, 0, angle_lerp_rate)

  y = clamp(y, sprite_height / 2, room_height - sprite_height/2)
   x = clamp(x, sprite_width / 2, room_width-(sprite_width/2))