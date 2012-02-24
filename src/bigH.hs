
import System.Environment
import Graphics.Rendering.OpenGL
import Graphics.UI.GLUT
 
-- | 'main' runs the main program
main :: IO ()
main =    do
            (progname, _) <- getArgsAndInitialize
            createWindow "Hello World"
            displayCallback $= display
            mainLoop
 
display :: IO ()
display = do
  clear [ ColorBuffer ]; flush