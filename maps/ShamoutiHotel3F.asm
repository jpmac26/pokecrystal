const_value set 0

ShamoutiHotel3F_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

ShamoutiHotel3F_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 3
	warp_def $0, $3, 2, SHAMOUTI_HOTEL_2F
	warp_def $0, $a, 1, SHAMOUTI_HOTEL_ROOM_3B
	warp_def $0, $e, 1, SHAMOUTI_HOTEL_ROOM_3C

.XYTriggers:
	db 0

.Signposts:
	db 0

.PersonEvents:
	db 0
