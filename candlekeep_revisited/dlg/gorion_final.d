// Split out of gorion.d (custom edit): Gorion's farewell talk and Ulraunt at the gates.
// Compiled by component 5, or by component 1 when component 5 is not installed.
BEGIN C0CR#ULR

// Final Scene
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

CHAIN IF WEIGHT #-1 ~Detect(Player1) Global("C0CandleReGorionFinal","GLOBAL",0)~ THEN GORION C0CandleReGorionFinal
~There you are, my child. I trust you've prepared everything. We must be away soon, before time runs out.~
DO ~SetGlobal("C0CandleReGorionFinal","GLOBAL",1)~
END
  + ~OR(2) Dead("SHANK") Dead("CARBOS")~ + ~Father, I was attacked by a stranger! Right here, in this castle!~ EXTERN GORION C0CandleReGorionFinal.1
  ++ ~I've been considering things. Must we really go? There must be much more danger out there than in here.~ EXTERN GORION C0CandleReGorionFinal.2
  ++ ~I'm ready, father. We can leave at any time.~ EXTERN GORION C0CandleReGorionFinal.6

CHAIN GORION C0CandleReGorionFinal.1
~I know. I have already heard from the Watchers, and they will investigate the origins of the assassins. I am sorry... this is like nothing you have known, and I understand, truly. But this will not be the last, and it has proven even the security of Candlekeep is no longer an assuredly safe haven.~
EXTERN GORION C0CandleReGorionFinal.3

CHAIN GORION C0CandleReGorionFinal.2
~You are not wrong, my child. For now. There is indeed great dangers in the world, some as close as outside the gates themselves. But that will not last, and sooner or later, Candlekeep will be swept in the chaos that already plagues the Sword Coast. I wish to spare the people here of that, as much as I can. It is my responsibility.~
EXTERN GORION C0CandleReGorionFinal.3

CHAIN GORION C0CandleReGorionFinal.3
~I promise you, where we go will be a safer place than even here, and you will find it in yourself to grow and learn from the experiences ahead.~
= ~I know you, my dear <CHARNAME>. You have talent, and are fated for greater things than here. But first, I must ensure your safety, and we will not find that in Candlekeep forever.~
END
  ++ ~Where will we go?~ EXTERN GORION C0CandleReGorionFinal.4
  ++ ~You sound afraid, father. I've never heard you like this before.~ EXTERN GORION C0CandleReGorionFinal.5
  ++ ~Then let us go. I'm eager to see the world outside as well.~ EXTERN GORION C0CandleReGorionFinal.6

CHAIN GORION C0CandleReGorionFinal.4
~I cannot tell you yet, <CHARNAME>. I wish to trust in the people here, but for absolute certainty, the fewer there are who know of our destination, the safer we will be. It will all make sense soon, once we are in a place where I might explain everything.~
EXTERN GORION C0CandleReGorionFinal.7

CHAIN GORION C0CandleReGorionFinal.5
~You must understand, <CHARNAME>, that there is always the unknown, that which is worthy of fear, no matter the extent of your power or knowledge. For us, and for those who would wish us harm. So long as we are mortal, we cannot avoid fear. But we must face it, and do what is needed to overcome it.~
EXTERN GORION C0CandleReGorionFinal.7

CHAIN GORION C0CandleReGorionFinal.6
~Very good, <CHARNAME>. Come, then. We must head to the gates...~
DO ~ClearAllActions()
	StartCutSceneMode()
	StartCutScene("C0CR#014")~ EXIT
	
CHAIN GORION C0CandleReGorionFinal.7
~Now, come with me. We will have time to talk later, but for now, we must go to the gates...~
DO ~ClearAllActions()
	StartCutSceneMode()
	StartCutScene("C0CR#014")~ EXIT
	
