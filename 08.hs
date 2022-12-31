compress :: (Eq a) => [a] -> [a]            
compress [] = []          
compress (m:rest) = m : (comp m rest)
  where
    comp _ [] = []
    comp a (b:rest) | a /= b = b : comp b rest  
                    | otherwise  = comp a rest
