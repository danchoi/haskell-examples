{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module Main where

import Data.Aeson
import GHC.Generics (Generic)
import Data.ByteString.Lazy.Char8 as Char8

data Coord = Coord { x :: Double, y :: Double } deriving (Generic, Show)

instance ToJSON Coord
instance FromJSON Coord

example = Coord { x = 20.0, y = 99.9 }

main = do
  Prelude.putStrLn "hello"
  Char8.putStrLn $ encode example
  -- outputs 
  -- {"y":99.9,"x":20.0}
  Prelude.print $ ((decode $ encode example ) :: Maybe Coord)


