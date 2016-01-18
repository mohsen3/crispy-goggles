

lcmN (x:y:[]) = lcm x y
lcmN (x:y:r)  = lcmN (lcm x y : r)

main =
  let nums = [1..20]
  in  print $ lcmN nums

