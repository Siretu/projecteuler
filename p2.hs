fib :: Integral -> Integral -> [Integral]
fib x1 x2
  | x2 > 4000000 = [x1]
  | otherwise = x1 : (fib x2 (x1 + x2))
                
fibsum :: [Integral] -> Integral
fibsum l = foldl (+) 0 [x | x <- l, mod x 2 == 0]              

main = do
  let output = fibsum (fib 1 2)
  putStrLn(show output)