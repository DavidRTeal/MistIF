"The Mist" by "David Rocha"

Include Map by David Rocha.
Include Basic Combat by B David Paulsen.
Include Basic Screen Effects by Emily Short.
Include Bulky Items by Juhana Leinonen

Use full-length room descriptions.


A weapon has a damage roll called damage potential. The damage potential of a weapon is usually 3D6.

[Room Objects]

[Dog House]
Some shed fur is scenery in the Giant Dog House. "Tufts of massive dog fur cling to the splintered floorboards."

The giant chew toy is a weapon in the Giant Dog House.

[Bunker]
A dented locker is in the Bunker. "A gray metal locker with a crooked door stands against the wall."


[Player stuff]
The player is in the Giant Dog House.
The neck port is part of the player. "A small metallic socket at the base of your neck. It's warm to the touch."

[Booleans]
The tutorial access is a truth state that varies. Tutorial access is false.


The terminal is a supporter. It is in the Bunker. "A dusty old terminal labeled [italic type]ECHO VAULT[roman type] hums softly. 
	Beneath it, glowing text reads: [bold type]'Insert data tube into neck port to begin memory reconstruction.'[roman type]".

The data tube is on the terminal. "A soft polymer tube ending in a magnetic data spike rests on the terminal."

instead of inserting the data tube into the neck port:
	say "Neck port connects with a click.[paragraph break]";
	say "A stream of data surges through the implant. Memory doesn't return — it's injected. You don't recall; you receive.";
	say "It’s like a CRT television painting a picture from top to bottom — your thoughts scanned and overwritten line by line.";
	say "At such velocity, you're recalling and forgetting in the same breath, as if the vault’s operating system is being live-projected into your brain.";
	say "[italic type]INTERFACE LOADING... MEMORY RECONSTRUCTION IN PROGRESS.[roman type][paragraph break]";
	say "Floating buttons materialize in your thoughts, UI elements rendered in bright corporate neon — one reads: 'Play Tutorial'.";
	now tutorial access is true;

	

Understand "play tutorial" or "start tutorial" or "run tutorial" or "tutorial" as playing the tutorial.
Understand "exit tutorial" or "leave tutorial" or "return" as exiting the tutorial.

playing the tutorial is an action applying to nothing.
Exiting the tutorial is an action applying to nothing.


Carry out playing the tutorial:
	if tutorial access is false:
		say "Your memory interface hasn't finished syncing. Maybe try connecting the tube at the terminal first.";
	else:
		say "Within your memory, you're transported into the tutorial room...";
		move the player to the Tutorial Room.
		

Carry out exiting the tutorial:
	if the location is the Tutorial Room:
		say "The projection fades. The neon UI dissolves into static.";
		move the player to the Bunker;
		say "[paragraph break]You blink. Back in the Bunker, the terminal flickers quietly.";
		say "You hear the vault door open south of you";
		now the vault door is unlocked;
	else:
		say "You’re not in the tutorial simulation.";

