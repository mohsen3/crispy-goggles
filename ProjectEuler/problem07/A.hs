isPrime :: Int -> Bool
isPrime n = and [(n `rem` i) /= 0 | i <- [2..(floor $ sqrt $ fromIntegral n)]]

main = print $ [i | i <- [2..], isPrime i]!!(10001-1)

