-- コメントその1
{-
  コメントその2
  コメントその3
-}
main :: IO ()
main = do
  blockMain
  indentMain
  inputOutputMain

blockMain :: IO ()
indentMain :: IO ()
inputOutputMain :: IO ()

-- ブロック（複数式をまとめて1つのものとして扱う）
blockMain = do { putStrLn "Red"; putStrLn "Green"; putStrLn "Blue" }

-- インデントでも使えるよ
indentMain = do
  putStrLn "Red"
  putStrLn "Green"
  putStrLn "Blue"

-- 様々な入出力
inputOutputMain = do
  putChar 'a'
  putStr "ABC"
  putStrLn "ABC"
  print "ABC"
  -- 様々な入力
  var1 <- getChar
  var2 <- getLine
  var3 <- getContents
  var4 <- readLn :: IO Int
  -- 入力された値を出力
  putChar var1
  putStrLn var2
  putStrLn var3
  print var4

-- 各変数を型とともに定義
booleanVar = True :: Bool
characterVar = 'a' :: Char
stringVar = "Hello, world!" :: String
intVar = 123 :: Int
integerVar = 1234567890123456789 :: Integer
floatVar = 3.14 :: Float
doubleVar = 3.141592653589793 :: Double

intList = [1, 2, 3, 4, 5] :: [Int]
charList = ['a', 'b', 'c'] :: [Char]
intNCharTuple = (1, 'a') :: (Int, Char)
