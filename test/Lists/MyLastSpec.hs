module Lists.MyLastSpec where

import           Lists.MyLast
import           Test.Hspec
import           Test.QuickCheck

spec :: Spec
spec =
  describe "Lists.MyLast" $ do
    it "returns the last element of a list" $
      myLast [1,2,3] `shouldBe` Just 3

    it "return Nothing if used with an empty list" $
      myLast ([] :: [Int]) `shouldBe` (Nothing :: Maybe Int)
