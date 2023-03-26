extends Node

var i
# Called when the node enters the scene tree for the first time.
func _ready():
	i = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$HUD.update_scor(i)



func _on_bouton_anime_button_down():
	i += 1
