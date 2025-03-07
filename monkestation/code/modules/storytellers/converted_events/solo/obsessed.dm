/datum/round_event_control/antagonist/solo/obsessed
	antag_flag = ROLE_TRAITOR
	tags = list(TAG_COMBAT)
	antag_datum = /datum/antagonist/obsessed
	typepath = /datum/round_event/antagonist/solo/obsessed
	restricted_roles = list(
		JOB_AI,
		JOB_CYBORG,
		ROLE_POSITRONIC_BRAIN,
	)
	weight = 4
	max_occurrences = 3

/datum/round_event_control/antagonist/solo/obsessed/midround
	name = "Compulsive Obsession"
	prompted_picking = TRUE
	maximum_antags = 4

/datum/round_event/antagonist/solo/obsessed

/datum/round_event/antagonist/solo/obsessed/add_datum_to_mind(datum/mind/antag_mind)
	antag_mind.add_antag_datum(antag_datum)
	var/mob/living/carbon/human/current = antag_mind.current
	current.gain_trauma(/datum/brain_trauma/special/obsessed)
