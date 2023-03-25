extends AnimationPlayer


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func adapt(scale, target_scale, angle, target_angle):
	var animation = Animation.new()
	var track_1 = animation.add_track(Animation.TYPE_VALUE)
	var lib = AnimationLibrary.new()
	animation.track_set_path(track_1, ":scale")
	animation.track_insert_key(track_1, 0.0, 0.5)
	
	animation.track_insert_key(track_1, 1.0, 1)
	
	animation.track_insert_key(track_1, 2.0, 0.5)
	
	lib.add_animation("anim", animation)

	self.add_animation_library("lib", lib)
	
	
	
	
