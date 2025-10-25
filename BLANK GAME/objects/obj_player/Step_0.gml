var direita = keyboard_check(ord("D"))
var esquerda = keyboard_check(ord("A"))
var cima = keyboard_check(ord("W"))
var baixo = keyboard_check(ord("S"))



velh = (direita - esquerda) * velocidade
repeat(abs(velh)){
	if(!place_meeting(x + (velh), y, obj_bloco_pai)){
		x += velh
	} else{
		velh = 0
	}
}

velv = (baixo - cima) * velocidade
repeat(abs(velv)){
	if(!place_meeting(x, y + (velv), obj_bloco_pai)){
		y += velv
	} else{
		velv = 0
	}
}

show_debug_message(global.vida)

if(mouse_check_button_pressed(mb_left)){
	var direcao = point_direction(x, y, mouse_x, mouse_y)
	var bullet = instance_create_layer(x, y, "Instances", obj_tiro)
	bullet.dir = direcao
}

if (speed != 0){
    image_angle = direction; 
}