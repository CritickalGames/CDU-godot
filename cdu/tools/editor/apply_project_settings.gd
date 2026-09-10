@tool
extends EditorScript

## Applies the baseline project settings used by this project.
const PROJECT_SETTINGS : Dictionary = {
	"display/window/size/viewport_width": 640,
	"display/window/size/viewport_height": 360,
	"display/window/stretch/mode": "canvas_items",
	"display/window/stretch/aspect": "keep",
	"display/window/stretch/scale_mode": "integer",
	"application/config/version": "0.1.0",
	"display/window/size/window_width_override": 2000,
	"display/window/size/window_height_override": 1200,
	"rendering/viewport/hdr_2d": true,
	"rendering/textures/canvas_textures/default_texture_filter": Viewport.DEFAULT_CANVAS_ITEM_TEXTURE_FILTER_NEAREST
}

const PHYSICS_2D_LAYERS : Dictionary = {
	1: "World",
	2: "Player",
	3: "Enemy",
	4: "Interactable",
}

const RENDER_2D_LAYERS : Dictionary = {
	1: "World",
	2: "Sky Glow",
	3: "Ember Glow",
}


func _run() -> void:
	_apply_project_settings()
	_apply_layer_names()

	var error : Error = ProjectSettings.save()

	if error == OK:
		print("Project setup settings saved.")
	else:
		push_error("Project settings could not be saved. Error: " + str(error))


func _apply_project_settings() -> void:
	for setting_path: String in PROJECT_SETTINGS:
		ProjectSettings.set_setting(setting_path, PROJECT_SETTINGS[setting_path])


func _apply_layer_names() -> void:
	for layer_number: int in PHYSICS_2D_LAYERS:
		ProjectSettings.set_setting(
			"layer_names/2d_physics/layer_%d" % layer_number,
			PHYSICS_2D_LAYERS[layer_number]
		)

	for layer_number: int in RENDER_2D_LAYERS:
		ProjectSettings.set_setting(
			"layer_names/2d_render/layer_%d" % layer_number,
			RENDER_2D_LAYERS[layer_number]
		)
