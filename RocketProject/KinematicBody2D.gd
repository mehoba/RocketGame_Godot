extends KinematicBody2D

var velocity = Vector2(0,0)

func _physics_process(delta):
	if Input.is_action_pressed("right"):
		velocity.x = 100
	if Input.is_action_pressed("left"):
		velocity.x = -100
	
	velocity.y=60 
	
	if Input.is_action_pressed("up"):
		velocity.y=-100
	move_and_slide(velocity)
	
	velocity.x=lerp(velocity.x,0,0.1)


func _on_Area2D_body_entered(body):
	get_tree().change_scene("res://MainScene.tscn")
	
