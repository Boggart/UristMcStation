 /*										*****New space to put all Urist Mcstation Vanity items*****

Please keep it tidy, by which I mean put comments describing the item before the entry. -Glloyd*/

//vanity lighters, stolen from the custom items.

/obj/item/weapon/flame/lighter/zippo/vanity/blue
	name = "blue zippo"
	desc = "A zippo lighter made of some blue metal."
	icon = 'icons/obj/custom_items.dmi'
	icon_state = "bluezippo"
	icon_on = "bluezippoon"
	icon_off = "bluezippo"

/obj/item/weapon/flame/lighter/zippo/vanity/gold
	name = "gold zippo"
	desc = "A golden lighter, engraved with some ornaments."
	icon = 'icons/obj/custom_items.dmi'
	icon_state = "guessip"
	icon_on = "guessipon"
	icon_off = "guessip"

/obj/item/weapon/flame/lighter/zippo/vanity/black
	name = "black zippo"
	desc = "A black zippo lighter."
	icon = 'icons/obj/custom_items.dmi'
	icon_state = "blackzippo"
	icon_on = "blackzippoon"
	icon_off = "blackzippo"

/obj/item/weapon/flame/lighter/zippo/vanity/red
	name = "black and red zippo"
	desc = "A black and red zippo lighter."
	icon = 'icons/obj/custom_items.dmi'
	icon_state = "gonzozippo"
	icon_on = "gonzozippoon"
	icon_off = "gonzozippo"

/obj/item/weapon/flame/lighter/zippo/vanity/engraved
	name = "engraved zippo"
	desc = "A intricately engraved zippo lighter."
	icon = 'icons/obj/custom_items.dmi'
	icon_state = "engravedzippo"
	icon_on = "engravedzippoon"
	icon_off = "engravedzippo"

//nanotrasen shiiiiit for the nt vending machine

/obj/item/weapon/crowbar/nanotrasen //nt crowbar
	urist_only = 1
	name = "Nanotrasen crowbar"
	desc = "A crowbar in the Nanotrasen colours."
	icon = 'icons/urist/items/tools.dmi'
	icon_state = "ncrowbar"
	item_state = "ncrowbar"

/obj/item/device/flashlight/nanotrasen //nt flashlight
	name = "Nanotrasen flashlight"
	desc = "A hand-held emergency light in the Nanotrasen colours with a white NT embossed on the side."
	icon = 'icons/urist/items/tools.dmi'
	icon_state = "flashlight"
	item_state = "flashlight"

/obj/item/weapon/storage/toolbox/nanotrasen //nt toolbox
	name = "Nanotrasen toolbox"
	desc = "A tooldbox in the Nanotrasen colours with a white NT emblazoned on the side."
	icon = 'icons/urist/items/tools.dmi'
	icon_state = "ntoolbox"
	item_state = "toolbox_blue"

	New()
		..()
		new /obj/item/weapon/screwdriver(src)
		new /obj/item/weapon/wrench(src)
		new /obj/item/weapon/crowbar/nanotrasen(src)
		new /obj/item/device/flashlight/nanotrasen(src)



//light cigs

/obj/item/weapon/storage/fancy/cigarettes/lights
	name = "'lights' cigarette packet"
	desc = "The cigarettes for those who like things on the light side."
	icon = 'icons/urist/uristicons.dmi'
	icon_state = "Lpacket"
	item_state = "Lpacket"
	w_class = 1
	throwforce = 2
	flags = TABLEPASS
	slot_flags = SLOT_BELT
	storage_slots = 6
	can_hold = list("/obj/item/clothing/mask/cigarette")
	icon_type = "cigarette"

//watches

/obj/item/clothing/tie/watch
	urist_only = 1
	icon = 'icons/urist/items/clothes/ties.dmi'
	icon_override = 'icons/uristmob/ties.dmi'

/obj/item/clothing/tie/watch/wrist
	name = "wrist watch"
	desc = "A black plastic analog wristwatch."
	icon_state = "w_watch"
	item_color = "w_watch"

