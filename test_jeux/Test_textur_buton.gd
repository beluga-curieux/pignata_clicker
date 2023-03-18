extends TextureButton
var screen_size
var i = 0

signal tap

# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size = get_viewport_rect().size
	print('zzef')
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_button_down():
	tap.emit()
	i += 1
	print("salut " + str(i))
	if $AnimationPlayer.is_playing():
		$AnimationPlayer.stop()
		
	$AnimationPlayer.play("scal animation")
	

