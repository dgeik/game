extends Node3D

static var stats : Dictionary = {
	"hp" : 10,
	"speed" : 3,
	"jump_force" : 2,
	"flower_from_bullet" : 0.0,
	"magnet_radius" : 1,
	"fire" : 0, #при получении урона врагом, он накидывает на
	# свой показатель горения горение игрока,
	# и когда настакивается до Х значения, начинает гореть
	"extra_bullet_damage": 0.0,
	"extra_bullet_count": 0,
	"knockback_hero" : 1, # все пули выпускаются за раз через
	# цикл и отбрасывание идет через final_knockback
	# после выпуска всех снарядов, у каждого снаряда
	# отдельный knockback
	"knockback_enemy" : 1,
	"bullet_speed" : 1,
	"bullet_size" : 1,
	"bullet_count" : 1,
	"damage" : 1,
	"fire_rate" : 1,
	"spread" : 0
}
