rotate' lis n = let len = length lis in take len $ drop (n `mod` len) $ cycle lis
