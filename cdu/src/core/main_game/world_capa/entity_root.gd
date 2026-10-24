class_name EntityManager
extends BaseManager

#region Estado
signal _sig_spawned(player: Player)
signal _sig_unspawned(player: Player)



var player_escena: Player = null:
	set(value):
		if value == player_escena:
			return
		if is_instance_valid(player_escena):
			_sig_unspawned.emit(player_escena)
		if is_instance_valid(value):
			_sig_spawned.emit(value)
			player_escena = value
		else:
			push_error("nuevo player invalido")
	get:
		return player_escena
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
	return instance is Player

func _on_content_loaded(instance: Node) -> void:
	# El setter se encarga de emitir la señal automáticamente
	#if instance is Player:
		#player_escena = instance as Player
	pass

func _on_content_removed(instance: Node) -> void:
	# El setter se encarga de emitir la señal automáticamente
	#if instance == player_escena:
		#player_escena = null
	pass
#endregion

#region Ciclo de vida
func _ready() -> void:
	#spawn(PLAYER_SCENE_UID)
	pass
#endregion

#region API pública
func spawn(entity_scene_uid: String) -> Node:
	return _load_and_add_child(entity_scene_uid, "entity")

func unspawn(instance: Node) -> void:
	if not is_instance_valid(instance):
		return
	if instance.get_parent() != self:
		push_error("unspawn: instance is not a child of EntityManager")
		return
	instance.queue_free()
	_on_content_removed(instance)

func spawn_player_at_spanwer(level: BaseLevel) -> void:
	player_escena = spawn(level.get_spawner().PLAYER)
	if player_escena == null:
		push_error("Cannot place player: player is null")
		return
	if level == null:
		push_error("Cannot place player: level is null")
		return

	player_escena.global_position = level.get_default_player_spawn()
	push_warning(level.get_default_player_spawn())

func setup_level_camera(level: BaseLevel) -> void:
	if player_escena == null or level == null:
		return

	var level_camera: Camera2D = level.get_player_camera()
	if level_camera == null:
		return

	# FUTURE (camera): Temporary hookup
	level_camera.target = player_escena
#endregion
