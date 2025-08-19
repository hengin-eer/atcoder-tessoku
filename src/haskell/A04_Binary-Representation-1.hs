main :: IO ()
main = do
  number <- readLn :: IO Int
  putStrLn $ padding0 $ toBinary number

-- 2進数の配列に変換
toBinary :: Int -> [Int]
toBinary 0 = [0]
toBinary 1 = [1]
toBinary n
  | n < 1024 = toBinary (n `div` 2) ++ [n `mod` 2]

-- 10桁の2進数のために残りを0で埋める
-- replicate で指定した数だけ文字を繰り返す
padding0 :: [Int] -> String
padding0 n = replicate (10 - length n) '0' ++ concatMap show n
