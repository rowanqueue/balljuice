//CREATE
vel_x = 0
vel_y = 0

cash_money = 0 

initial_speed = 0.5
click_boost = 3
my_friction = 0.99

angle_lerp_rate = 0.1
bounce_angle = 25;

shake_time = 0;
shake_mag = 0;
shake_fade = 0.25;
shake = false;


function earn_money(){
    cash_money+=1
    image_blend = make_color_hsv(random_range(0, 255), 240, 240);
}

function shakeScreen(_time, _mag, _fade){
    shake = true; 
    
    shake_time = _time;
    shake_mag = _mag;
    shake_fade = _fade;
}