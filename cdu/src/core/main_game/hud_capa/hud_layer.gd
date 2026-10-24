class_name HudCapa
extends CanvasLayer

signal _sig_ask_quit()
signal _sig_ask_start(UID: String)

const MAIN_MENU_PATH: String = Global.ESCENAS.MAIN_MENU
@onready var menu_root: MenuManager = $MenuRoot


#region API
func spawn_main_menu()->void:
	var main_menu : Node = spawn_menu(MAIN_MENU_PATH)
	main_menu._sig_ask_quit.connect(_sig_ask_quit.emit)
	main_menu._sig_ask_start.connect(_sig_ask_start.emit)

func spawn_menu(UID: String)->Node:
	return menu_root.spawn(UID)

func unspawn_menu(intancia : Node)->void: menu_root.unspawn(intancia)

#endregion

#region _on_ask_
#endregion
