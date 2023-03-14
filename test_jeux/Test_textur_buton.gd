extends TextureButton

var i = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	print('zzef')
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_button_down():
	print("salut " + str(i))
	i += 1
	

