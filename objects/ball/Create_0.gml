//CREATE
vel_x = 0
vel_y = 0

cash_money = 0 

initial_speed = 0.5
click_boost = 2.2
my_friction = 0.96
bounce_mult = 1.3
speed_max = 20
boost_speed_increase = 10;

angle_lerp_rate = 0.1
bounce_angle = 25;

shake_time = 0;
shake_mag = 0;
shake_fade = 0.25;
shake = false;


function earn_money(){
    cash_money+=1
	var _number = instance_create_layer(x,y,"Instances",number);
	_number.color = image_blend;
	_number.xSpeed = sign(vel_x) * 5;
	_number.ySpeed += sign(vel_y) * 5;
	
    image_blend = make_color_hsv(random_range(0, 255), 240, 240);
}

function shakeScreen(_time, _mag, _fade){
    shake = true; 
    
    shake_time = _time;
    shake_mag = _mag;
    shake_fade = _fade;
}

function Boost()
{
	if(cash_money > 0)
	{
		cash_money -= 1;
		speed_max += boost_speed_increase;
	}
}