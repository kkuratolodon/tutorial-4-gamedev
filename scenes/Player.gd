extends CharacterBody2D

signal update_hp(new_hp: int)

@export var speed: int = 400
@export var gravity: int = 1200
@export var jump_speed: int = -400
@export var last_scene: String = "Level1"
var _hp = 6

func get_input():
	velocity.x = 0
	if is_on_floor() and Input.is_action_just_pressed("jump"):
		velocity.y = jump_speed
	if Input.is_action_pressed("right"):
		velocity.x += speed
	if Input.is_action_pressed("left"):
		velocity.x -= speed


func _physics_process(delta):
	velocity.y += delta * gravity
	get_input()
	move_and_slide()

func get_damage(damage):
	_hp -= damage
	print(_hp)
	update_hp.emit(_hp)
	if _hp <= 0:
		LoseScreen.last_level = last_scene
		get_tree().change_scene_to_file(str("res://scenes/LoseScreen.tscn"))
		

func _process(_delta):
	
	if not is_on_floor():
		$Animator.play("Jump")
	elif velocity.x != 0:
		$Animator.play("Walk")
	else:
		$Animator.play("Idle")

	if velocity.x != 0:
		if velocity.x > 0:
			$Sprite2D.flip_h = false
		else:
			$Sprite2D.flip_h = true