CHAIN IF WEIGHT #-1 ~Global("C0CandleReGorionFinal","GLOBAL",1)~ THEN C0CR#ULR C0CandleReGorionFinalUlraunt
~Gorion.~
== GORION ~...Ulraunt.~
== C0CR#ULR ~I see you are here with the... young <CHARNAME>. I take it that means you intend to leave soon, as you've so stubbornly insisted?~
== GORION ~Indeed. We will be on our way soon.~
== C0CR#ULR ~Well, I would wish you safe journey, but I doubt that will be the case, given what I know of your intentions. Perhaps you have reconsidered since our last discussion?~
== GORION ~No.  ~
== C0CR#ULR ~Foolish... I have said it before, Gorion. There is a much simpler solution to this inanity. You and I know this to be true.~
== GORION ~We do not see eye to eye on this, Ulraunt, nor have we ever in many things. I am not blind to the dangers that stand ahead of <PRO_HIMHER>... us, but this is the right path to take, and thus it is my duty to do so.~
== C0CR#ULR ~I would have thought age and comfort would have ridded you of your urge for meddling in affairs that are beyond you. You have chosen peace for all these years, and you will throw it all away for your sentimentality?~
== GORION ~If you insist upon seeing things through that perspective, Ulraunt, then yes. That is how it is.~
== C0CR#ULR ~Bah! ~
== C0CR#ULR ~Fine. On your own head be it, foolish Harper.~
== GORION ~Good <DAYNIGHT>, Ulraunt.~
== C0CR#ULR ~If you are set in your absurd ways, then I shall not expect either of your returns with optimism. But I will repeat my generous advice—you would do best to leave <PRO_HIMHER> in some forgotten ravine and be done with it.~
== C0CR#ULR ~Now then, you two have a long journey to take, and I have proper business to attend to. Out of my way.~
DO ~SetGlobal("C0CandleReGorionFinal","GLOBAL",2)
	ClearAllActions()
	StartCutSceneMode()
	StartCutScene("C0CR#015")~ EXIT
	
CHAIN IF WEIGHT #-1 ~Global("C0CandleReGorionFinal","GLOBAL",2)~ THEN GORION C0CandleReGorionFinalPostUlraunt
~*sigh* Do not dwell on his words, child. You are not the one at fault.~
DO ~SetGlobal("C0CandleReGorionFinal","GLOBAL",3)~
END
  ++ ~Why does Ulraunt hate me so much? I have never done anything to deserve it.~ + C0CandleReGorionFinalPostUlraunt.1
  ++ ~Father, I am asking your permission to go inside and kick him between his legs.~ + C0CandleReGorionFinalPostUlraunt.2
  ++ ~Can we go now, father?~ + C0CandleReGorionFinalPostUlraunt.3

CHAIN GORION C0CandleReGorionFinalPostUlraunt.1
~No. No, you have not. Someday, you will understand... the world is full of those who would rather blame you for the fault of others.~
EXTERN GORION C0CandleReGorionFinalPostUlraunt.4

CHAIN GORION C0CandleReGorionFinalPostUlraunt.2
~Now, now, as your senior I cannot allow that, though I do sympathize, truly. We must keep the venerable Keeper's health in consideration. He is getting on in years, after all.~
EXTERN GORION C0CandleReGorionFinalPostUlraunt.4

CHAIN GORION C0CandleReGorionFinalPostUlraunt.3
~Yes, we should. The sooner the better. Once you are prepared, we must leave with haste.~
EXTERN GORION C0CandleReGorionFinalPostUlraunt.4

CHAIN GORION C0CandleReGorionFinalPostUlraunt.4
~I know this is of little consolation to you, child, but Ulraunt's thoughts on you are not born from malice, not truly. Do not judge him too harshly.~
= ~Though the Keeper has his shortcomings, his concern is for the security of Candlekeep, so I hope that you may understand, though I know it may be difficult. You are not aware, but there are dark times approaching, and it is in such times that we all struggle the most with our worst sides.~
= ~Forgive me, <CHARNAME>. It was indeed my intention to leave promptly, but encountering Ulraunt has reminded me of a most daunting fact... though we must leave this place for your own good, our eventual homecoming may not be so simple or guaranteed. If there is anything you feel is left undone, whether it be a simple farewell, it is best if you attend to it now. But you must hurry, and return as soon are you are done.~
EXTERN GORION 0	