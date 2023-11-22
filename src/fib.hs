-- This is a file that computes fibonacci numbers
module Main where

import Data.List ( unfoldr )

main :: IO ()
main = putStrLn $ show $ fibOf 8

-- Give all of them, using unfoldr
fibs :: [Int]
fibs = 
  unfoldr
    (\ (x,y ) -> Just (x, (y, x + y) ))
    (0, 1)


-- Computes all fibs, up to some index
fibTo :: Int -> [Int]
fibTo n =  
  map
    (
      let 
        f :: Int -> Int
        f x =
          case x of
            0 -> 0
            1 -> 1
            _ -> f (x - 2) + f (x - 1)
      in f
    )
    [0..n]

-- Takes an index, and gives _only_ that fib number
fibOf :: Int -> Int
fibOf i = last $ fibTo i
