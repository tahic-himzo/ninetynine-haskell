module Lists.ReverseListSpec where
  import Test.Hspec
  import Test.QuickCheck
  import Lists.ReverseList

  spec :: Spec
  spec =
    describe "Lists.ReverseList" $
      it "reverses a list" $ do
        reverseList [1,2,3] `shouldBe` [3,2,1]
        reverseList [3] `shouldBe` [3]
        reverseList ([] :: [Int]) `shouldBe` []

