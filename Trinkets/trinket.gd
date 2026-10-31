class_name BaseTrinket
extends RefCounted

var id: String = ""

func _init(trinket_id: String) -> void:
	id = trinket_id

# Надевание: автоматически вычитываем пассивки из G.trinketsData и применяем к target
func equip() -> void:
	var target : Dictionary = G.player.stats
	if not G.trinketsData.has(id):
		return
	
	var modifiers: Dictionary = G.trinketsData[id].get("modifiers", {})
	for stat in modifiers:
		if target.has(stat):
			target[stat] += modifiers[stat] # Изменяем значение в G.player / G.enemy

# Снятие: автоматически откатываем пассивки обратно
func unequip(target: Dictionary) -> void:
	if not G.trinketsData.has(id):
		return
		
	var modifiers: Dictionary = G.trinketsData[id].get("modifiers", {})
	for stat in modifiers:
		if target.has(stat):
			target[stat] -= modifiers[stat] # Откатываем значение в G.player / G.enemy

# Активная механика (переопределяется только там, где она нужна)
func process_active(context: Dictionary) -> void:
	pass
