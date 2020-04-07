
primeFactors n =
  let
    factors = take 1 $ filter ((== 0) . (n `mod`)) [2 .. n - 1]
  in
    case factors of
      [] -> [n]
      _  -> factors ++ primeFactors (n `div` (head factors))

main = print $ maximum $ primeFactors 600851475143
