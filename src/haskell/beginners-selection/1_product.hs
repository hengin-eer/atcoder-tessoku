-- https://atcoder.jp/contests/abs/tasks/abc086_a?lang=ja
ints :: IO [Int]
ints = map read . words <$> getLine

main :: IO ()
main = do
  -- 失敗例
  -- a <- readLn :: IO Int
  -- b <- readLn :: IO Int
  -- let product x y = x * y :: Int -> Int -> Int
  -- let isEvenOrOdd :: Int -> String
  --     isEvenOrOdd n = if even n then "Even" else "Odd"
  -- putStrLn $ isEvenOrOdd (product a b)

  -- 成功例
  -- [a, b] <- map read . words <$> getLine :: IO [Int]
  -- putStrLn $ let x = a * b in if even x then "Even" else "Odd"

  [a, b] <- ints
  let result = if odd (a * b) then "Odd" else "Even"
  putStrLn result
