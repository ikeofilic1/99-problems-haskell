dropNth :: [a] -> Int -> [a]
dropNth _ 1 = []
dropNth xs n = [fst pair | pair <- (zip xs $ cycle [1..n]), snd pair /= n]
