
main :: IO ()
main =
  let
    fibs = 1:1:zipWith (+) fibs (tail fibs)

    fourMillion = 4000000
    underFM = takeWhile (< fourMillion) fibs
    result = sum $ filter even underFM
  in
    print result

