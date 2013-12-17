fact 1 = 1
fact n = n * fact (n - 1)

nok n k = (fact n) / ((fact k) * (fact (n - k)))

lattice n = nok (2*n) n

main = do
  let output = lattice 20
  putStrLn(show output)