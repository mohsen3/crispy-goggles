threes = [3, 6 ..]
fives  = [5, 10 ..]

merge (x:xs) (y:ys)
  | x < y = x : merge xs (y:ys)
  | x > y = y : merge (x:xs) ys
  | otherwise = x : merge xs ys

main = do
  let mixed = merge threes fives
      under1000 = takeWhile (< 1000) mixed
      summation = sum under1000

  -- print under1000
  print summation

