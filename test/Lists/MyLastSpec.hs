module Lists.MyLastSpec where

import           Data.List.NonEmpty
import           Lists.MyLast
import           Test.Hspec
import           Test.QuickCheck

spec :: Spec
spec = do
  describe "Lists.MyLast" $ do
    it "returns the last element of a long list" $
      myLast [1,2,3] `shouldBe` Just 3

    it "returns the last element of a short list" $
      myLast [1] `shouldBe` Just 1

    it "return Nothing if used with an empty list" $
      myLast ([] :: [Int]) `shouldBe` Nothing

  describe "Lists.MyLastNonEmpty" $ do
    it "returns the last element of a long NEL" $
      myLastNonEmpty (1 :| [2, 3]) `shouldBe` 3

    it "returns the last element of a short NEL" $
      myLastNonEmpty (1 :| []) `shouldBe` 1
