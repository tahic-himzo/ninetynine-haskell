module Lists.MyLengthSpec where
  import Test.Hspec
  import Test.QuickCheck
  import Lists.MyLength

  spec :: Spec
  spec =
    describe "Lists.MyLength" $
      it "returns the length of a list" $ do
        myLength [1,2,3] `shouldBe` 3
        myLength [3] `shouldBe` 1
        myLength [] `shouldBe` 0

