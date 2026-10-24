class_name EffectManager
extends BaseManager

#region Estado
# EffectManager no necesita señales propias porque no tiene estado especial.
# Usa las señales genéricas de BaseManager: content_added y content_removed
#endregion

#region Implementación del contrato
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
	# FUTURE: Cambiar a una clase base de efectos cuando exista
	return true

func _on_content_loaded(instance: Node) -> void:
	# Sin lógica adicional: las señales genéricas de BaseManager son suficientes
	pass

func _on_content_removed(instance: Node) -> void:
	# Sin lógica adicional: las señales genéricas de BaseManager son suficientes
	pass
#endregion

#region API pública
func spawn(effect_scene_uid: String) -> Node:
	return _load_and_add_child(effect_scene_uid, "effect")

func unspawn(instance: Node) -> void:
	if not is_instance_valid(instance):
		return
	if instance.get_parent() != self:
		push_error("unspawn: instance is not a child of EffectManager")
		return
	instance.queue_free()
	_on_content_removed(instance)

# FUTURE: Métodos de conveniencia para spawnear efectos con posición
# func spawn_effect_at(effect_uid: String, position: Vector2) -> Node:
# 	var effect = spawn(effect_uid)
# 	if effect:
# 		effect.global_position = position
# 	return effect
#endregion
