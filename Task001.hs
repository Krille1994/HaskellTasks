import Data.List

ordAndGroupList :: String -> [String]
--ordAndGroupList [] = []
ordAndGroupList str = group $ sort str

createPrintLine :: String -> String
createPrintLine [] = []
createPrintLine a = head a : " : " ++ replicate (length a) '#' ++ "\n"

printFreq :: String -> String
--printFreq [] = []
printFreq xs = concatMap createPrintLine $ ordAndGroupList xs

-- map :: (a -> b) -> [a] -> [b]
-- map _ [] = []          This is why line 12 is unnessessary
-- map f (x:xs) = f x : map f xs