//Press enter to reutn to map
AA=show_question("Return to map?")
if(AA=1){
	global.hp=16
	room_goto(room_map)
}
