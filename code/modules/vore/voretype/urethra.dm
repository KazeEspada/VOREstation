//
//	Definition for urethra voring someone
//

/datum/voretype/urethra
	name = "Urethral Vore"
	belly_target = "Urethra"

/datum/voretype/urethra/eat_held_mob(var/mob/user, var/mob/living/prey, var/mob/living/pred)
	var/attempt_msg = "<span class='danger'>[user] begins to force [prey] down [pred]'s urethra!</span>"
	var/success_msg = "<span class='danger'>[prey] disappears into [pred]'s urethra!</span>"

	return perform_the_nom(user, prey, pred, attempt_msg, success_msg, 'sound/vore/gulp.ogg')

/datum/voretype/urethra/feed_self_to_grabbed(var/mob/living/carbon/human/user, var/vore/pred_capable/pred)
	var/attempt_msg = "<span class='danger'>[user] is attempting to slide into [pred]'s urethra!</span>"
	var/success_msg = "<span class='danger'>[user] vanishes into [pred]'s urethra!</span>"

	return perform_the_nom(user, user, pred, attempt_msg, success_msg, 'sound/vore/gulp.ogg')

/datum/voretype/urethra/feed_grabbed_to_self(var/mob/living/carbon/human/user, var/mob/prey)
	var/attempt_msg = "<span class='danger'>[user] is attempting to slide ["[prey]"] into \his urethra!</span>"
	var/success_msg = "<span class='danger'>[user] swallows ["[prey]"] with \his urethra!</span>"

	return perform_the_nom(user, prey, user, attempt_msg, success_msg, 'sound/vore/gulp.ogg')

/datum/voretype/urethra/feed_grabbed_to_other(var/mob/living/carbon/human/user, var/mob/prey, var/vore/pred_capable/pred)
	var/attempt_msg = "<span class='danger'>[user] is attempting to slide [prey] into [pred]'s urethra!</span>"
	var/success_msg = "<span class='danger'>[prey] vanishes into [pred]'s urethra!</span>"

	return perform_the_nom(user, prey, pred, attempt_msg, success_msg, 'sound/vore/gulp.ogg')