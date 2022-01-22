module Main (main) where

import PDButil.PDBparse
import PDBtools.Base

main :: IO ()
main = do
  contents <- parse "3C22.pdb"
  let bbone = backbone $ head $ fst contents
  print bbone
