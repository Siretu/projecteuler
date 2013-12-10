import Data.Maybe
import qualified Data.Map as Map

collatz' 1 _ = Map.singleton 1 1
collatz' x mem
  | isJust dist = mem
  | isJust nextdist = Map.insert x (1 + (fromMaybe 0 nextdist)) newcol
  | otherwise = Map.empty
  where dist = Map.lookup x mem
        newcol = (collatz' newx mem)
        nextdist = Map.lookup newx (collatz' newx mem)
        newx
          | mod x 2 == 0 = (quot x 2)
          | otherwise = (3*x + 1)


--collatz :: Int -> (Int,[Int])
collatz 1 = (1,[1]) 
collatz x = (1 + fst prev,x:(snd prev))
  where prev
          | mod x 2 == 0 = collatz (quot x 2)
          | otherwise = collatz (3*x + 1)

--chain :: [Int] -> [Int] -> Int -> Int                        
--chain [] visited max = visited
--chain (x:xs) visited max
--  | elem x visited == True = chain xs visited max
--  | colval > max = chain xs newv colval
--  | otherwise = chain xs newv max              
--  where col = collatz x
--        colval = fst col
--        newv = (snd col) ++ visited 
        
chain [] map max = max        
chain (x:xs) map max
--  | isJust val = fromMaybe -1 val
  | dist > max = chain xs newmap dist
  | otherwise = chain xs newmap max
  where 
--    val = Map.lookup x map
    currmap = collatz' x map
    dist = fromMaybe 0 (Map.lookup x currmap)
    newmap = Map.union currmap map
    
    
        
        

foo a = b      
  where b
          | a == 1 = 5
          | otherwise = 10