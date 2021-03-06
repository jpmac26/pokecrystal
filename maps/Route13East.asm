const_value set 2
	const ROUTE13EAST_YOUNGSTER1
	const ROUTE13EAST_YOUNGSTER2
	const ROUTE13EAST_YOUNGSTER3
	const ROUTE13EAST_LASS1
	const ROUTE13EAST_YOUNGSTER4
	const ROUTE13EAST_LASS2
	const ROUTE13EAST_POKEFAN_M1
	const ROUTE13EAST_POKEFAN_M2
	const ROUTE13EAST_GRAMPS
	const ROUTE13EAST_CUT_TREE

Route13East_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

TrainerBird_keeperPerry:
	trainer EVENT_BEAT_BIRD_KEEPER_PERRY, BIRD_KEEPER, PERRY, Bird_keeperPerrySeenText, Bird_keeperPerryBeatenText, 0, Bird_keeperPerryScript

Bird_keeperPerryScript:
	end_if_just_battled
	opentext
	writetext UnknownText_0x1a25db
	waitbutton
	closetext
	end

Bird_keeperPerrySeenText:
	text "Agility is the key"
	line "attribute of bird"
	cont "#mon."
	done

Bird_keeperPerryBeatenText:
	text "You beat me with"
	line "your speed…"
	done

UnknownText_0x1a25db:
	text "Your #mon are"
	line "remarkably well-"
	cont "trained."
	done

TrainerBird_keeperBret:
	trainer EVENT_BEAT_BIRD_KEEPER_BRET, BIRD_KEEPER, BRET, Bird_keeperBretSeenText, Bird_keeperBretBeatenText, 0, Bird_keeperBretScript

Bird_keeperBretScript:
	end_if_just_battled
	opentext
	writetext UnknownText_0x1a2662
	waitbutton
	closetext
	end

Bird_keeperBretSeenText:
	text "Check out my #-"
	line "mon. Just look at"

	para "their coloring and"
	line "their plumage."
	done

Bird_keeperBretBeatenText:
	text "Shoot!"
	line "Not good enough!"
	done

UnknownText_0x1a2662:
	text "If you groom them,"
	line "#mon get happy."
	done

TrainerCamperTanner:
	trainer EVENT_BEAT_CAMPER_TANNER, CAMPER, TANNER, .SeenText, .BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "I can fit in a"
	line "quick battle while"
	cont "preparing a meal!"
	done

.BeatenText:
	text "Oh, I'm hungry…"
	done

.AfterText:
	text "I figured it would"
	line "be easy to knock"
	cont "you out…"
	done

TrainerPicnickerPiper:
	trainer EVENT_BEAT_PICNICKER_PIPER, PICNICKER, PIPER, .SeenText, .BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "How about we bring"
	line "out your #mon"

	para "and mine for a"
	line "battle?"
	done

.BeatenText:
	text "Oh, that's too"
	line "bad…"
	done

.AfterText:
	text "The way you were"
	line "walking made me"
	cont "think I could win."
	done

TrainerCoupleTimandsue1:
	trainer EVENT_BEAT_COUPLE_TIM_AND_SUE, COUPLE, TIMANDSUE1, .SeenText, .BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Tim: I'll give you"
	line "a little hint."

	para "My girlfriend's"
	line "stronger than me!"
	done

.BeatenText:
	text "Tim: You're the"
	line "strongest!"
	done

.AfterText:
	text "Tim: If you've"
	line "beaten her, you"
	cont "must be strong!"
	done

TrainerCoupleTimandsue2:
	trainer EVENT_BEAT_COUPLE_TIM_AND_SUE, COUPLE, TIMANDSUE2, .SeenText, .BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Sue: Women who"
	line "don't take love"

	para "seriously might"
	line "get hurt."
	done

.BeatenText:
	text "Sue: Wa ha…"
	done

.AfterText:
	text "Sue: That strength"
	line "of yours…"
	cont "I've got it!"

	para "Are you in love?"
	done

TrainerPokefanmAlex:
	trainer EVENT_BEAT_POKEFANM_ALEX, POKEFANM, ALEX, PokefanmAlexSeenText, PokefanmAlexBeatenText, 0, PokefanmAlexScript

