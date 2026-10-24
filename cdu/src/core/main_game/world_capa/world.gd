class_name WorldCapa
extends Node
## Coordina las capas del mundo: Level, Entity y Effect.
## Patrón Facade: simplifica la interfaz para MainGame.
## Es la interfaz para llegar a los Root

#region Señales reenviadas
signal _sig_level_spawn(level: BaseLevel)
signal _sig_level_unspawn(level: BaseLevel)
#endregion

#region Referencias a managers
@onready var level_manager: LevelManager = $LevelRoot
@onready var entity_manager: EntityManager = $EntityRoot
@onready var effect_manager: EffectManager = $EffectRoot
#endregion

#region Ciclo de vida
func _ready() -> void:
	level_manager._sig_spawned.connect(_sig_level_spawn.emit)
	level_manager._sig_unspawned.connect(_sig_level_unspawn.emit)
#endregion

#region API pública
	#region API LEVEL
func spawn_level(level_scene_uid: String) -> void:
	level_manager.spawn(level_scene_uid)
	await get_tree().process_frame # Espera a que el árbol se actualice
	spawn_player_in_current_level()
#endregion
	#region API Entity
func spawn_player_in_current_level() -> void:
	var current_level: BaseLevel = level_manager.get_current_level()
	if current_level:
		entity_manager.spawn_player_at_spanwer(current_level)
		entity_manager.setup_level_camera(current_level)
#endregion
	#region API EFFECT
#endregion

func cleanup_world() -> void:
	level_manager.clear_all()
	entity_manager.clear_all()
	effect_manager.clear_all()
#endregion
