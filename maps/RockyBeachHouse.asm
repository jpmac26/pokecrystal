const_value set 0

RockyBeachHouse_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

RockyBeachHouse_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 2
	warp_def $7, $2, 1, ROCKY_BEACH
	warp_def $7, $3, 1, ROCKY_BEACH

.XYTriggers:
	db 0

.Signposts:
	db 0

.PersonEvents:
	db 0
