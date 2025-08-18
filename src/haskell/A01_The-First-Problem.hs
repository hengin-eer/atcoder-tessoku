main :: IO ()
main = do
  -- 入力を受け取る
  -- readLnは入力値を型推論してくれる
  -- NOTE: 変数を定義する際には大文字を使用してはいけない（型変数やデータ構造を表すのに使われる）
  n <- readLn :: IO Int
  -- $ は関数適用の演算子で、右側の式を左側の関数に適用する
  -- showは値を文字列に変換する
  -- putStrLn $ show (n*n)
  -- printでいいじゃん！とhlsに指摘されたので修正
  print $ n*n
