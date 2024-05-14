extends Object

class_name Move

var myOwner : GamePiece



#only affect UI
var maxTargets = 1
var canTargetAllies = false
var canTargetEnemies = true
var retargetable = true

var defaultTargetAllEnemies = false
var defaultTargetAllAllies = false

var targets = []

func _init():
	print("Hey, init hasn't been overrided.")

#called when the player selects this move
func onSelected():
	
	targets.clear()
	
	if defaultTargetAllEnemies:
		for target in myOwner.getEnemies():
			targets.append(target)
	if defaultTargetAllAllies:
		for target in myOwner.getAllies():
			targets.append(target)
	
	pass

#to be ovverided
func apply():
	
	print("Hey, apply hasn't been overrided.")
	
	pass
