module Graphics (display)
where

import Graphics.Rendering.OpenGL
import Graphics.UI.GLUT
import Data.IORef

oneCube a = do 
	renderPrimitive Quads $ do
		vertex $ Vertex3 a a a
		vertex $ Vertex3 (-a) a a
		vertex $ Vertex3 a (-a) a
		vertex $ Vertex3 (-a) (-a) a


display = do 
  clear [ColorBuffer]
  loadIdentity
  color $ Color3 (2.3::GLfloat) (1.2::GLfloat) (1.1::GLfloat)
  scale (0.7::GLfloat) (0.7::GLfloat) (0.7::GLfloat)
  rotate (90.0::GLfloat) (Vector3 1.0 1.0 1.0)
  oneCube (0.2::GLfloat)
  swapBuffers

