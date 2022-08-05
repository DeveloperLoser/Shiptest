/obj/item/bowl
	name = "small herb slide"
	desc = "A glass \"herb slide\" with a 14.5mm adapter"
	icon = 'icons/obj/water_pipes.dmi'
	icon_state = "small_bowl"
	w_class = WEIGHT_CLASS_TINY
	var/packed = FALSE
	var/list/list_reagents = list()
	var/chem_volume = 30

/obj/item/bowl/attackby(obj/item/W, mob/user, params)

	if(!packed)
		packed = TRUE
		icon_state = "small_bowl_packed"
		desc = "A glass \"herb slide\" with a 14.5mm adapter. It looks to be packed with " + W.name + "."
		list_reagents = list()
	else
		return ..()

/obj/item/bowl/large
	name = "large heb slide"
	desc = "A glass \"heb slide\" with a 18.8mm adapter"
	icon_state = "large_bowl"
