
-- Zip the list with its reverse and check if the values are same.
-- We only need to check the first length/2 - 1 though
is_palindrome = foldl (\a b -> a && (snd b == fst b)) True . (<*>) zip reverse
