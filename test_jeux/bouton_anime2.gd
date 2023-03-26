extends TextureButton
var screen_size

var scale_tween
var rotation_tween

var rotation_direction

var default_scal
var default_rotation
var default_position
# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size = get_viewport_rect().size
	
	set_anchors_preset(Control.PRESET_CENTER)
	
	default_scal = scale
	default_rotation = rotation
	default_position = (screen_size - size) / 2
	
	rotation_direction = 1
	
	print("init button")

	pivot_offset = (size/2)
	position = default_position
	position.y *= 0.95


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	

func _on_button_down():
	animated_scale(0.9)
	animated_rotation(5)
	

func animated_rotation(angle):
	
	if rotation_tween:
		reset()
		rotation_tween.kill() # Abort the previous animation.
	rotation_tween = create_tween()
	
	rotation_tween.tween_property(self, "rotation_degrees", angle * rotation_direction, 0.1).set_trans(Tween.TRANS_CIRC)
		
	rotation_tween.tween_property(self, "rotation_degrees", 0, 0.1).set_trans(Tween.TRANS_CIRC)
	
	rotation_direction *= -1

func animated_scale(scale_coef):
	
	if scale_tween:
		reset()
		scale_tween.kill() # Abort the previous animation.
	scale_tween = create_tween().bind_node(self).set_ease(Tween.EASE_OUT)
	
	scale_tween.tween_property(self, "scale", scale * scale_coef, 0.1)
	scale_tween.tween_property(self, "scale", default_scal, 0.1)
	


func reset():
	scale = default_scal
	# position = default_position
	rotation = default_rotation
	
	
