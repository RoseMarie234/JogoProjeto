extends Area2D

@onready var player = $"../Player"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	if body.name == "Player":
		print("Morraaa")
		player._levouDano()
		#await $CollisionShape2D.call_deferred("queue_free")
		await $AnimatedSprite2D.animation_finished
		queue_free()
