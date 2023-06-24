{-# LANGUAGE OverloadedStrings #-}

{-
  Exercise: Define the entry point of the program. Read from files
-}
module Pi (main) where

import Data.Text.IO as T (putStrLn)

main :: IO ()
main = T.putStrLn "Pi calculus"
