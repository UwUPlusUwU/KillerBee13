//mostly ported from esthvan/call_of_flesh, lots have been changed, but retains core features. Russian spaghetti code shocked so many people that even Bacon was confused.

var/list/obj/machinery/capturepoint/cps = list()
var/mob/living/carbon/human/H

/obj/machinery/capturepoint
	name = "Control Beacon - null"
	desc = "A beacon used to identify the controllers of a local area."
	icon = 'icons/obj/machines/NavBeacon.dmi'
	icon_state = "beacon-active"
	density = 1
	anchored = 1

	var/controlled_by		= null
	var/capturing_faction	= null
	var/control_percent		= 0

	var/path_ending = null
	var/area = null

/obj/machinery/capturepoint/New()
	..()
	name = "Capture Beacon ([get_area(src).name])"
	cps += src
	area = locate(text2path("/area/[path_ending]"))
	update_desc()

/obj/machinery/capturepoint/proc/update_desc()
	if(controlled_by)

		desc = "Area is under [controlled_by]'s control by [control_percent]%"

	else if(control_percent)

		desc = "Area is under [capturing_faction]'s control by [control_percent]%"

	else

		desc = "This point can be captured."




/obj/machinery/capturepoint/proc/check_invader()
	if(!capturing_faction)
		return 1

	for(var/mob/living/carbon/human/H in range(5, src))
		if(H.faction_kb == capturing_faction)
			return 1

	return 0

/obj/machinery/capturepoint/attack_hand(mob/user)

	if(!istype(user,/mob/living/carbon/human))
		say("You are not a human.")
		return

	var/mob/living/carbon/human/H = user

	if(control_percent == 100 && controlled_by == H.faction_kb)
		say("[get_area(src).name] is already captured!")
		return

	if(capturing_faction && capturing_faction == H.faction_kb)
		say("[get_area(src).name] is already being captured!")
		return

	if(!do_after(user, 10, 1, src))
		return
	capturing_faction = H.faction_kb
	priority_announce("[capturing_faction] has started capturing [get_area(src).name].","Beacon System Notificaton")
	say("[capturing_faction] started capturing [get_area(src).name]!")
	update_desc()

	return

/obj/machinery/capturepoint/process()
	if(!check_invader())
		capturing_faction = null
		return

	if(capturing_faction && !controlled_by)
		controlled_by = capturing_faction

	if((controlled_by == capturing_faction) && capturing_faction != null)

		control_percent += 2

		if(control_percent >= 100)

			control_percent = 100
			priority_announce("[controlled_by] captured [get_area(src).name].","Beacon System Notificaton")
			say("[get_area(src).name] is captured  by [controlled_by]!")
			capturing_faction = null
			update_desc()

		return

	if(control_percent in 1 to 100)
		//if(control_percent >= 50)

		//	control_percent = min(100, control_percent + 2)

		//else

		if(capturing_faction)
			control_percent -= 2
			if(control_percent <= 0)

				control_percent = 0
				priority_announce("[controlled_by] lost  [get_area(src).name].","Beacon System Notificaton")
				say("[controlled_by] lost control of [get_area(src).name]!")
				controlled_by = capturing_faction
				update_desc()

/obj/machinery/capturepoint/ex_act(severity, target)
	return

/obj/machinery/capturepoint/proc/SendJobTotalPositions()
	if(control_percent < 100)
		return

	for(var/datum/job/J in SSjob.occupations)
		if(controlled_by == J.faction_kb)
			J.total_positions += 3