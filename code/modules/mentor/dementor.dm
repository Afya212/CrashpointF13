/client/proc/cmd_mentor_dementor()
	set category = "Mentor"
	set name = "Dementor"
	if(!is_mentor())
		return
	remove_mentor_verbs()
	if (/client/proc/mentor_unfollow in verbs)
		mentor_unfollow()
	GLOB.mentors -= src
	verbs += /client/proc/cmd_mentor_rementor
	
/client/proc/cmd_mentor_rementor()
	set category = "Mentor"
	set name = "Rementor"
	if(!is_mentor())
		return
	add_mentor_verbs()
	if(!check_rights(R_ADMIN))
		GLOB.mentors += src
	verbs -= /client/proc/cmd_mentor_rementor