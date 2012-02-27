import System.Environment
import Graphics.Rendering.OpenGL
import Graphics.UI.GLUT
import Graphics
 
-- | 'main' runs the main program
main :: IO ()
main =    do
            (progname, _) <- getArgsAndInitialize
            initialDisplayMode $= [DoubleBuffered]
            createWindow "BigHS"
            displayCallback $= display
            mainLoop
{- 
display :: IO ()
display = do
  clear [ ColorBuffer ]; flush
  -}