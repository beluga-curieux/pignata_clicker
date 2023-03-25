extends TextureButton
var screen_size
var tw = create_tween()

# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size = get_viewport_rect().size
	rotation = 0
	pivot_offset = (size/2)
	position = (screen_size - size) / 2


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	

func _on_button_down():
	print()
	if tw.is_running() == null:
		print("fe")
	tw.stop()
	tw.tween_property(self, "scale", Vector2(), 1)	
	tw.tween_property(self, "scale", Vector2(1, 1), 1)
