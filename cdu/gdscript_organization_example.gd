#region Etiquetas
@tool # or @abstract (if either is needed)
@icon("res://path/to/icon.svg")
# Tipo de script
class_name PascalCase

extends Node
#endregion

## Brief description of class
##
## Longer documentation goes here

#region signals
@warning_ignore("unused_signal")
signal something_happened(value : int)
#endregion

#region enums (PascalCase, members are CONSTANT_CASE)
enum EnumName
{
  ITEM_1,
  ITEM_2
}
#endregion
#region DECLARACIONES
 #region constants (CONSTANT_CASE)
const CONSTANT_VARIABLE : float = 9.42
 #endregion

 #region export variables (snake_case)
@export var exported_variable : float = 0.0
 #endregion

 #region public variables (non-underscore-prefixed snake_case)
var is_a_public_variable : bool = true
 #endregion

 #region private variables (underscore-prefixed _snake_case)
@warning_ignore("unused_private_class_variable")
var _this_is_private : int = 42
 #endregion

 #region onready variables (snake_case)
@onready var on_ready_var : Sprite2D = $Sprite2D
 #endregion

#endregion

# Optional built-in virtual methods:
## _init()
## _enter_tree()
## _ready()
#endregion

#region Remaining built-in virtual methods
func _ready() -> void:
  pass

func _process(_delta: float) -> void:
  pass

func _physics_process(_delta: float) -> void:
  pass

#endregion

#region FN PERSONALIZADAS
 #region public methods (non-underscore-prefixed snake_case)
func do_a_thing(the_thing : int) -> void: #int es un ejemplo
  pass
 #endregion

 #region private methods (underscore-prefixed _snake_case)
func _do_a_thing_but_private() -> void:
  pass
 #endregion

 #region Callback/eventos
func _on_a_thing_happening() -> void:
  pass
 #endregion
#endregion

#region Inner class
class InnerClassName:
  pass
#endregion
