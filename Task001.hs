import Data.List
import Data.Char

ordAndGroupList :: String -> [String]
--ordAndGroupList [] = []
ordAndGroupList = group . sort
--ordAndGroupList = group . sort

freq xs = [ (head x, length x) | x <- group $ sort $ filter isLetter $ map toUpper xs]

-- createPrintLine :: String -> String
-- createPrintLine [] = []
createPrintLine (c,n) = c : ':' : replicate n '#'

printFreqM = mapM_ (putStrLn . createPrintLine) . freq

--printFreq :: String -> [String]
--printFreq [] = []
--printFreq xs = map createPrintLine $ ordAndGroupList xs
--printFreq = concatMap createPrintLine . ordAndGroupList

-- map :: (a -> b) -> [a] -> [b]
-- map _ [] = []          This is why line 12 is unnessessary
-- map f (x:xs) = f x : map f xs