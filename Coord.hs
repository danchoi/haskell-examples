{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module Main where

import Data.Aeson
import GHC.Generics
import Data.ByteString.Lazy.Char8 as Char8

data Coord = Coord { x :: Double, y :: Double } deriving Generic

instance ToJSON Coord

main = do
  Prelude.putStrLn "hello"
  let c = Coord { x = 20.0, y = 99.9 }
  Char8.putStrLn $ encode c  
  -- outputs 
  -- {"y":99.9,"x":20.0}

