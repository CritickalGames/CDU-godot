class_name HudManager
extends BaseManager

signal _sig_menu_spawn(menu: Control)
signal _sig_menu_unspawn(menu: Control)

#region Contrato
	#region hook
func _before_load() -> void:
	pass

func _before_validate(instance: Node) -> void:
	pass

func _after_validate(instance: Node) -> void:
	pass

func _after_add(instance: Node) -> void:
	pass
#endregion

#No sé si poner validación de instancia en éste manager
func _validate_instance(instance: Node) -> bool:
	#return instance is Control
	return true

func _on_content_loaded(instance: Node) -> void:
	_sig_menu_spawn.emit(instance)

func _on_content_removed(instance: Node) -> void:
	_sig_menu_unspawn.emit(instance)
#endregion

#region Contrato API
func spawn(menu: String) -> Node:
	return _load_and_add_child(menu, "MENU")
	
func unspawn(instancia: Node) -> void:
	delete_child(instancia)
#endregion

#region API
func input_debug_quit() -> void:
	pass
#endregion
