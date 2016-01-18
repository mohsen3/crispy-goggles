import Control.Monad (join)


main =
  let nums = [1..100]
      sumOfSquares = sum $ map (join (*)) nums
      squareOfSums = let s = sum nums in s * s
  in  print $ squareOfSums - sumOfSquares
