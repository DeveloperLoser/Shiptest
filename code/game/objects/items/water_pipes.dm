/obj/item/bowl
	name = "small herb slide"
	desc = "A glass \"herb slide\" with a 14.5mm adapter"
	icon = 'icons/obj/water_pipes.dmi'
	icon_state = "small_bowl"
	w_class = WEIGHT_CLASS_TINY
	var/chem_volume = 100
	var/packed = FALSE
	var/list/list_reagents = null

/obj/item/bowl/attackby(obj/item/O, mob/user, params)
	var/obj/item/reagent_containers/food/snacks/grown/W = O
	if(!packed)
		packed = TRUE
		icon_state = "small_bowl_packed"
		desc = "A glass \"herb slide\" with a 14.5mm adapter. It looks to be packed with " + W.name + "."
		if(O.reagents)
			O.reagents.trans_to(src, O.reagents.total_volume, transfered_by = user)
		qdel(O)
	else
		return ..()
/obj/item/bowl/large
	name = "large herb slide"
	desc = "A glass \"herb slide\" with a 18.8mm adapter"
	icon_state = "large_bowl"

