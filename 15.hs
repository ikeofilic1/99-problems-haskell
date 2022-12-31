--15
my_replicate :: [a] -> Int -> [a]
my_replicate xs n = concat [take n y | x <- xs, let y = (repeat x)]
