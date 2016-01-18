
main =
  let
    s5 = sqrt 5.0
    fib n = round $ (((1.0 + s5) / 2.0) ** fromIntegral n) / s5 - (((1.0 - s5) / 2.0) ** fromIntegral n) / s5
  in
    print $ sum $ filter even $ takeWhile (< 4000000) [fib i | i <- [1..]]

