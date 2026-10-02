@tool
extends EditorScript

## Aplica la configuración base del proyecto utilizada por éste proyecto.
## Cada entrada del diccionario corresponde a una propiedad dentro de Project Settings.
const PROJECT_SETTINGS : Dictionary = {

	## Resolución interna horizontal del juego.
	"display/window/size/viewport_width": 640,

	## Resolución interna vertical del juego.
	"display/window/size/viewport_height": 360,

	## Escala los CanvasItems (sprites, UI, etc.) en lugar del viewport completo.
	"display/window/stretch/mode": "canvas_items",

	## Mantiene la relación de aspecto original añadiendo bandas negras si es necesario.
	"display/window/stretch/aspect": "keep",

	## Fuerza escalado en enteros (1x, 2x, 3x...) ideal para pixel art.
	"display/window/stretch/scale_mode": "integer",

	## Versión actual del proyecto.
	"application/config/version": "0.1.0",

	## Anulación manual del ancho de ventana.
	## 0 significa utilizar el valor por defecto.
	"display/window/size/window_width_override": 0,

	## Anulación manual del alto de ventana.
	## 0 significa utilizar el valor por defecto.
	"display/window/size/window_height_override": 0,

	## Activa HDR 2D para permitir efectos visuales más avanzados
	## como bloom y altas intensidades de color.
	"rendering/viewport/hdr_2d": true,

	## Configura el filtrado de texturas por defecto como Nearest.
	## Evita el suavizado y mantiene los píxeles nítidos.
	"rendering/textures/canvas_textures/default_texture_filter": Viewport.DEFAULT_CANVAS_ITEM_TEXTURE_FILTER_NEAREST
}

## Define los nombres visibles de las capas de colisión/física 2D.
const PHYSICS_2D_LAYERS : Dictionary = {

	## Capa utilizada para el mundo.
	1: "World",

	## Capa utilizada para el jugador.
	2: "Player",

	## Capa utilizada para enemigos.
	3: "Enemy",

	## Capa utilizada para objetos interactivos.
	4: "Interactable",
}

## Define los nombres visibles de las capas de renderizado 2D.
const RENDER_2D_LAYERS : Dictionary = {

	## Render principal del escenario.
	1: "World",

	## Capa destinada a resplandores del cielo.
	2: "Sky Glow",

	## Capa destinada a brasas, fuego o efectos luminosos.
	3: "Ember Glow",
}


func _run() -> void:

	## Aplica todas las configuraciones definidas en PROJECT_SETTINGS.
	_apply_project_settings()

	## Aplica los nombres personalizados de capas.
	_apply_layer_names()

	## Guarda el archivo project.godot con los cambios realizados.
	var error : Error = ProjectSettings.save()

	if error == OK:
		print("Project setup settings saved.")
	else:
		push_error("Project settings could not be saved. Error: " + str(error))


func _apply_project_settings() -> void:

	## Recorre todas las configuraciones definidas
	## y las escribe en Project Settings.
	for setting_path: String in PROJECT_SETTINGS:
		ProjectSettings.set_setting(setting_path, PROJECT_SETTINGS[setting_path])


func _apply_layer_names() -> void:

	## Registra los nombres personalizados de las capas de física.
	for layer_number: int in PHYSICS_2D_LAYERS:
		ProjectSettings.set_setting(
			"layer_names/2d_physics/layer_%d" % layer_number,
			PHYSICS_2D_LAYERS[layer_number]
		)

	## Registra los nombres personalizados de las capas de render.
	for layer_number: int in RENDER_2D_LAYERS:
		ProjectSettings.set_setting(
			"layer_names/2d_render/layer_%d" % layer_number,
			RENDER_2D_LAYERS[layer_number]
		)
