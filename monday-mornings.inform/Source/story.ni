"Monday Mornings" by Neha Marlady

When play begins:
	now the time of day is 8:00 am;
	say "[bold type]Credits Thanks YouTube channel Zoroarrkk,helped with the setup and tutorial of inform7.[line break]https://inform-7-handbook.readthedocs.io/en/latest/ for helping me in understanding the different concepts of inform7.[line break]And ChatGPT for assistance with English grammar correction.[paragraph break]The time is now [the time of day] Monday Morning, You wake up to the soft glow of the early morning sun filtering through the curtains.[line break]Your target is to get ready to office by 8:30 AM."
	
	
The display banner rule is listed before the when play begins stage rule in the startup rules.


Bedroom is a room.The bedroom is north of Dinning room."The bedroom is a quiet, comforting space, with a thick, soft bed tucked against the wall and a warm blanket on the bed. Faint light filters through the curtains, and the gentle hush of the room invites sleep."

Instead of sleeping:
	increase the time of day by 1 hour;
	say "You slept for a long time and now you are too late for office.Now the time is [the time of day]."

The Night stand is in bedroom. The description of night stand is "The nightstand is short and sturdy"

The drawer is in the bedroom.The drawer is a container and openable. Drawer can be open. Drawer is openable and closed. The description of the drawer is "The drawer slides open with a faint creak, revealing a shallow space inside, perfect for keeping personal and importandt items."

A key is in the drawer.The description of key is " A single, rusted key hangs from a leather strap. It looks old, but you can tell by its shape that it might be the key to the main door."

Smart phone is on the Night stand. The description of the smart phone is "A sleek, modern smartphone rests on the nightstand. Its screen is alive with activity, glowing with several notifications from Facebook, X and Instagram."

Scrolling is an action applying to one thing.Understand "scroll [smart phone]" ,"use [smart phone]"  as scrolling.
instead of scrolling:
	increase the time of day by 15 minutes;
	say "You've been so absorbed in your phone, scrolling through notifications and messages, that you didn't even realize how much time has slipped away. Now the time is [the time of day]."

Wardrobe is in the bedroom. The Wardrobe is a container and openable. Wardrobe can be open. Wardrobe is openable and closed. The description of the wardrobe is "A large wooden wardrobe stands against the wall. Its doors are slightly ajar, revealing an organized collection of clothes inside. On one side, neatly hung pajamas, casual clothes, and formal attire are arranged by type and color."


A clothing item is a kind of wearable thing.

The pajamas are a clothing item in the wardrobe.
The casual clothes are a clothing item in the wardrobe.
The formal clothes are a clothing item in the wardrobe.

Instead of wearing something (called the item):
	if the item is a clothing item:
		if something worn by the player is a clothing item:
			Say " You are already wearing [a random clothing item worn by the player]. You'll need to drop it before putting on something else.";
		else:
			continue the action;
	else:
		continue the action.
		
After wearing the pajamas:
	increase the time of day by 5 minutes;
	Say "Perfect clothes to wear at home. Now the time is [the time of day]."
After wearing the casual clothes:
	increase the time of day by 5 minutes;
	Say "You are wearing casuals.This is good if you are not going to office. Now the time is [the time of day]."
After wearing the formal clothes:
	increase the time of day by 5 minutes;
	Say "Perfect clothes to wear to office. You are now set to go to office. Now the time is [the time of day]."
After dropping a clothing item:
	increase the time of day by 10 minutes;
	now the noun is nowhere;
	Say " You drop [the noun]. You are now free to wear something else. Now the time is [the time of day]";

		
Dinning room is a room.The Dinning Room is west of Hall."The dining room is bright and tidy, with a long wooden table at the center surrounded by sturdy chairs. A small chandelier hangs overhead, casting a warm glow across the room."

A table is in dinning room. The description of the table is "The long wooden table is set for breakfast, with plates of toast, a bowl of fruit and a pot of hot coffee. A folded newspaper rests at one end waiting to be read."

News Paper is on the table.The description of the News paper is "A neatly folded newspaper lies on the table, the front page flashing an exciting headline about a thrilling last-minute victory in last night's big game. It's the kind of story that makes you want to read every detail."

Reading is an action applying to one thing. Understand "read [news paper]" as reading.
instead of reading :
	increase the time of day by 15 minutes;
	say "Lost in the stories and headlines of the newspaper, you barely notice the minutes ticking by. Now the time is [the time of day]."
	


Breakfast is edible thing on the table.The description of the breakfast is "A hearty breakfast is laid out: a plate of buttered toast, a bowl of fresh fruit, a pot of steaming coffee, and a jar of strawberry jam. The warm, comforting smells fill the air, making the whole room feel inviting."

instead of eating:
	increase the time of day by 8 minutes;
	Say "Yummy breakfast to boost your energy and keep you full for the day. Now the time is [the time of day]."

Hall is a room."The hall is a wide, open space with polished floors and plain walls. A few paintings hang neatly along the sides. The main door is to the south of the hall"

Sofa is in hall.The description of the sofa is "A large, deep sofa dominates the room, its soft, dark fabric welcoming you to sit. The cushions are plump and perfectly arranged, with a cozy throw blanket draped across one armrest. It looks like the ideal place for a lazy afternoon."

sitting is an action applying to one thing.Understand "sit on [sofa]" as sitting.
instead of sitting:
	increase the time of day by 2 minutes;
	Say "Comfy sofa, best place to sit and relax or Watch TV. Now the time is [the time of day]."

TV is in hall. The description of the TV is "The television is on, showing the morning news. The anchor speaks calmly, going over the day’s headlines from the weather to local events and even a sports update. It’s a typical start to the day with everything you need to know at a glance."

Watching is an action applying to one thing. Understand "watch [TV]" as watching.
Instead of watching:
	Increase the time of day by 30 minutes;
	Say " The news headline and then the sports news took your time that you did not notice the time. Now the time is [the time of day]."
	
Garage is a room."You come out of the house, enter garage annd take your car and go to office."

Main door is a door.It is south of the hall and north of the garage.The main door is a locked door. The key unlocks the main door.The description of main door is "The main is opens to the outside world. It is towards the south of the hall."


Unlocking is an action applying to one thing. Understand "unlock [something]" as unlocking.

Instead of Unlocking:
	if the player carries the key:
		now The main door is unlocked;
		Say "The main door is unlocked.";
	otherwise:
		say "You need a key to unlock the door.";

		
After going through the main door:
	if the time of day > 8:30 AM:
		Say "[bold type]You run outside .. but its already [time of day].. YOU ARE LATE TO THE WORK.";
		end the story saying "You lost to the Monday Morning.";
	else if the player wears the pajamas and the time of day is before 8:31 AM:
		say "[bold type]You look like you're headed for a nap.";
		end the story saying "at least, You conquered the morning!";
	else if the player wears the casual clothes and the time of day is before 8:31 AM:
		say "[bold type]You leave in your casuals. Nobody will take you seriously.";
		end the story saying "at least, You conquered the morning!";
	else if the player wears formal clothes and the time of day is before 8:31 AM:
		Say "[bold type]Horraaayyy!!!,,,You conquered the monday morning.. Have a good day!!!!.";
		end the story saying "Congratulations!! you won the game of Monday morning.";
	else:
		say "You're not wearing any clothes! Better do something about that.";


		

		
			