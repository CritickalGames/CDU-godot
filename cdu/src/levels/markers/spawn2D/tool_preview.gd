@tool
extends Sprite2D

## Script de herramienta para la vista previa del sprite que actualiza
## la previsualización del spawner en el editor

const NULL_SPRITE : Texture2D = preload("uid://b7pulqk7anp83")
var _previous_texture : Texture2D = NULL_SPRITE

## Se utiliza para que la comprobación periódica no sea tan frecuente
@onready var preview_refresh_timer : Timer = $PreviewRefreshTimer

func _ready() -> void:
	if not Engine.is_editor_hint():
		queue_free()
		return
	preview_refresh_timer.timeout.connect(_on_refresh_timeout)
	preview_refresh_timer.start(1)
	_on_refresh_timeout()

## compureba si su padre es un Spawner
### consigue el "resourse" .char_2d de tipo Def_char_2d
### el recurso da una imagen para la previsualización en el editor.
func _on_refresh_timeout() -> void:
	var spawner : Spawner = get_parent() as Spawner
	if spawner == null:
		return

	## Comprueba si se ha agregado una nueva textura y, si es así,
	### la asigna. También se asegura de no volver a asignar la misma
	### textura una y otra vez.
	var definition : Def_char_2d = spawner.char_2d

	var new_texture : Texture2D = \
	 definition.preview_texture if (definition and definition.preview_texture) else NULL_SPRITE

	if new_texture == _previous_texture:
		return

	_previous_texture = new_texture
	texture = new_texture
