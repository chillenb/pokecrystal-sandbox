; decoration types
const_value = 1
	const DECO_PLANT
	const DECO_BED
	const DECO_CARPET
	const DECO_POSTER
	const DECO_DOLL
	const DECO_BIGDOLL

; DecorationNames indexes (see engine/decorations.asm)
const_value = 1
	const PUT_IT_AWAY
	const MAGNAPLANT
	const TROPICPLANT
	const JUMBOPLANT
	const TOWN_MAP_D
	const FAMICOM
	const SUPER_NES
	const NINTENDO_64
	const VIRTUAL_BOY
	const GOLD_TROPHY
	const SILVER_TROPHY
	const SURF_PIKA_DOLL
	const _BED
	const _CARPET
	const _POSTER
	const _DOLL
	const BIG_
	const FEATHERY_BED
	const PIKACHU_BED
	const PINK_BED
	const POLKADOT_BED
	const RED_CARPET
	const BLUE_CARPET
	const YELLOW_CARPET
	const GREEN_CARPET

; DoDecorationAction2 arguments (see engine/decorations.asm)
const_value = 1
	const SET_UP_BED
	const PUT_AWAY_BED
	const SET_UP_CARPET
	const PUT_AWAY_CARPET
	const SET_UP_PLANT
	const PUT_AWAY_PLANT
	const SET_UP_POSTER
	const PUT_AWAY_POSTER
	const SET_UP_CONSOLE
	const PUT_AWAY_CONSOLE
	const SET_UP_BIG_DOLL
	const PUT_AWAY_BIG_DOLL
	const SET_UP_DOLL
	const PUT_AWAY_DOLL
	const SET_UP_ORNAMENT
	const PUT_AWAY_ORNAMENT

deco: MACRO
	const DECO_\1
	enum DECOFLAG_\1
endm

; decorations (see data/decoration_attribute.asm)
const_value = 1
__enum__ = 0
	const BEDS
	deco  FEATHERY_BED
	deco  PINK_BED
	deco  POLKADOT_BED
	deco  PIKACHU_BED

	const CARPETS
	deco  RED_CARPET
	deco  BLUE_CARPET
	deco  YELLOW_CARPET
	deco  GREEN_CARPET

	const PLANTS
	deco  MAGNAPLANT
	deco  TROPICPLANT
	deco  JUMBOPLANT

	const POSTERS
	deco  TOWN_MAP
	deco  PIKACHU_POSTER
	deco  CLEFAIRY_POSTER
	deco  JIGGLYPUFF_POSTER

	const CONSOLES
	deco  FAMICOM
	deco  SNES
	deco  N64
	deco  VIRTUAL_BOY

	const BIG_DOLLS
	deco  BIG_SNORLAX_DOLL
	deco  BIG_ONIX_DOLL
	deco  BIG_LAPRAS_DOLL

	const DOLLS
	deco  PIKACHU_DOLL
	deco  SURF_PIKACHU_DOLL
	deco  CLEFAIRY_DOLL
	deco  JIGGLYPUFF_DOLL
	deco  BULBASAUR_DOLL
	deco  CHARMANDER_DOLL
	deco  SQUIRTLE_DOLL
	deco  POLIWAG_DOLL
	deco  DIGLETT_DOLL
	deco  STARMIE_DOLL
	deco  MAGIKARP_DOLL
	deco  ODDISH_DOLL
	deco  GENGAR_DOLL
	deco  SHELLDER_DOLL
	deco  GRIMER_DOLL
	deco  VOLTORB_DOLL
	deco  WEEDLE_DOLL
	deco  UNOWN_DOLL
	deco  GEODUDE_DOLL
	deco  MACHOP_DOLL
	deco  TENTACOOL_DOLL
	deco  GOLD_TROPHY_DOLL
	deco  SILVER_TROPHY_DOLL

NUM_DECOS = __enum__
NUM_NON_TROPHY_DECOS = NUM_DECOS +- 2
