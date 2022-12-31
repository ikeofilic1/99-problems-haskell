module 05 where

rev :: [a] -> [a]
rev [] = []
rev (top:rest) = helper rest [top]
  where 
    helper [] y = y
    helper (xtop:xrest) y = helper xrest (xtop:y)

-- Using folds (learned this recently)
rev'  = foldr (\c b -> b ++ [c]) []
rev'' = foldl (\c b -> b : c) []
