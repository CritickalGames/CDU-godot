class_name MenuManager
extends BaseManager

signal _sig_ask_quit()
signal _sig_ask_start(UID: String)

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
	instance._sig_set_visibility.connect(_on_set_visibility.bind(instance))
	if instance is MenuMain:
		instance._sig_ask_quit.connect(_sig_ask_quit.emit)
		instance._sig_ask_start.connect(_sig_ask_start.emit)

func _on_content_removed(instance: Node) -> void:
	pass
#endregion

#region Contrato API
func spawn(menu: String) -> Node:
	return _load_and_add_child(menu, "MENU")

func unspawn(instancia: Node) -> void:
	delete_child(instancia)
#endregion

#region _on_
func _on_set_visibility(instance: Control) -> void: # No estoy seguro si subir esta función o dejarla acá
	instance.visible = !instance.visible 

#endregion
