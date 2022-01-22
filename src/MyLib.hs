module MyLib (
  someFunc
  , firstAtom
  ) where

import PDBtools.Base
import PDBtools.PDButil.PDBparse
import qualified Data.ByteString.Internal (ByteString)

someFunc :: IO ()
someFunc = putStrLn "someFunc"

firstAtom :: Protein -> Data.ByteString.Internal.ByteString
firstAtom = name . head . backbone
