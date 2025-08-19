import Control.Monad
import Data.Array
main :: IO ()
main = do
  [_, q] <- map (read @Int) . words <$> getLine
  visitorList <- map (read @Int) . words <$> getLine
  -- 累積和を求める
  -- 配列(Array)に変換することで、累積和のランダムアクセスが高速(O(1))になる
  let n = length visitorList
      prefixSumsList = scanl (+) 0 visitorList
      prefixSums = listArray (0, n) prefixSumsList
  replicateM_ q $ do
    [lDay, rDay] <- map (read @Int) . words <$> getLine
    let count = prefixSums ! rDay - prefixSums ! (lDay - 1)
    print count
