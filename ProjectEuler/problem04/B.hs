import Data.List

isPalindrom :: String -> Bool
isPalindrom str = all id $ zipWith (==) str $ reverse str

main = print $ maximum [x * y | x <- [100..999], y <- [100..999], isPalindrom $ show (x * y)]


