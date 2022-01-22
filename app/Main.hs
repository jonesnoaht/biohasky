module Main where

import qualified MyLib (someFunc, firstAtom)
import PDBtools.PDButil.PDBparse
import PDBtools.Base

main :: IO ()
main = do
  putStrLn "Please provide the path to a file"
  fp <- getLine
  MyLib.firstAtom . head . fst <$> parse fp >>= print
