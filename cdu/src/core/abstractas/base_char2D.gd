@abstract
class_name BaseChar2D
extends CharacterBody2D

## Devuelve el sprite del personaje
@abstract func get_char_sprite2d() -> Sprite2D

## Si hay, devuelve el prite de la sombra del personaje
@abstract func get_shadow_sprite2d() -> Sprite2D
