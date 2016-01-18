primes :: Int -> [Int]
primes n = sieve [] [2..n]
  where
    sieve primes [] = primes
    sieve primes (p:xs) = if   null [x | x <- primes, p `mod` x == 0]
                          then sieve (p:primes) xs
                          else sieve primes xs

main = print $ sum $ primes 2000000

