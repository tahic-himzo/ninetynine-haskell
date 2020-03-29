module Lists.MyButLastSpec where

import           Lists.MyButLast
import           Test.Hspec
import           Test.QuickCheck

spec :: Spec
spec =
  describe "Lists.MyButLast" $ do
      it "returns the penultimate item of a list" $
        myButLast [1,2,3] `shouldBe` Just 2

      it "returns nothing for a list with 1 or less items" $ do
        myButLast ([] :: [Int]) `shouldBe` Nothing
        myButLast [1] `shouldBe` Nothing
