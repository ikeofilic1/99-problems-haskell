rev :: [a] -> [a]
rev [] = []
rev (top:rest) = helper rest [top]
  where 
    helper [] y = y
    helper (xtop:xrest) y = helper xrest (xtop:y)
