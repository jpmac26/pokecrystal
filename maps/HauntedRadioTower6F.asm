const_value set 2

HauntedRadioTower6F_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

HauntedRadioTower6F_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 1
	warp_def $11, $6, 2, HAUNTED_RADIO_TOWER_5F

.XYTriggers:
	db 0

.Signposts:
	db 0

.PersonEvents:
	db 0
