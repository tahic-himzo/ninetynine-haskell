module Lists.MyButLastSpec where

import           Lists.MyButLast
import           Test.Hspec
import           Test.QuickCheck

spec :: Spec
spec =
  describe "Lists.MyButLast" $
      it "returns the penultimate item of a list" $
          myButLast [1,2,3] `shouldBe` Just 2
