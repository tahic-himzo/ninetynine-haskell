module Lists.ElementAtSpec where
  import Test.Hspec
  import Test.QuickCheck
  import Lists.ElementAt

  spec :: Spec
  spec =
    describe "Lists.ElementAt" $ do
      it "returns the element at a given index" $ do
        elementAt [3,4,5] 1 `shouldBe` Just 3
        elementAt [3,4,5] 2 `shouldBe` Just 4
        elementAt [3,4,5] 3 `shouldBe` Just 5

      it "returns Nothing for index < 1" $ do
        elementAt [3,4,5] 0 `shouldBe` Nothing
        elementAt [3,4,5] (-1)`shouldBe` Nothing

      it "returns Nothing for index > size" $
        elementAt [3,4,5] 4 `shouldBe` Nothing

      it "returns Nothing for an empty list" $
        elementAt ([] :: [Int]) 1 `shouldBe` Nothing