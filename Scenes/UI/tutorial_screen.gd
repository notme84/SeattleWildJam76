extends CanvasLayer

signal closing


func _ready():
	%BackButton.pressed.connect(on_quit)


func _input(event: InputEvent):
	if event.is_action_pressed("ui_cancel") || event.is_action_pressed("back"):
		Callable(on_quit).call_deferred()


func on_quit():
	closing.emit()
	queue_free()