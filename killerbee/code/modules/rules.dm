// Mechanically enforced (hard-coded) rules, these include friendly fire and spawn-camping.

/obj/item/attack/proc/friendly_fire(mob/living/carbon/human/target, mob/living/carbon/human/user)
	if(target.faction_kb == user.faction_kb)
		user.gib()