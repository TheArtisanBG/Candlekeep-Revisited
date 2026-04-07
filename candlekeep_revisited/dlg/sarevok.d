EXTEND_BOTTOM CUTSAR 1
IF ~True()~ THEN EXTERN CUTGOR C0CandleReSarevScene
END

CHAIN CUTGOR C0CandleReSarevScene
~Run, child. Get out of here!~ [GORIN02]
DO ~SetGlobal("C0CandleReSarevokScene","GLOBAL",1)~ END
  ++ ~What? But—~ EXTERN CUTGOR C0CandleReSarevScene.1
  ++ ~No, we can fi—~ EXTERN CUTGOR C0CandleReSarevScene.1
  ++ ~(Run. Run for your life.)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("C0CR#C02")~ EXIT

CHAIN CUTGOR C0CandleReSarevScene.1
~Don't say anything. Just run. I'll be with you soon. You should not see what is to come.~
END
  ++ ~What do you mean...?~ + C0CandleReSarevScene.2
  ++ ~No, father. Let me help you!~ + C0CandleReSarevScene.2
  ++ ~I can't abandon you!~ + C0CandleReSarevScene.2
  ++ ~(Obey your father, and run.)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("C0CR#C02")~ EXIT

CHAIN CUTGOR C0CandleReSarevScene.2
~<CHARNAME>, my child...~
 = ~I'm sorry.~
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("C0CR#C01")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0CandleReSarevokScene","GLOBAL",1)~ THEN CUTSAR C0CandleReSarevScene.1
~Even in your final moments, you deceive <PRO_HIMHER>. You know full well how this will end.~ [C0BLANK]
DO ~SetGlobal("C0CandleReSarevokScene","GLOBAL",2)~ 
== CUTGOR ~Perhaps. But I do wonder, however... is this your idea of revenge, boy?~
== CUTSAR ~The past is irrelevant. When I look upon what has become of you and your ward, I consider myself blessed that I was not cursed with such weakness.~
== CUTGOR ~You are a consequence of my past failures. Despite your posturing, you invoke no fear in me, only shame.~
== CUTSAR ~But you are well-versed in failure, are you not, old man? You could not save that woman, or the others... and once you are dead, you will not be able to save that whelp.~
== CUTGOR ~You are right that I have failed too many times... but for the last, you are wrong. I have saved that child from becoming a slave to power, as you have. True, <PRO_HISHER> path will be difficult... but <PRO_HESHE> will have hope. Unlike you.~
== CUTSAR ~Indeed? Perhaps I should keep one last breath of life in you instead, so that you will be there to witness the day I properly crush your hope under my heel...~
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("C0CR#C03")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0CandleReSarevokScene","GLOBAL",2)~ THEN CUTSAR C0CandleReSarevScene.2
~Ah... so you do have a speck of your former fire within you after all. This will be more entertaining than I expected.~ [C0BLANK]
DO ~SetGlobal("C0CandleReSarevokScene","GLOBAL",3)~ 
== TAMOKO ~Sa—~
== CUTSAR ~Yes, I know. Our time is precious, and our plan is only at its inception. We shall make this quick.~
== CUTGOR ~Do what you will, but this will be no victory for you. That child is strong... the day will come when <PRO_HESHE> reaches heights you never shall.~
== CUTSAR ~Is that so? Challenge accepted, old man. I shall anticipate the struggle that is to come... a pity you will not be alive to witness it.~
== CUTGOR ~Enough taunts. The debt between us is long overdue... it's high time we settled it at last.~
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("C0CR#C04")~ EXIT