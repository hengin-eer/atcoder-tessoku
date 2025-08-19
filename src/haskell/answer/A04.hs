-- ref: https://atcoder.jp/contests/tessoku-book/submissions/67872487 by fujidana
main :: IO ()
main = do
    n <- readLn :: IO Int
    putStrLn $ concatMap show $ reverse [rem (div n (2^i)) 2 | i <- [0..9]]
