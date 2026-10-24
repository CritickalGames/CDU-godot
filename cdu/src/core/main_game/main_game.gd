class_name MainGame
extends Node
## Pide y ordena
##
## Escucha a sus capas y las comunica entr esí. Da la orden de iniciar y poco más.
## Las funciones están aún por definir, pero "quit" es una orden de MainGame
#region [Constantes y Rutas] TODO:REASIGNAR
#const LEVEL_SELECTOR_PATH: String = Global.ESCENAS.LEVEL_SELECTOR
#endregion

#region Referencias
@onready var WORLD_CAPA: WorldCapa = $World
@onready var HUD_CAPA  : HudCapa   = $HudLayer
#endregion

func _ready() -> void:
	_conectar_eventos()
	HUD_CAPA.spawn_main_menu()

#region API Pública
func quit_game() -> void:
	get_tree().root.propagate_notification(NOTIFICATION_WM_CLOSE_REQUEST)
	get_tree().quit()
#endregion

#region _on_ask_
func _on_ask_quit() -> void: quit_game()
func _on_ask_start(UID: String) -> void: 
	await WORLD_CAPA.spawn_level(UID)
#endregion

#region privado
func _conectar_eventos()->void:
	HUD_CAPA._sig_ask_quit.connect(_on_ask_quit)
	HUD_CAPA._sig_ask_start.connect(_on_ask_start)
#endregion
