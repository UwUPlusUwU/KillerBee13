/datum/job/sy_trooper
	title = "Syndicate Trooper"
	faction = "Station"
	supervisors = "the Syndicate"
	outfit = /datum/outfit/job/sy_trooper

	selection_color = "#DE3C3C"
	total_positions = 10
	spawn_positions = 10

/datum/outfit/job/sy_trooper
	name = "Syndicate Trooper"

	uniform = /obj/item/clothing/under/syndicate/camo
	suit = /obj/item/clothing/suit/armor/vest/russian
	head = /obj/item/clothing/head/helmet/swat
	ears = /obj/item/radio/headset/syndicate
	shoes = /obj/item/clothing/shoes/combat
	gloves = /obj/item/clothing/gloves/fingerless

	belt = /obj/item/gun/ballistic/automatic/pistol/APS
	r_pocket = /obj/item/ammo_box/magazine/pistolm9mm
	l_pocket = /obj/item/ammo_box/magazine/smgm45

	backpack = /obj/item/storage/backpack/duffelbag/syndie
	duffelbag = /obj/item/storage/backpack/duffelbag/syndie
	satchel = /obj/item/storage/backpack/duffelbag/syndie
	backpack_contents = list(/obj/item/gun/ballistic/automatic/c20r/unrestricted=1, /obj/item/ammo_box/magazine/smgm45=4, /obj/item/ammo_box/magazine/pistolm9mm=2, /obj/item/grenade/syndieminibomb/concussion/frag=1, /obj/item/reagent_containers/hypospray/medipen/survival=1)

/datum/job/sy_trooper/after_spawn(mob/living/carbon/human/H)
	H.faction_kb = "Syndicate"