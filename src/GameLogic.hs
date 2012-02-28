module Logic
where

import Graphics.Rendering.OpenGL
import Data.IORef
import Graphics.UI.GLUT

{-
	The playerfigure starts at position 1.0.
	Points will be added when a coinground is reached.
-}
data Ground = Normal
			| JumpBlock
			
data Coin = Normal
			| Extra
			| Empty
			| Enemy

type Position = (Int,Int)

--Every element consists of points&grounds
type LevelElem = (Ground,Coin,Position)

--Levelelements ordered in a List
data Level = [LevelElem]

--The global gamestate. Will be changed during playing
data GameState = GameState { playerposition :: Position, playerpoints :: Int, playerlives :: Int, 
					levelstate :: Level }

--The gameState will be checked
updateGameState :: GameState -> GameState
updateGameState GameState@{playerposition=pos, playerpoints=pnt, playerlives=live, levelstate=lvl} =

--Funktion takes the levelElement where the Player resides
updatePoints :: LevelElem -> Int -> Int
updatePoints (Normal, Extra, _) pt = pt + 5
updatePoints (Normal, Normal, _) pt = pt + 1
updatePoints (_,_,_) pt = pt


		






