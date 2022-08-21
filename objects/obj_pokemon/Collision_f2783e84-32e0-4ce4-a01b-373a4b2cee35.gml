with (fire cristal) {
action_kill_object();
}
script_execute(stop all sound,0,0,0,0,0);
action_sound(win, 0);
global.earthcristal = 1;
action_message("Earth Cristal Obtained. Aron evolved! Returning to main base...");
action_kill_object();
action_another_room(main);
