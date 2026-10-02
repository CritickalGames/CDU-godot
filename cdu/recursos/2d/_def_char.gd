class_name Def_char_2d
extends Resource
## Proporciona el recurso PackedScene, la textura de vista previa
### y la configuración de aparición para los enemigos.
@export var name : String
@export_group("Preview")
## Escena que contiene al enemigo que será generado
@export var escena : PackedScene
## Imagen mostrada en el editor para representar al enemigo que será generado
@export var preview_texture : Texture2D 

@export_group("Stats")
@export_subgroup("int")
@export var vida : int
@export_subgroup("float")
@export var speed : float
@export var aceleracion: float
