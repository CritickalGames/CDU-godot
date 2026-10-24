class_name MenuMain
extends Control #Pendiente crear un padre propio


signal _sig_ask_start(UID: String)
signal _sig_ask_quit()
signal _sig_set_visibility()

const ESCENA_ASK : String = Global.ESCENAS.NIVELES_2D.TEST_LEVEL_02
@onready var animation_tree: AnimationTree = $AnimationTree
@onready var VFLEX : Control = %VFlex

var boxMain : Vector2 

func _ready() -> void:
	VFLEX._sig_start.connect(_on_level_selected)
	pass

func _on_btn_start_requested() -> void:
	boxMain = VFLEX.position
	VFLEX.mover_a_posicion(VFLEX, -933, boxMain.y)
	pass

func _on_btn_quit_requested() -> void:
	_sig_ask_quit.emit()

func _on_level_selected(UID: String) -> void:
	_sig_ask_start.emit(ESCENA_ASK)
	_sig_set_visibility.emit()
