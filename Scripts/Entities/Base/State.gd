# 状态基类脚本
class_name State extends Node

signal transitition

func enter() -> void:
	pass

func exit() -> void:
	pass
	
func update(_delta: float) -> void:
	pass

func physics_update(_delta: float) -> void:
	pass
