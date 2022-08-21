with (fire cristal) {
action_kill_object();
}
script_execute(stop all sound,0,0,0,0,0);
action_sound(win, 0);
global.firecristal = 1;
action_message("Fire Cristal Obtained. Slugma has evolved! Returning to main base...");
action_kill_object();
action_another_room(main);
