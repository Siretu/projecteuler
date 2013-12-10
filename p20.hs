--ackfib :: Integer -> Integer                
ackfib n = ackfib_int n 0 1 2 []

--ackfib_int :: Integer -> Integer -> Integer -> Integer -> Integer
ackfib_int n a b curr list
  | n<0 = -1
  | n<2 = list
  | n==curr = list
  | otherwise = ackfib_int n b (a+b) (curr+1) (a+b:list)
