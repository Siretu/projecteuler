summult :: Integral -> Integral
summult x = foldl (+) 0 [y | y <- [1..(x - 1)], (mod y 5) == 0 || (mod y 3) == 0]

main = do
  let output = summult 1000
  putStrLn(show output)