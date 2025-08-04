-- https://atcoder.jp/contests/abs/tasks/abc086_a?lang=ja
main :: IO ()
main = do
  a <- readLn :: IO Int
  b <- readLn :: IO Int
  let product x y = x * y :: Int -> Int -> Int
  let isEvenOrOdd :: Int -> String
      isEvenOrOdd n = if even n then "Even" else "Odd"
  putStrLn $ isEvenOrOdd (product a b)
