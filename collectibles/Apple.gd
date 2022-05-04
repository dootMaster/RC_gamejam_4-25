extends Area2D

func _ready():
	pass

func _on_Apple_body_entered(body):
	$AnimationPlayer.play("bounce")
	
func _on_AnimationPlayer_animation_finished(anim_name):
	queue_free()
