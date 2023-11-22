-- This is a file that has some things related to 2D points
module Main where


main :: IO ()
main = putStrLn $ show $ d Point2D { x = 1, y = 1 } Point2D { x = 1, y = 2 } 


-- A Point2D record.
data Point2D = Point2D {
  x :: Float,
  y :: Float
} 

instance Show Point2D where
  show :: Point2D -> String
  show (Point2D { x = xx, y = yy }) = "(x=" ++ show xx ++ ", y=" ++ show yy ++ ")"


-- Some formulas for points
d :: Point2D -> Point2D -> Float
d Point2D { x = x1, y = y1 } Point2D { x = x2, y = y2 } 
  = sqrt (x2 - x1) ^ 2 + (y2 - y1) ^ 2