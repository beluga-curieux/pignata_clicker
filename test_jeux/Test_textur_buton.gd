extends TextureButton
var screen_size
var i = 0

signal tap

# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size = get_viewport_rect().size
	rotation = 0
	pivot_offset = (size/2)
	position = (screen_size - size) / 2
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_button_down():
	tap.emit()
	i += 1
	if $AnimationPlayer.is_playing():
		$AnimationPlayer.stop()
	
	if randi() % 2 :
		$AnimationPlayer.play("animation droite")
	else:
		$AnimationPlayer.play("animation gauche")
		
	