PokefanmAlexScript:
	end_if_just_battled
	opentext
	writetext UnknownText_0x1a24e3
	waitbutton
	closetext
	end

PokefanmAlexSeenText:
	text "Bow down before my"
	line "regal #mon!"
	done

PokefanmAlexBeatenText:
	text "How… How dare you"
	line "mock royalty!"
	done

UnknownText_0x1a24e3:
	text "Doesn't everyone"
	line "wish to someday be"
	cont "a king?"
	done

TrainerPokefanmJoshua:
	trainer EVENT_BEAT_POKEFANM_JOSHUA, POKEFANM, JOSHUA, PokefanmJoshuaSeenText, PokefanmJoshuaBeatenText, 0, PokefanmJoshuaScript

PokefanmJoshuaScript:
	end_if_just_battled
	opentext
	writetext UnknownText_0x1a254f
	waitbutton
	closetext
	end

PokefanmJoshuaSeenText:
	text "Nihihi! Would you"
	line "like to battle my"
	cont "Pikachu gang?"
	done

PokefanmJoshuaBeatenText:
	text "Pi-Pikachu!"
	done

UnknownText_0x1a254f:
	text "You look like you"
	line "have many #mon,"

	para "but Pikachu is"
	line "still the best."
	done

Route13EastGrampsScript:
	special CheckIfTrendyPhraseIsLucky
	iftrue .lucky
	jumptextfaceplayer Route13EastGrampsText1

.lucky
	jumptextfaceplayer Route13EastGrampsText2

Route13EastGrampsText1:
	text "I can't see Lucky"
	line "Island today…"

	para "But I know it's"
	line "appeared before!"
	done

Route13EastGrampsText2:
	text "I can see Lucky"
	line "Island today!"
	cont "What a spectacle!"
	done

Route13CutTree:
	jumpstd cuttree

Route13TrainerTips:
	jumptext Route13TrainerTipsText

Route13TrainerTipsText:
	text "Trainer Tips"

	para "Look! Right there,"
	line "at the left side"
	cont "of the post."
	done

Route13Sign:
	jumptext Route13SignText

Route13SignText:
	text "Route 13"

	para "North to Silence"
	line "Bridge"
	done

Route13HiddenCalcium:
	dwb EVENT_ROUTE_13_HIDDEN_CALCIUM, CALCIUM

Route13East_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 0

.XYTriggers:
	db 0

.Signposts:
	db 3
	signpost 13, 11, SIGNPOST_READ, Route13TrainerTips
	signpost 11, 27, SIGNPOST_READ, Route13Sign
	signpost 13, 12, SIGNPOST_ITEM, Route13HiddenCalcium

.PersonEvents:
	db 10
	person_event SPRITE_YOUNGSTER, 11, 36, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_TRAINER, 5, TrainerBird_keeperPerry, -1
	person_event SPRITE_YOUNGSTER, 1, 40, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_TRAINER, 3, TrainerBird_keeperBret, -1
	person_event SPRITE_YOUNGSTER, 5, 10, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_TRAINER, 1, TrainerCamperTanner, -1
	person_event SPRITE_LASS, 9, 41, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_TRAINER, 3, TrainerPicnickerPiper, -1
	person_event SPRITE_YOUNGSTER, 6, 28, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_TRAINER, 1, TrainerCoupleTimandsue1, -1
	person_event SPRITE_LASS, 6, 29, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_TRAINER, 1, TrainerCoupleTimandsue2, -1
	person_event SPRITE_POKEFAN_M, 8, 14, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_TRAINER, 3, TrainerPokefanmJoshua, -1
	person_event SPRITE_POKEFAN_M, 6, 1, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_TRAINER, 4, TrainerPokefanmAlex, -1
	person_event SPRITE_GRAMPS, 13, 5, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_PURPLE, PERSONTYPE_SCRIPT, 0, Route13EastGrampsScript, -1
	person_event SPRITE_BALL_CUT_FRUIT, 4, 30, SPRITEMOVEDATA_CUTTABLE_TREE, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, Route13CutTree, EVENT_ROUTE_13_CUT_TREE
