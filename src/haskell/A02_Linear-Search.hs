main :: IO ()
main = do
  -- 複数入力を受け付ける
  config <- map read . words <$> getLine :: IO [Int]
  inputs <- map read . words <$> getLine :: IO [Int]
  -- configの2番目の要素を取り出す
  let target :: Int = config !! 1
  -- inputsの中にtargetが含まれているかをチェック
  -- 【ボツ】リスト内法表記を使用して、targetと等しい要素を抽出
  -- print [x :: Int | x <- inputs, x == target]
  -- elemを使ってtargetがinputsリストに含まれているかをチェック
  -- printはダブルクオーテーションごとに出力されるので、これを除いたputStrLnを使う
  putStrLn $ if target `elem` inputs then "Yes" else "No"
