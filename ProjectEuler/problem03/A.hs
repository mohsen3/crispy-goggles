main = do
  let num = 600851475143
  print $ last $ filter (\n -> num `mod` n == 0) [1..(round $ sqrt num)]