/obj/item/clothing/tie/watch/pocket
	name = "pocket watch"
	desc = "A fancy brass analog pocketwatch."
	icon_state = "p_watch"
	item_color = "p_watch"

/obj/item/clothing/tie/watch/examine()
	usr << "[desc] The time reads [worldtime2text()]."

//comb

/obj/item/weapon/vanity/comb
	name = "purple comb"
	desc = "A pristine purple comb made from flexible plastic."
	w_class = 2.0
	icon = 'icons/obj/custom_items.dmi'
	icon_state = "purplecomb"
	item_state = "purplecomb"

	attack_self(mob/user)
		if(user.r_hand == src || user.l_hand == src)
			for(var/mob/O in viewers(user, null))
				O.show_message(text("\red [] uses [] to comb their hair with incredible style and sophistication. Wow, that's pretty suave.", user, src), 1)
		return

//unathi doll and doll parent type

/obj/item/weapon/vanity/doll
	icon = 'icons/urist/items/misc.dmi'
	w_class = 2
	urist_only = 1

/obj/item/weapon/vanity/doll/unathi/attack_self(mob/user as mob)
	user.visible_message("<span class='notice'>[user] hugs [src], [src] hisses! How cute! </span>",\
						 "<span class='notice'>You hug [src], [src] hisses! Awww! </span>")

/obj/item/weapon/vanity/doll/unathi/green
	name = "unathi doll"
	desc = "A fluffy version of everyone's favorite giant lizards! This one is lime green."
	icon_state = "greenunathi"
	item_state = "greenunathi"

/obj/item/weapon/vanity/doll/unathi/red
	name = "unathi doll"
	desc = "A fluffy version of everyone's favorite giant lizards! This one is dark red."
	icon_state = "redunathi"
	item_state = "redunathi"

/obj/item/weapon/vanity/doll/unathi/lightblue
	name = "unathi doll"
	desc = "A fluffy version of everyone's favorite giant lizards! This one is cyan blue."
	icon_state = "lightblueunathi"
	item_state = "lightblueunathi"

/obj/item/weapon/vanity/doll/unathi/black
	name = "unathi doll"
	desc = "A fluffy version of everyone's favorite giant lizards! This one is a shiny black."
	icon_state = "blackunathi"
	item_state = "blackunathi"


/obj/item/weapon/vanity/doll/unathi/yellow
	name = "unathi doll"
	desc = "A fluffy version of everyone's favorite giant lizards! This one is a Royal's yellow!"
	icon_state = "yellowunathi"
	item_state = "yellowunathi"

/obj/item/weapon/vanity/doll/unathi/white
	name = "unathi doll"
	desc = "A fluffy version of everyone's favorite giant lizards! This one is a bleached white."
	icon_state = "whiteunathi"
	item_state = "whiteunathi"

/obj/item/weapon/vanity/doll/unathi/purple
	name = "unathi doll"
	desc = "A fluffy version of everyone's favorite giant lizards! This one is a dark purple."
	icon_state = "purpleunathi"
	item_state = "purpleunathi"

/obj/item/weapon/vanity/doll/unathi/purple/attack_self(mob/user as mob)
	user.visible_message("<span class='notice'>[user] hugs [src], [src] hisses, 'Lovingsss yousss, lovingsss messs?' How cute! </span>",\
						 "<span class='notice'>You hug [src], [src] hisses, 'Lovingsss yousss, lovingsss messs?' Awww! </span>")


/obj/item/weapon/vanity/doll/unathi/orange
	name = "unathi doll"
	desc = "A fluffy version of everyone's favorite giant lizards! This one is a earthen orange."
	icon_state = "orangeunathi"
	item_state = "orangeunathi"

/obj/item/weapon/vanity/doll/unathi/brown
	name = "unathi doll"
	desc = "A fluffy version of everyone's favorite giant lizards! This one is a dark brown."
	icon_state = "brownunathi"
	item_state = "brownunathi"