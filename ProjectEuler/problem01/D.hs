main = print $ sum $ filter (any (==0) . (flip fmap [3, 5] . mod)) [1..999]

