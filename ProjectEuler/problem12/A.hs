triangulars = scanl1 (+) [1..]
factors x = [i | i <- [1 .. x], x `mod` i == 0]

main = print $ head $ filter ((> 500) . length . factors) triangulars




