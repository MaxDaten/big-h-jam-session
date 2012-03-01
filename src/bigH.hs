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
            addTimerCallback 1000 (timer)
            displayCallback $= display
            mainLoop
 
display :: IO ()
display = do
  clear [ ColorBuffer ]
  drawScene
  swapBuffers; flush
 
-- A test timer function to spam the stdout every 1 sec
timer :: TimerCallback
timer = do
        putStrLn $ "tick"
        addTimerCallback 1000 (timer) -- recall in 1000 msecs