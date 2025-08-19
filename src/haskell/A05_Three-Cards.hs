main :: IO ()
main = do
  [n, k] <- map read . words <$> getLine :: IO [Int]
  -- 計算量が終わっておる...
  -- print $ length [() | x <- [1..n], y <- [1..n], z <- [1..n], x+y+z == k]
  -- 作成するリストを1つ減らすアプローチ（カンニング）
  print $ length [() | x <- [1..n], y <- [1..n], let z = k-x-y, z>0, z<=n]
