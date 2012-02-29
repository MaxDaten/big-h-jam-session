module Graphics (display)
where

import Graphics.Rendering.OpenGL
import Graphics.UI.GLUT
import Data.IORef

oneCube a = do 
	renderPrimitive Quads $ do
		vertex $ Vertex3 a a a
		vertex $ Vertex3 a a (-a)
		vertex $ Vertex3 a (-a) (-a)
		vertex $ Vertex3 a (-a) a
		vertex $ Vertex3 a a a
		vertex $ Vertex3 a a (-a)
		vertex $ Vertex3 (-a) a (-a)
		vertex $ Vertex3 (-a) a a
		vertex $ Vertex3 a a a
		vertex $ Vertex3 a (-a) a
		vertex $ Vertex3 (-a) (-a) a
		vertex $ Vertex3 (-a) a a
		vertex $ Vertex3 (-a) a a
		vertex $ Vertex3 (-a) a (-a)
		vertex $ Vertex3 (-a) (-a) (-a)
		vertex $ Vertex3 (-a) (-a) a
		vertex $ Vertex3 a (-a) a
		vertex $ Vertex3 a (-a) (-a)
		vertex $ Vertex3 (-a) (-a) (-a)
		vertex $ Vertex3 (-a) (-a) a
		vertex $ Vertex3 a a (-a)
		vertex $ Vertex3 a (-a) (-a)
		vertex $ Vertex3 (-a) (-a) (-a)
		vertex $ Vertex3 (-a) a (-a)

display = do 
  clear [ColorBuffer]
  loadIdentity
  color $ Color3 2.3 1.2 (1.1::GLfloat)
  scale 0.7 0.7 (0.7::GLfloat)
  oneCube (0.2::GLfloat)
  swapBuffers
