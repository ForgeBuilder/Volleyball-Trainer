extends Control

@export var PositionNodes : Array[Control]
#var Positions : Array[Vector2
@export var PlayerLabels : Array[Node]

var rotation_offset = 0

# Called when the node enters the scene tree for the first time.
#func _ready() -> void:
	#for position_node in PositionNodes:
		#Positions.append(position_node.position)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_rotate_button_down() -> void:
	rotation_offset+=1
	
	var i = 0
	for player_label : Control in PlayerLabels:
		player_label.reparent(PositionNodes[(rotation_offset+i)%6])
		#player_label.global_position = PositionNodes[(rotation_offset+i)%6].global_position
		i+=1
