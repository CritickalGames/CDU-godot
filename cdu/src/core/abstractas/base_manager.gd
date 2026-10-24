@abstract
class_name BaseManager
extends Node
## Contrato abstracto para todos los managers de capas del mundo.
## Las clases hijas DEBEN implementar todos los métodos abstractos.
## Las señales son responsabilidad de cada clase hija.
## HERENCIA: delete_child(child), clear_all(), _load_and_add_child(scene_uid: String, error_context: String)

#region contrato
# ═══════════════════════════════════════════════════════════════
# MÉTODOS ABSTRACTOS OBLIGATORIOS
# ═══════════════════════════════════════════════════════════════

#region Hooks del ciclo de vida
## Se llama ANTES de iniciar la carga de una escena.
## Útil para: pausar el juego, mostrar pantalla de carga, limpiar estado previo.
@abstract func _before_load() -> void

## Se llama DESPUÉS de cargar la escena pero ANTES de validar el tipo.
## Útil para: inspeccionar la instancia cruda, logging, métricas.
@abstract func _before_validate(instance: Node) -> void

## Se llama DESPUÉS de validar el tipo pero ANTES de añadir al árbol.
## Útil para: configurar propiedades del nodo antes de que entre al SceneTree.
@abstract func _after_validate(instance: Node) -> void

## Se llama INMEDIATAMENTE DESPUÉS de añadir el nodo al árbol.
## Útil para: configurar referencias, conectar señales, posicionar el nodo.
@abstract func _after_add(instance: Node) -> void
#endregion

## Valida si la instancia cargada es del tipo esperado por este manager.
## Cada manager define qué tipo de nodo debe gestionar (ej: BaseLevel, Player, Effect).
## Si retorna false, la instancia se libera y se reporta un error.
@abstract func _validate_instance(instance: Node) -> bool

## Se llama cuando una instancia ha sido añadida exitosamente al árbol.
## Útil para: actualizar referencias internas, emitir señales específicas del dominio.
@abstract func _on_content_loaded(instance: Node) -> void

## Se llama cuando una instancia está siendo eliminada del árbol.
## Útil para: limpiar referencias internas, emitir señales específicas del dominio.
@abstract func _on_content_removed(instance: Node) -> void

#region API pública abstracta
## Crea una nueva instancia a partir de un UID de escena.
## Cada manager implementa su propia lógica de spawn según su dominio:
## - LevelManager: reemplaza el nivel actual si existe
## - EntityManager: añade una nueva entidad (enemigo, NPC, etc.)
## - EffectManager: crea un efecto visual/sonoro
@abstract func spawn(scene_uid: String) -> Node

## Elimina una instancia específica gestionada por este manager.
## Cada manager valida que la instancia sea de su dominio antes de eliminarla.
@abstract func unspawn(instance: Node) -> void
#endregion
#endregion

#region herencia
# ═══════════════════════════════════════════════════════════════
# MÉTODOS CONCRETOS
# ═══════════════════════════════════════════════════════════════

## Elimina un hijo específico y notifica su eliminación.
## Usa queue_free() para eliminación diferida (segura).
func delete_child(child: Node) -> void:
	child.queue_free()
	_on_content_removed(child)

## Elimina todos los hijos gestionados de forma segura.
## Itera sobre todos los hijos y los elimina uno por uno.
func clear_all() -> void:
	for child: Node in get_children():
		delete_child(child)

## Helper interno: carga, valida, añade al árbol y notifica.
## Las clases hijas usan esto dentro de su implementación de spawn().
## Flujo completo:
## 1. _before_load() → 2. Cargar escena → 3. _before_validate() →
## 4. _validate_instance() → 5. _after_validate() → 6. add_child() →
## 7. _after_add() → 8. _on_content_loaded()
func _load_and_add_child(scene_uid: String, error_context: String) -> Node:
	_before_load()

	var instance: Node = Global.load_and_instantiate(scene_uid, error_context)
	if instance == null:
		return null

	_before_validate(instance)

	if not _validate_instance(instance):
		instance.free()
		push_error("Loaded %s failed validation: %s" % [error_context, scene_uid])
		return null

	_after_validate(instance)

	add_child(instance)
	_after_add(instance)
	_on_content_loaded(instance)

	return instance
#endregion
