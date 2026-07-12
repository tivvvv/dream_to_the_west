# 角色唐僧
class_name TangSeng extends CharacterBody2D

## 角色属性相关
# 角色移动速度
var move_speed:float = 200
# 角色下坠速度
var gravity:float = 980
# 玩家的操作方向
var direct:float
# 角色朝向
var facing_direct:float

## 变换角色朝向
@onready var move_x: Node2D = $Move_X

func _physics_process(delta: float) -> void:
	direct = Input.get_axis("A_Move", "D_Move")
	if not is_zero_approx(direct):
		facing_direct = sign(direct)
		move_x.scale.x = facing_direct

	velocity.x = direct * move_speed
	velocity.y += gravity * delta
	move_and_slide()
	
pass
