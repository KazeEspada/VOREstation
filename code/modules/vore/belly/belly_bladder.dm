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

