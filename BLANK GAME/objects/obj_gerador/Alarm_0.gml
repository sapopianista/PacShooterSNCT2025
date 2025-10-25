px = irandom(room_width)
py = irandom(room_height)

instance_create_layer(px, py, "Instances", obj_inimigo_filho);

alarm[0] = room_speed *2