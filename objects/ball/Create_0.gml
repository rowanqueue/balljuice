vel_x = 0
vel_y = 0

cash_money = 0 

initial_speed = 0.5
click_boost = 3
my_friction = 0.99

angle_lerp_rate = 0.1
bounce_angle = 25;

function earn_money(){
    cash_money+=1
	image_blend = make_color_hsv(random_range(0, 255), 240, 240);
}