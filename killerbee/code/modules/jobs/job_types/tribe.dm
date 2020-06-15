/datum/job/bee_warrior
	title = "Apid Warrior"
	faction = "Station"
	supervisors = "the Hive Collective"
	outfit = /datum/outfit/job/bee_warrior

	selection_color = "#EEE8AA"
	total_positions = 10
	spawn_positions = 10

datum/outfit/job/bee_warrior
	name = "Apid Warrior"

	uniform = /obj/item/clothing/under/pants/apid
	suit = /obj/item/clothing/suit/bronze/apid
	head = /obj/item/clothing/head/bronze/apid
	shoes = /obj/item/clothing/shoes/bronze/apid
	gloves = /obj/item/clothing/gloves/bronze/apid

	belt = /obj/item/melee/sabre/apid
	r_pocket = /obj/item/reagent_containers/hypospray/medipen/survival
	l_pocket = /obj/item/reagent_containers/hypospray/medipen/survival

/datum/job/bee_warrior/after_spawn(mob/living/carbon/human/H, announce = TRUE, client/preference_source)
	H.faction_kb = "Hive Collective"
	if(H.dna.species.id != "apid")
		H.set_species(/datum/species/apid)
		H.apply_pref_name("apid", preference_source)
		announce(H)