module Lists.IsPalindromeSpec where

import           Lists.IsPalindrome
import           Test.Hspec
import           Test.QuickCheck

spec :: Spec
spec =
  describe "Lists.IsPalindrome" $ do
    it "returns true if a list is a palindrome" $ do
      isPalindrome [1, 2, 1] `shouldBe` True
      isPalindrome [1, 2, 3, 2, 1] `shouldBe` True
      isPalindrome [1, 2, 3, 3, 2, 1] `shouldBe` True
      isPalindrome ([] :: [Int]) `shouldBe` True
      isPalindrome [1] `shouldBe` True
    it "returns false if a list is not a palindrome" $ do
      isPalindrome [1, 2, 3] `shouldBe` False
      isPalindrome [1, 2, 3, 2, 2] `shouldBe` False
