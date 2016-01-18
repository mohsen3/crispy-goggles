main = do
  let threesAndFives = [i | i <- [1..], i `mod` 3 == 0 || i `mod` 5 == 0]
      under1000 = takeWhile (< 1000) threesAndFives
      summation = sum under1000
  print summation

