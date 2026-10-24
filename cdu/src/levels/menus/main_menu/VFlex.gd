extends VFlowContainer

signal _sig_start(nivelUID: String)

@onready var v_box_lv: VBoxContainer = $VBoxSelector/VScrollBar/VBoxLV
@onready var option_button: OptionButton = $VBoxSelector/OptionButton
@onready var btn_jugar: TextureButton = $VBoxSelector/HBoxContainer/BtnJugar

var nivel_seleccionado: String

func _ready() -> void:
	_crear_botonoes_de_nivel()
	btn_jugar.pressed.connect(_on_nivel_seleccionado.bind(nivel_seleccionado))
	pass

func mover_a_posicion(vbox: Control, x: float, y: float) -> void:
	var objetivo : Vector2 = Vector2(x, y)
	# Si ya hay un tween moviendo el nodo, lo matamos para evitar conflictos
	# (Opcional, pero recomendado si el usuario spamea el botón)
	if has_meta("tween_activo") and get_meta("tween_activo").is_valid():
		get_meta("tween_activo").kill()

	var tween : Tween = create_tween()
	set_meta("tween_activo", tween) # Guardamos referencia por si necesitamos matarlo

	# Configuramos el estilo de movimiento
	tween.set_trans(Tween.TRANS_BOUNCE)
	tween.set_ease(Tween.EASE_OUT)

	# Aplicamos la interpolación a la posición
	tween.tween_property(vbox, "position", objetivo, 0.5)
	## TRANS Define la forma en la que se mueve (la curva matemática).
	#tween.set_trans(Tween.TRANS_BOUNCE) # Rebota al llegar
	#tween.set_trans(Tween.TRANS_ELASTIC) # Efecto resorte
	#tween.set_trans(Tween.TRANS_QUAD) # Curva cuadrática (suave)
	
	## Define dónde se aplica la aceleración o desaceleración (al principio, al final o en ambos).
	#tween.set_ease(Tween.EASE_IN)  # Empieza lento, termina rápido.
	#tween.set_ease(Tween.EASE_OUT) # Empieza rápido, termina lento (el más natural).
	#tween.set_ease(Tween.EASE_IN_OUT) # Lento al inicio y al final, rápido en el medio.

func _on_boton_presionado(uid: String) -> void:
	var dato: String = Global.obtener_seguro_str_del_dir(uid, option_button.get_item_text(option_button.selected), Global.NIVELES)

	if dato != "":
		btn_jugar.disabled = false
		nivel_seleccionado = dato
		print("Dato encontrado: ", dato)
	else:
		btn_jugar.disabled = true
		push_warning("El nivel no existen.")

func _on_nivel_seleccionado(uid: String) -> void:
	_sig_start.emit(uid)
	pass

func _crear_botonoes_de_nivel()->void:
	var index: int = 1 
	var boton: Button
	for lv: String in Global.NIVELES:
		boton= Button.new()
		boton.text = "NIVEL %d" % index 
		index += 1
		
		# Pasamos directamente el UID (lv) en el bind
		boton.pressed.connect(_on_boton_presionado.bind(lv))
		
		v_box_lv.add_child(boton)
