//
// Implementation of urethra vore via "urethra" belly type
//

/datum/belly/urethra
	belly_type = "Urethra"
	belly_name = "bladder"
	inside_flavor = "Generic sac description"

// @Override
/datum/belly/urethra/get_examine_msg(t_He, t_his, t_him, t_has, t_is)
	if(internal_contents.len || is_full == 1)
		return "[t_He] [t_has] something in [t_his] lower belly!\n" //why no byond macros? I don't know.

// @Override
/datum/belly/urethra/toggle_digestion()
	digest_mode = (digest_mode == DM_DIGEST) ? DM_HOLD : DM_DIGEST
	owner << "<span class='notice'>You will [digest_mode == DM_DIGEST ? "now" : "no longer"] pissify people.</span>"

// @Override
/datum/belly/urethra/process_Life()
	for(var/mob/living/M in internal_contents)
		if(istype(M, /mob/living/carbon/human))
			var/mob/living/carbon/human/R = M
			if(!R.digestable)
				continue

		if(owner.stat != DEAD && digest_mode == DM_DIGEST) // For some reason this can't be checked in the if statement below.
			if(iscarbon(M) || isanimal(M)) // If human or simple mob and you're set to digest.
				if(M.stat == DEAD)
					owner << "<span class='notice'>You feel [M] dissolve into hot piss in your throbbing, swollen groin.</span>"
					M << "<span class='notice'>You dissolve into hot piss in [owner]'s throbbing, swollen groin.</span>"
					digestion_death(M)
					continue

				// Deal digestion damage
				if(air_master.current_cycle%3==1)
					if(!(M.status_flags & GODMODE))
						M.adjustBruteLoss(2)
						M.adjustFireLoss(3)
