import qualified Data.ByteString.Char8 as BS
import Data.Char (isSpace)
import qualified Data.IntSet as Set
import Data.List (unfoldr)

getInts :: IO [Int]
getInts = unfoldr (BS.readInt . BS.dropWhile isSpace) <$> BS.getLine

main :: IO ()
main = do
  [_, x] <- getInts
  as <- getInts
  let as' = Set.fromList as
  putStrLn $ if Set.member x as' then "Yes" else "No"
