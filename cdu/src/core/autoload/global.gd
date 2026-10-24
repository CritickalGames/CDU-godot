# Global.gd (Autoload singleton)
extends Node

const ESCENAS : Dictionary=\
{
	TEST_PLAYER2D = "uid://bk2cu2ameptuy",
	MAIN_MENU     = "uid://6gt31cj52gpk",
	NIVELES_2D    = {
		TEST_LEVEL_02 = "uid://kikf44gko1yv",
		},
	NIVELES_3D    = {},
	NIVELES_2_5D  = {},
}

enum _niv {N2, N3, N25}

const CONVERTIR_NIVELES : Dictionary = {"NIVEL 2D"=_niv.N2, "NIVEL 3D" =_niv.N3, "NIVEL 2.5D"=_niv.N25}

const NIVELES : Dictionary = \
{
	LV1 = {
		_niv.N2: ESCENAS.NIVELES_2D.TEST_LEVEL_02,
		_niv.N3: "",
		_niv.N25: "",},
	LV2 = {},
	LV3 = {},
}

## Carga e instancia una escena con validación de tipo personalizada.
func load_and_instantiate(
	scene_uid: String, 
	error_context: String = "resource"
) -> Node:
	
	var packed_scene: PackedScene = ResourceLoader.load(scene_uid, "PackedScene") as PackedScene
	
	if packed_scene == null:
		push_error("Could not load %s: %s" % [error_context, scene_uid])
		return null
	
	var instance: Node = packed_scene.instantiate()
	
	if not instance:
		push_error("Could not instantiate %s: %s" % [error_context, scene_uid])
		return null

	return instance

func obtener_seguro_str_del_dir(indx1: String, indx2: String, _global: Dictionary) -> String:
	var datos_nivel: Dictionary = _global.get(indx1, {})

	var convertido: int = CONVERTIR_NIVELES[indx2]

	if not datos_nivel.has(convertido):
		return ""

	return str(datos_nivel[convertido])
