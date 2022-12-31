-- 18
-- work smarter
slice :: [a] -> Int -> Int -> [a]
slice _ a b | a > b = []
slice lis a b = take (b-a+1) $ drop a lis
