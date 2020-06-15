
/obj/item/melee/sabre/apid
	name = "Apid Hiveslicer"
	desc = "This is a sword, made of literal bees."
	icon = 'killerbee/icons/obj/apids.dmi'
	icon_state = "hiveslicer"
	item_state = "hiveslicer"
	lefthand_file = 'killerbee/icons/mob/inhands/lefthand.dmi'
	righthand_file = 'killerbee/icons/mob/inhands/righthand.dmi'
	materials = null
	w_class = WEIGHT_CLASS_NORMAL
	slot_flags = ITEM_SLOT_BELT
	force = 20

/obj/item/clothing/suit/bronze/apid
	name = "apid bronze apid armor"
	desc = "A clanky bronze suit with apid glyphs on it. Faintly smells of honey."
	icon = 'icons/obj/clothing/clockwork_garb.dmi'
	icon_state = "clockwork_cuirass_old"
	armor = list("melee" = 30, "bullet" = 60, "laser" = -25, "energy" = 0, "bomb" = 60, "bio" = 0, "rad" = 0, "fire" = 100, "acid" = 100)

/obj/item/clothing/head/bronze/apid
	name = "apid bronze helm"
	desc = "A forged helmet of bronze with apid glyphs on it. Faintly smells of honey."
	icon = 'icons/obj/clothing/clockwork_garb.dmi'
	icon_state = "clockwork_helmet_old"
	flags_inv = HIDEEARS|HIDEHAIR
	armor = list("melee" = 30, "bullet" = 60, "laser" = -25, "energy" = 0, "bomb" = 60, "bio" = 0, "rad" = 0, "fire" = 100, "acid" = 100)

/obj/item/clothing/gloves/bronze/apid
	name = "apid bronze gauntlets"
	desc = "Bronze gauntlets with apid glyphs on them. Faintly smells of honey."
	icon = 'icons/obj/clothing/clockwork_garb.dmi'
	icon_state = "clockwork_gauntlets"
	item_state = "clockwork_gauntlets"
	item_color = null //So they don't wash.
	strip_delay = 50
	equip_delay_other = 30
	body_parts_covered = ARMS
	permeability_coefficient = 0.05
	resistance_flags = FIRE_PROOF | ACID_PROOF
	armor = list("melee" = 80, "bullet" = 70, "laser" = -25, "energy" = 0, "bomb" = 60, "bio" = 0, "rad" = 0, "fire" = 100, "acid" = 100)

/obj/item/clothing/shoes/bronze/apid
	name = "apid bronze boots"
	desc = "Bronze boots with apid glyphs on them. Faintly smells of honey."
	icon = 'icons/obj/clothing/clockwork_garb.dmi'
	icon_state = "clockwork_treads"
	armor = list("melee" = 80, "bullet" = 70, "laser" = -25, "energy" = 0, "bomb" = 60, "bio" = 0, "rad" = 0, "fire" = 100, "acid" = 100)

/obj/item/clothing/under/pants/apid
	name = "apid cloth"
	desc = "The undergarments of an apid."
	icon_state = "blackshorts"
	item_color = "blackshorts"