class_name LevelManager
extends BaseManager

#region Estado
signal _sig_spawned(level: BaseLevel)
signal _sig_unspawned(level: BaseLevel)


var _current_level: BaseLevel = null
#endregion

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

func _validate_instance(instance: Node) -> bool:
	return instance is BaseLevel

func _on_content_loaded(instance: Node) -> void:
	_current_level = instance as BaseLevel
	_sig_spawned.emit(_current_level)

func _on_content_removed(instance: Node) -> void:
	if instance == _current_level:
		_sig_unspawned.emit(_current_level)
		_current_level = null
#endregion

#region API CONTRATO
func spawn(level_scene_uid: String) -> Node:
	if is_instance_valid(_current_level):
		_current_level.queue_free()
		_on_content_removed(_current_level)
	return _load_and_add_child(level_scene_uid, "level")

func unspawn(instance: Node) -> void:
	if not is_instance_valid(instance):
		return
	if instance != _current_level:
		push_error("unspawn: instance is not the current level")
		return
	instance.queue_free()
	_on_content_removed(instance)
#endregion

#region API Pública
func get_current_level() -> BaseLevel:
	return _current_level
#endregion
