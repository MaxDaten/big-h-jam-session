import System.Environment
import Graphics.Rendering.OpenGL
import Graphics.UI.GLUT
import Graphics

-- TODO: read in configs 
 
-- | 'main' runs the main program
main :: IO ()
main =    do
            (progname, _) <- getArgsAndInitialize
            initialDisplayMode $= [DoubleBuffered]
            createWindow "BigHS"
            windowSize $= Size 800 800
            displayCallback $= display
            mainLoop
 
display :: IO ()
display = do
  clear [ ColorBuffer ]
  drawScene
  swapBuffers; flush