extends Node

signal score_update
signal lives_update

var score = 0 setget set_score
var lives = 1 setget set_lives

func reset():
	self.score = 0
	self.lives = 1

func set_score(new_score: int) -> void:
	score = new_score
	emit_signal("score_update")


func set_lives(new_value: int) -> void:
	lives = new_value
	emit_signal("lives_update")
