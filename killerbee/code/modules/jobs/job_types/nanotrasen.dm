/datum/job/nt_trooper
	title = "Nanotrasen Trooper"
	faction = "Station"
	supervisors = "the Nanotrasen Corporation."
	outfit = /datum/outfit/job/nt_trooper

	selection_color = "#3C86DE"
	total_positions = 10
	spawn_positions = 10

/datum/outfit/job/nt_trooper

	name = "Nanotrasen Trooper"

	uniform = /obj/item/clothing/under/color/grey 			// placeholder
	suit = /obj/item/clothing/suit/armor/vest/russian
	head = /obj/item/clothing/head/helmet/swat/nanotrasen
	ears = /obj/item/radio/headset
	shoes = /obj/item/clothing/shoes/combat
	gloves = /obj/item/clothing/gloves/fingerless

	belt = /obj/item/gun/ballistic/automatic/pistol/m1911
	r_pocket = /obj/item/ammo_box/magazine/m45
	l_pocket = /obj/item/ammo_box/magazine/smgm9mm

	backpack = /obj/item/storage/backpack/duffelbag
	duffelbag = /obj/item/storage/backpack/duffelbag
	satchel = /obj/item/storage/backpack/duffelbag
	backpack_contents = list(/obj/item/gun/ballistic/automatic/c20r/unrestricted=1, /obj/item/ammo_box/magazine/smgm9mm=4, /obj/item/ammo_box/magazine/m45=2, /obj/item/grenade/syndieminibomb/concussion/frag=1, /obj/item/reagent_containers/hypospray/medipen/survival=1)

/datum/job/sy_trooper/after_spawn(mob/living/carbon/human/H)
	H.faction_kb = "Nanotrasen"